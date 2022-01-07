
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {int dummy; } ;


 int BUG () ;

void free_vm_area(struct vm_struct *area)
{
 BUG();
}
