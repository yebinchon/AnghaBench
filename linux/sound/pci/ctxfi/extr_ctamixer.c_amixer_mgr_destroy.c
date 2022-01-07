
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amixer_mgr {int mgr; } ;


 int kfree (struct amixer_mgr*) ;
 int rsc_mgr_uninit (int *) ;

int amixer_mgr_destroy(struct amixer_mgr *amixer_mgr)
{
 rsc_mgr_uninit(&amixer_mgr->mgr);
 kfree(amixer_mgr);
 return 0;
}
