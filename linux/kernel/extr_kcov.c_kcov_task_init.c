
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int * kcov; int * kcov_area; scalar_t__ kcov_size; int kcov_mode; } ;


 int KCOV_MODE_DISABLED ;
 int WRITE_ONCE (int ,int ) ;
 int barrier () ;

void kcov_task_init(struct task_struct *t)
{
 WRITE_ONCE(t->kcov_mode, KCOV_MODE_DISABLED);
 barrier();
 t->kcov_size = 0;
 t->kcov_area = ((void*)0);
 t->kcov = ((void*)0);
}
