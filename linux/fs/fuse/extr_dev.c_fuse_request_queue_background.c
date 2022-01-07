
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fuse_req {int list; int flags; } ;
struct fuse_conn {scalar_t__ num_background; scalar_t__ max_background; int blocked; scalar_t__ congestion_threshold; int bg_lock; int bg_queue; TYPE_1__* sb; int connected; int num_waiting; } ;
struct TYPE_2__ {int s_bdi; } ;


 int BLK_RW_ASYNC ;
 int BLK_RW_SYNC ;
 int FR_BACKGROUND ;
 int FR_ISREPLY ;
 int FR_WAITING ;
 int WARN_ON (int) ;
 int __set_bit (int ,int *) ;
 int atomic_inc (int *) ;
 int flush_bg_queue (struct fuse_conn*) ;
 scalar_t__ likely (int ) ;
 int list_add_tail (int *,int *) ;
 int set_bdi_congested (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool fuse_request_queue_background(struct fuse_conn *fc,
       struct fuse_req *req)
{
 bool queued = 0;

 WARN_ON(!test_bit(FR_BACKGROUND, &req->flags));
 if (!test_bit(FR_WAITING, &req->flags)) {
  __set_bit(FR_WAITING, &req->flags);
  atomic_inc(&fc->num_waiting);
 }
 __set_bit(FR_ISREPLY, &req->flags);
 spin_lock(&fc->bg_lock);
 if (likely(fc->connected)) {
  fc->num_background++;
  if (fc->num_background == fc->max_background)
   fc->blocked = 1;
  if (fc->num_background == fc->congestion_threshold && fc->sb) {
   set_bdi_congested(fc->sb->s_bdi, BLK_RW_SYNC);
   set_bdi_congested(fc->sb->s_bdi, BLK_RW_ASYNC);
  }
  list_add_tail(&req->list, &fc->bg_queue);
  flush_bg_queue(fc);
  queued = 1;
 }
 spin_unlock(&fc->bg_lock);

 return queued;
}
