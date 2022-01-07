
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bdi_writeback {int congested; int completions; int * stat; void* dirty_sleep; int dwork; int work_list; int work_lock; void* avg_write_bandwidth; void* write_bandwidth; void* dirty_ratelimit; void* balanced_dirty_ratelimit; void* bw_time_stamp; int list_lock; int b_dirty_time; int b_more_io; int b_io; int b_dirty; void* last_old_flush; struct backing_dev_info* bdi; } ;
struct backing_dev_info {struct bdi_writeback wb; } ;
typedef int gfp_t ;


 int ENOMEM ;
 void* INIT_BW ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int NR_WB_STAT_ITEMS ;
 int bdi_get (struct backing_dev_info*) ;
 int bdi_put (struct backing_dev_info*) ;
 int fprop_local_destroy_percpu (int *) ;
 int fprop_local_init_percpu (int *,int ) ;
 void* jiffies ;
 int memset (struct bdi_writeback*,int ,int) ;
 int percpu_counter_destroy (int *) ;
 int percpu_counter_init (int *,int ,int ) ;
 int spin_lock_init (int *) ;
 int wb_congested_get_create (struct backing_dev_info*,int,int ) ;
 int wb_congested_put (int ) ;
 int wb_workfn ;

__attribute__((used)) static int wb_init(struct bdi_writeback *wb, struct backing_dev_info *bdi,
     int blkcg_id, gfp_t gfp)
{
 int i, err;

 memset(wb, 0, sizeof(*wb));

 if (wb != &bdi->wb)
  bdi_get(bdi);
 wb->bdi = bdi;
 wb->last_old_flush = jiffies;
 INIT_LIST_HEAD(&wb->b_dirty);
 INIT_LIST_HEAD(&wb->b_io);
 INIT_LIST_HEAD(&wb->b_more_io);
 INIT_LIST_HEAD(&wb->b_dirty_time);
 spin_lock_init(&wb->list_lock);

 wb->bw_time_stamp = jiffies;
 wb->balanced_dirty_ratelimit = INIT_BW;
 wb->dirty_ratelimit = INIT_BW;
 wb->write_bandwidth = INIT_BW;
 wb->avg_write_bandwidth = INIT_BW;

 spin_lock_init(&wb->work_lock);
 INIT_LIST_HEAD(&wb->work_list);
 INIT_DELAYED_WORK(&wb->dwork, wb_workfn);
 wb->dirty_sleep = jiffies;

 wb->congested = wb_congested_get_create(bdi, blkcg_id, gfp);
 if (!wb->congested) {
  err = -ENOMEM;
  goto out_put_bdi;
 }

 err = fprop_local_init_percpu(&wb->completions, gfp);
 if (err)
  goto out_put_cong;

 for (i = 0; i < NR_WB_STAT_ITEMS; i++) {
  err = percpu_counter_init(&wb->stat[i], 0, gfp);
  if (err)
   goto out_destroy_stat;
 }

 return 0;

out_destroy_stat:
 while (i--)
  percpu_counter_destroy(&wb->stat[i]);
 fprop_local_destroy_percpu(&wb->completions);
out_put_cong:
 wb_congested_put(wb->congested);
out_put_bdi:
 if (wb != &bdi->wb)
  bdi_put(bdi);
 return err;
}
