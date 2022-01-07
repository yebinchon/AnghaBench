
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_connection {scalar_t__ out_more; TYPE_1__* auth; int out_connect; } ;
struct TYPE_2__ {int authorizer_buf_len; int * authorizer_buf; } ;


 int CON_FLAG_WRITE_PENDING ;
 int con_flag_set (struct ceph_connection*,int ) ;
 int con_out_kvec_add (struct ceph_connection*,int,int *) ;

__attribute__((used)) static void __prepare_write_connect(struct ceph_connection *con)
{
 con_out_kvec_add(con, sizeof(con->out_connect), &con->out_connect);
 if (con->auth)
  con_out_kvec_add(con, con->auth->authorizer_buf_len,
     con->auth->authorizer_buf);

 con->out_more = 0;
 con_flag_set(con, CON_FLAG_WRITE_PENDING);
}
