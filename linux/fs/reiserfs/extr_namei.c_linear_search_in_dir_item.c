
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_dir_entry {int de_entry_num; int de_item_num; int de_ih; scalar_t__ de_gen_number_bit_string; int de_bh; struct reiserfs_de_head* de_deh; } ;
struct reiserfs_de_head {int dummy; } ;
struct cpu_key {int dummy; } ;


 struct reiserfs_de_head* B_I_DEH (int ,int ) ;
 int GET_GENERATION_NUMBER (int ) ;
 scalar_t__ GET_HASH_VALUE (int ) ;
 int GOTO_PREVIOUS_ITEM ;
 int NAME_NOT_FOUND ;
 int RFALSE (int,char*) ;
 int cpu_key_k_offset (struct cpu_key*) ;
 int deh_offset (struct reiserfs_de_head*) ;
 int ih_entry_count (int ) ;
 int le_ih_k_offset (int ) ;
 int reiserfs_match (struct reiserfs_dir_entry*,char const*,int) ;
 int set_bit (int ,scalar_t__) ;
 int set_de_name_and_namelen (struct reiserfs_dir_entry*) ;
 int set_de_object_key (struct reiserfs_dir_entry*) ;
 int store_de_entry_key (struct reiserfs_dir_entry*) ;

__attribute__((used)) static int linear_search_in_dir_item(struct cpu_key *key,
         struct reiserfs_dir_entry *de,
         const char *name, int namelen)
{
 struct reiserfs_de_head *deh = de->de_deh;
 int retval;
 int i;

 i = de->de_entry_num;

 if (i == ih_entry_count(de->de_ih) ||
     GET_HASH_VALUE(deh_offset(deh + i)) !=
     GET_HASH_VALUE(cpu_key_k_offset(key))) {
  i--;
 }

 RFALSE(de->de_deh != B_I_DEH(de->de_bh, de->de_ih),
        "vs-7010: array of entry headers not found");

 deh += i;

 for (; i >= 0; i--, deh--) {

  if (GET_HASH_VALUE(deh_offset(deh)) !=
      GET_HASH_VALUE(cpu_key_k_offset(key))) {
   return NAME_NOT_FOUND;
  }


  if (de->de_gen_number_bit_string)
   set_bit(GET_GENERATION_NUMBER(deh_offset(deh)),
    de->de_gen_number_bit_string);


  de->de_entry_num = i;
  set_de_name_and_namelen(de);





  if ((retval =
       reiserfs_match(de, name, namelen)) != NAME_NOT_FOUND) {


   set_de_object_key(de);

   store_de_entry_key(de);


   return retval;
  }
 }

 if (GET_GENERATION_NUMBER(le_ih_k_offset(de->de_ih)) == 0)
  return NAME_NOT_FOUND;

 RFALSE(de->de_item_num,
        "vs-7015: two diritems of the same directory in one node?");

 return GOTO_PREVIOUS_ITEM;
}
