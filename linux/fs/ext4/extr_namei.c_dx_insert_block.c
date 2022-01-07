
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dx_frame {struct dx_entry* at; struct dx_entry* entries; } ;
struct dx_entry {int dummy; } ;
typedef int ext4_lblk_t ;


 int assert (int) ;
 int dx_get_count (struct dx_entry*) ;
 int dx_get_limit (struct dx_entry*) ;
 int dx_set_block (struct dx_entry*,int ) ;
 int dx_set_count (struct dx_entry*,int) ;
 int dx_set_hash (struct dx_entry*,int ) ;
 int memmove (struct dx_entry*,struct dx_entry*,int) ;

__attribute__((used)) static void dx_insert_block(struct dx_frame *frame, u32 hash, ext4_lblk_t block)
{
 struct dx_entry *entries = frame->entries;
 struct dx_entry *old = frame->at, *new = old + 1;
 int count = dx_get_count(entries);

 assert(count < dx_get_limit(entries));
 assert(old < entries + count);
 memmove(new + 1, new, (char *)(entries + count) - (char *)(new));
 dx_set_hash(new, hash);
 dx_set_block(new, block);
 dx_set_count(entries, count + 1);
}
