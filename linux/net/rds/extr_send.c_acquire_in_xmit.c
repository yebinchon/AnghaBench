
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_conn_path {int cp_flags; } ;


 int RDS_IN_XMIT ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int acquire_in_xmit(struct rds_conn_path *cp)
{
 return test_and_set_bit(RDS_IN_XMIT, &cp->cp_flags) == 0;
}
