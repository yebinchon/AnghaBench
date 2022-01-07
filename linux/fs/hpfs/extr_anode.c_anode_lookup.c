
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
struct anode {int btree; } ;
typedef int secno ;
typedef int anode_secno ;


 int hpfs_bplus_lookup (struct super_block*,int *,int *,unsigned int,struct buffer_head*) ;
 struct anode* hpfs_map_anode (struct super_block*,int ,struct buffer_head**) ;

__attribute__((used)) static secno anode_lookup(struct super_block *s, anode_secno a, unsigned sec)
{
 struct anode *anode;
 struct buffer_head *bh;
 if (!(anode = hpfs_map_anode(s, a, &bh))) return -1;
 return hpfs_bplus_lookup(s, ((void*)0), &anode->btree, sec, bh);
}
