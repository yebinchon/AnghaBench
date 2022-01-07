
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int tid_t ;
struct metapage {int dummy; } ;
struct inode {int dummy; } ;
struct dir_table_slot {int addr2; scalar_t__ addr1; scalar_t__ slot; int flag; } ;
typedef int s64 ;


 int COMMIT_Dirtable ;
 int DIR_INDEX_FREE ;
 int cpu_to_le32 (int ) ;
 struct dir_table_slot* find_index (struct inode*,int ,struct metapage**,int *) ;
 int lock_index (int ,struct inode*,struct metapage*,int ) ;
 int mark_metapage_dirty (struct metapage*) ;
 int release_metapage (struct metapage*) ;
 int set_cflag (int ,struct inode*) ;

__attribute__((used)) static void free_index(tid_t tid, struct inode *ip, u32 index, u32 next)
{
 struct dir_table_slot *dirtab_slot;
 s64 lblock;
 struct metapage *mp = ((void*)0);

 dirtab_slot = find_index(ip, index, &mp, &lblock);

 if (!dirtab_slot)
  return;

 dirtab_slot->flag = DIR_INDEX_FREE;
 dirtab_slot->slot = dirtab_slot->addr1 = 0;
 dirtab_slot->addr2 = cpu_to_le32(next);

 if (mp) {
  lock_index(tid, ip, mp, index);
  mark_metapage_dirty(mp);
  release_metapage(mp);
 } else
  set_cflag(COMMIT_Dirtable, ip);
}
