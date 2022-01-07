
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int destroy; } ;
struct ceph_none_authorizer {int reply_buf; int buf_len; int buf; TYPE_1__ base; } ;
struct ceph_authorizer {int dummy; } ;
struct ceph_auth_handshake {int authorizer_reply_buf_len; int authorizer_reply_buf; int authorizer_buf_len; int authorizer_buf; struct ceph_authorizer* authorizer; } ;
struct ceph_auth_client {int dummy; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int ceph_auth_none_build_authorizer (struct ceph_auth_client*,struct ceph_none_authorizer*) ;
 int ceph_auth_none_destroy_authorizer ;
 int kfree (struct ceph_none_authorizer*) ;
 struct ceph_none_authorizer* kmalloc (int,int ) ;

__attribute__((used)) static int ceph_auth_none_create_authorizer(
 struct ceph_auth_client *ac, int peer_type,
 struct ceph_auth_handshake *auth)
{
 struct ceph_none_authorizer *au;
 int ret;

 au = kmalloc(sizeof(*au), GFP_NOFS);
 if (!au)
  return -ENOMEM;

 au->base.destroy = ceph_auth_none_destroy_authorizer;

 ret = ceph_auth_none_build_authorizer(ac, au);
 if (ret) {
  kfree(au);
  return ret;
 }

 auth->authorizer = (struct ceph_authorizer *) au;
 auth->authorizer_buf = au->buf;
 auth->authorizer_buf_len = au->buf_len;
 auth->authorizer_reply_buf = au->reply_buf;
 auth->authorizer_reply_buf_len = sizeof (au->reply_buf);

 return 0;
}
