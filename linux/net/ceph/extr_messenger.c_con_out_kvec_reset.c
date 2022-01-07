
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_connection {int * out_kvec; int * out_kvec_cur; scalar_t__ out_kvec_bytes; scalar_t__ out_kvec_left; int out_skip; } ;


 int BUG_ON (int ) ;

__attribute__((used)) static void con_out_kvec_reset(struct ceph_connection *con)
{
 BUG_ON(con->out_skip);

 con->out_kvec_left = 0;
 con->out_kvec_bytes = 0;
 con->out_kvec_cur = &con->out_kvec[0];
}
