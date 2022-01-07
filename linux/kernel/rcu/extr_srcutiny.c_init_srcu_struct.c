
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int dummy; } ;


 int init_srcu_struct_fields (struct srcu_struct*) ;

int init_srcu_struct(struct srcu_struct *ssp)
{
 return init_srcu_struct_fields(ssp);
}
