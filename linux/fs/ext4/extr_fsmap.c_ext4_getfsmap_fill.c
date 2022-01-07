
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct list_head {int dummy; } ;
struct ext4_fsmap {int fmr_list; void* fmr_length; int fmr_owner; void* fmr_physical; scalar_t__ fmr_flags; scalar_t__ fmr_device; } ;
typedef void* ext4_fsblk_t ;


 int ENOMEM ;
 int GFP_NOFS ;
 struct ext4_fsmap* kmalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static inline int ext4_getfsmap_fill(struct list_head *meta_list,
         ext4_fsblk_t fsb, ext4_fsblk_t len,
         uint64_t owner)
{
 struct ext4_fsmap *fsm;

 fsm = kmalloc(sizeof(*fsm), GFP_NOFS);
 if (!fsm)
  return -ENOMEM;
 fsm->fmr_device = 0;
 fsm->fmr_flags = 0;
 fsm->fmr_physical = fsb;
 fsm->fmr_owner = owner;
 fsm->fmr_length = len;
 list_add_tail(&fsm->fmr_list, meta_list);

 return 0;
}
