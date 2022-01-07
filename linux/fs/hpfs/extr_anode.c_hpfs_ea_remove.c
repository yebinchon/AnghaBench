
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
struct anode {int btree; } ;
typedef int secno ;


 int brelse (struct buffer_head*) ;
 int hpfs_free_sectors (struct super_block*,int ,unsigned int) ;
 struct anode* hpfs_map_anode (struct super_block*,int ,struct buffer_head**) ;
 int hpfs_remove_btree (struct super_block*,int *) ;

void hpfs_ea_remove(struct super_block *s, secno a, int ano, unsigned len)
{
 struct anode *anode;
 struct buffer_head *bh;
 if (ano) {
  if (!(anode = hpfs_map_anode(s, a, &bh))) return;
  hpfs_remove_btree(s, &anode->btree);
  brelse(bh);
  hpfs_free_sectors(s, a, 1);
 } else hpfs_free_sectors(s, a, (len + 511) >> 9);
}
