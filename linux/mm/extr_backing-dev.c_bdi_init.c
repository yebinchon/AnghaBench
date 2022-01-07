
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {int max_ratio; int wb_waitq; int wb_list; int bdi_list; int max_prop_frac; scalar_t__ min_ratio; int refcnt; int * dev; } ;


 int FPROP_FRAC_BASE ;
 int INIT_LIST_HEAD (int *) ;
 int cgwb_bdi_init (struct backing_dev_info*) ;
 int init_waitqueue_head (int *) ;
 int kref_init (int *) ;

__attribute__((used)) static int bdi_init(struct backing_dev_info *bdi)
{
 int ret;

 bdi->dev = ((void*)0);

 kref_init(&bdi->refcnt);
 bdi->min_ratio = 0;
 bdi->max_ratio = 100;
 bdi->max_prop_frac = FPROP_FRAC_BASE;
 INIT_LIST_HEAD(&bdi->bdi_list);
 INIT_LIST_HEAD(&bdi->wb_list);
 init_waitqueue_head(&bdi->wb_waitq);

 ret = cgwb_bdi_init(bdi);

 return ret;
}
