
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sit_entry_set {int set_list; scalar_t__ entry_cnt; } ;


 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 struct sit_entry_set* f2fs_kmem_cache_alloc (int ,int ) ;
 int sit_entry_set_slab ;

__attribute__((used)) static struct sit_entry_set *grab_sit_entry_set(void)
{
 struct sit_entry_set *ses =
   f2fs_kmem_cache_alloc(sit_entry_set_slab, GFP_NOFS);

 ses->entry_cnt = 0;
 INIT_LIST_HEAD(&ses->set_list);
 return ses;
}
