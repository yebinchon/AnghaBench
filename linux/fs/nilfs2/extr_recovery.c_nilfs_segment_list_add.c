
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_segment_entry {int list; int segnum; } ;
struct list_head {int dummy; } ;
typedef int __u64 ;


 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 struct nilfs_segment_entry* kmalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nilfs_segment_list_add(struct list_head *head, __u64 segnum)
{
 struct nilfs_segment_entry *ent = kmalloc(sizeof(*ent), GFP_NOFS);

 if (unlikely(!ent))
  return -ENOMEM;

 ent->segnum = segnum;
 INIT_LIST_HEAD(&ent->list);
 list_add_tail(&ent->list, head);
 return 0;
}
