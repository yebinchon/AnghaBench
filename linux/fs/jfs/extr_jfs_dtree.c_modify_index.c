
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int tid_t ;
struct metapage {int dummy; } ;
struct inode {int dummy; } ;
struct dir_table_slot {int slot; } ;
typedef int s64 ;


 int COMMIT_Dirtable ;
 int DTSaddress (struct dir_table_slot*,int ) ;
 struct dir_table_slot* find_index (struct inode*,int ,struct metapage**,int *) ;
 int lock_index (int ,struct inode*,struct metapage*,int ) ;
 int mark_metapage_dirty (struct metapage*) ;
 int set_cflag (int ,struct inode*) ;

__attribute__((used)) static void modify_index(tid_t tid, struct inode *ip, u32 index, s64 bn,
    int slot, struct metapage ** mp, s64 *lblock)
{
 struct dir_table_slot *dirtab_slot;

 dirtab_slot = find_index(ip, index, mp, lblock);

 if (!dirtab_slot)
  return;

 DTSaddress(dirtab_slot, bn);
 dirtab_slot->slot = slot;

 if (*mp) {
  lock_index(tid, ip, *mp, index);
  mark_metapage_dirty(*mp);
 } else
  set_cflag(COMMIT_Dirtable, ip);
}
