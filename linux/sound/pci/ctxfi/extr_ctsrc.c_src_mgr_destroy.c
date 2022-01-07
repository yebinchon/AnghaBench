
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct src_mgr {int mgr; } ;


 int kfree (struct src_mgr*) ;
 int rsc_mgr_uninit (int *) ;

int src_mgr_destroy(struct src_mgr *src_mgr)
{
 rsc_mgr_uninit(&src_mgr->mgr);
 kfree(src_mgr);

 return 0;
}
