
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct backing_dev_info {TYPE_1__* wb_congested; int wb; } ;
struct TYPE_3__ {int refcnt; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;
 int wb_congested_put (TYPE_1__*) ;
 int wb_init (int *,struct backing_dev_info*,int,int ) ;

__attribute__((used)) static int cgwb_bdi_init(struct backing_dev_info *bdi)
{
 int err;

 bdi->wb_congested = kzalloc(sizeof(*bdi->wb_congested), GFP_KERNEL);
 if (!bdi->wb_congested)
  return -ENOMEM;

 refcount_set(&bdi->wb_congested->refcnt, 1);

 err = wb_init(&bdi->wb, bdi, 1, GFP_KERNEL);
 if (err) {
  wb_congested_put(bdi->wb_congested);
  return err;
 }
 return 0;
}
