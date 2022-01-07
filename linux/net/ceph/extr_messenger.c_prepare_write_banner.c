
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_connection {scalar_t__ out_more; TYPE_1__* msgr; } ;
struct TYPE_2__ {int my_enc_addr; } ;


 int * CEPH_BANNER ;
 int CON_FLAG_WRITE_PENDING ;
 int con_flag_set (struct ceph_connection*,int ) ;
 int con_out_kvec_add (struct ceph_connection*,int,int *) ;
 int strlen (int *) ;

__attribute__((used)) static void prepare_write_banner(struct ceph_connection *con)
{
 con_out_kvec_add(con, strlen(CEPH_BANNER), CEPH_BANNER);
 con_out_kvec_add(con, sizeof (con->msgr->my_enc_addr),
     &con->msgr->my_enc_addr);

 con->out_more = 0;
 con_flag_set(con, CON_FLAG_WRITE_PENDING);
}
