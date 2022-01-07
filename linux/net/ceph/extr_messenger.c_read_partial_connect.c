
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int global_seq; int connect_seq; scalar_t__ tag; int authorizer_len; } ;
struct ceph_connection {TYPE_2__ in_reply; TYPE_1__* auth; int in_base_pos; } ;
struct TYPE_3__ {int authorizer_reply_buf_len; TYPE_2__* authorizer_reply_buf; } ;


 int EINVAL ;
 int dout (char*,struct ceph_connection*,int,...) ;
 int le32_to_cpu (int ) ;
 int pr_err (char*,int,int) ;
 int read_partial (struct ceph_connection*,int,int,TYPE_2__*) ;

__attribute__((used)) static int read_partial_connect(struct ceph_connection *con)
{
 int size;
 int end;
 int ret;

 dout("read_partial_connect %p at %d\n", con, con->in_base_pos);

 size = sizeof (con->in_reply);
 end = size;
 ret = read_partial(con, end, size, &con->in_reply);
 if (ret <= 0)
  goto out;

 if (con->auth) {
  size = le32_to_cpu(con->in_reply.authorizer_len);
  if (size > con->auth->authorizer_reply_buf_len) {
   pr_err("authorizer reply too big: %d > %zu\n", size,
          con->auth->authorizer_reply_buf_len);
   ret = -EINVAL;
   goto out;
  }

  end += size;
  ret = read_partial(con, end, size,
       con->auth->authorizer_reply_buf);
  if (ret <= 0)
   goto out;
 }

 dout("read_partial_connect %p tag %d, con_seq = %u, g_seq = %u\n",
      con, (int)con->in_reply.tag,
      le32_to_cpu(con->in_reply.connect_seq),
      le32_to_cpu(con->in_reply.global_seq));
out:
 return ret;
}
