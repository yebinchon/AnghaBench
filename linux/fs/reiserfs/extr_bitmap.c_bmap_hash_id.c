
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct super_block {int dummy; } ;


 unsigned long keyed_hash (char*,int) ;
 unsigned int reiserfs_bmap_count (struct super_block*) ;

__attribute__((used)) static int bmap_hash_id(struct super_block *s, u32 id)
{
 char *hash_in = ((void*)0);
 unsigned long hash;
 unsigned bm;

 if (id <= 2) {
  bm = 1;
 } else {
  hash_in = (char *)(&id);
  hash = keyed_hash(hash_in, 4);
  bm = hash % reiserfs_bmap_count(s);
  if (!bm)
   bm = 1;
 }

 if (bm >= reiserfs_bmap_count(s))
  bm = 0;
 return bm;
}
