
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_connection {int flags; } ;


 int BUG_ON (int) ;
 int con_flag_valid (unsigned long) ;
 int test_and_clear_bit (unsigned long,int *) ;

__attribute__((used)) static bool con_flag_test_and_clear(struct ceph_connection *con,
     unsigned long con_flag)
{
 BUG_ON(!con_flag_valid(con_flag));

 return test_and_clear_bit(con_flag, &con->flags);
}
