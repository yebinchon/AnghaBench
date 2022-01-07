
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis7019 {int * suspend_state; } ;


 int SIS_SUSPEND_PAGES ;
 int kfree (int ) ;

__attribute__((used)) static void sis_free_suspend(struct sis7019 *sis)
{
 int i;

 for (i = 0; i < SIS_SUSPEND_PAGES; i++)
  kfree(sis->suspend_state[i]);
}
