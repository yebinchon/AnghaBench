
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int dummy; } ;
struct replay_entry {int new_size; int old_size; int key; } ;
typedef int ino_t ;


 int UBIFS_BLOCK_SIZE ;
 int data_key_init (struct ubifs_info*,union ubifs_key*,int ,unsigned int) ;
 int key_inum (struct ubifs_info*,int *) ;
 int ubifs_tnc_remove_range (struct ubifs_info*,union ubifs_key*,union ubifs_key*) ;

__attribute__((used)) static int trun_remove_range(struct ubifs_info *c, struct replay_entry *r)
{
 unsigned min_blk, max_blk;
 union ubifs_key min_key, max_key;
 ino_t ino;

 min_blk = r->new_size / UBIFS_BLOCK_SIZE;
 if (r->new_size & (UBIFS_BLOCK_SIZE - 1))
  min_blk += 1;

 max_blk = r->old_size / UBIFS_BLOCK_SIZE;
 if ((r->old_size & (UBIFS_BLOCK_SIZE - 1)) == 0)
  max_blk -= 1;

 ino = key_inum(c, &r->key);

 data_key_init(c, &min_key, ino, min_blk);
 data_key_init(c, &max_key, ino, max_blk);

 return ubifs_tnc_remove_range(c, &min_key, &max_key);
}
