
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_lockstruct {int ls_sync_wait; } ;


 int complete (int *) ;

__attribute__((used)) static void sync_wait_cb(void *arg)
{
 struct lm_lockstruct *ls = arg;
 complete(&ls->ls_sync_wait);
}
