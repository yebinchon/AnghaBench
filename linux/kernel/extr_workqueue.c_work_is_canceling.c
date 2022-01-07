
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int data; } ;


 unsigned long WORK_OFFQ_CANCELING ;
 unsigned long WORK_STRUCT_PWQ ;
 unsigned long atomic_long_read (int *) ;

__attribute__((used)) static bool work_is_canceling(struct work_struct *work)
{
 unsigned long data = atomic_long_read(&work->data);

 return !(data & WORK_STRUCT_PWQ) && (data & WORK_OFFQ_CANCELING);
}
