
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef int * hashf_t ;





 int * keyed_hash ;
 int * r5_hash ;
 int reiserfs_info (struct super_block*,char*) ;
 int what_hash (struct super_block*) ;
 int * yura_hash ;

__attribute__((used)) static hashf_t hash_function(struct super_block *s)
{
 switch (what_hash(s)) {
 case 129:
  reiserfs_info(s, "Using tea hash to sort names\n");
  return keyed_hash;
 case 128:
  reiserfs_info(s, "Using rupasov hash to sort names\n");
  return yura_hash;
 case 130:
  reiserfs_info(s, "Using r5 hash to sort names\n");
  return r5_hash;
 }
 return ((void*)0);
}
