
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_connection {int flags; } ;


 int BUG_ON (int) ;
 int clear_bit (unsigned long,int *) ;
 int con_flag_valid (unsigned long) ;

__attribute__((used)) static void con_flag_clear(struct ceph_connection *con, unsigned long con_flag)
{
 BUG_ON(!con_flag_valid(con_flag));

 clear_bit(con_flag, &con->flags);
}
