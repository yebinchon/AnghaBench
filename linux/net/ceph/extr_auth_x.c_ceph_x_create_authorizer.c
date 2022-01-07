
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ceph_x_ticket_handler {int dummy; } ;
struct TYPE_5__ {int destroy; } ;
struct ceph_x_authorizer {int enc_buf; TYPE_3__* buf; TYPE_1__ base; } ;
struct ceph_authorizer {int dummy; } ;
struct ceph_auth_handshake {int check_message_signature; int sign_message; int authorizer_reply_buf_len; int authorizer_reply_buf; int authorizer_buf_len; int authorizer_buf; struct ceph_authorizer* authorizer; } ;
struct ceph_auth_client {TYPE_4__* ops; } ;
struct TYPE_8__ {int check_message_signature; int sign_message; } ;
struct TYPE_6__ {int iov_len; int iov_base; } ;
struct TYPE_7__ {TYPE_2__ vec; } ;


 int CEPHX_AU_ENC_BUF_LEN ;
 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct ceph_x_ticket_handler*) ;
 int PTR_ERR (struct ceph_x_ticket_handler*) ;
 int ceph_x_build_authorizer (struct ceph_auth_client*,struct ceph_x_ticket_handler*,struct ceph_x_authorizer*) ;
 int ceph_x_destroy_authorizer ;
 struct ceph_x_ticket_handler* get_ticket_handler (struct ceph_auth_client*,int) ;
 int kfree (struct ceph_x_authorizer*) ;
 struct ceph_x_authorizer* kzalloc (int,int ) ;

__attribute__((used)) static int ceph_x_create_authorizer(
 struct ceph_auth_client *ac, int peer_type,
 struct ceph_auth_handshake *auth)
{
 struct ceph_x_authorizer *au;
 struct ceph_x_ticket_handler *th;
 int ret;

 th = get_ticket_handler(ac, peer_type);
 if (IS_ERR(th))
  return PTR_ERR(th);

 au = kzalloc(sizeof(*au), GFP_NOFS);
 if (!au)
  return -ENOMEM;

 au->base.destroy = ceph_x_destroy_authorizer;

 ret = ceph_x_build_authorizer(ac, th, au);
 if (ret) {
  kfree(au);
  return ret;
 }

 auth->authorizer = (struct ceph_authorizer *) au;
 auth->authorizer_buf = au->buf->vec.iov_base;
 auth->authorizer_buf_len = au->buf->vec.iov_len;
 auth->authorizer_reply_buf = au->enc_buf;
 auth->authorizer_reply_buf_len = CEPHX_AU_ENC_BUF_LEN;
 auth->sign_message = ac->ops->sign_message;
 auth->check_message_signature = ac->ops->check_message_signature;

 return 0;
}
