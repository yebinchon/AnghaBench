
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mb_cache_entry {int e_value; } ;
struct mb_cache {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {int i_flags; } ;


 struct mb_cache* EA_INODE_CACHE (struct inode*) ;
 int EXT4_EA_INODE_FL ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_IGET_NORMAL ;
 int GFP_NOFS ;
 int IS_ERR (struct inode*) ;
 struct inode* ext4_iget (int ,int ,int ) ;
 void* ext4_kvmalloc (size_t,int ) ;
 int ext4_xattr_inode_read (struct inode*,void*,size_t) ;
 int ext4_xattr_inode_verify_hashes (struct inode*,int *,void*,size_t) ;
 size_t i_size_read (struct inode*) ;
 int iput (struct inode*) ;
 int is_bad_inode (struct inode*) ;
 int kvfree (void*) ;
 struct mb_cache_entry* mb_cache_entry_find_first (struct mb_cache*,int ) ;
 struct mb_cache_entry* mb_cache_entry_find_next (struct mb_cache*,struct mb_cache_entry*) ;
 int mb_cache_entry_put (struct mb_cache*,struct mb_cache_entry*) ;
 int mb_cache_entry_touch (struct mb_cache*,struct mb_cache_entry*) ;
 int memcmp (void const*,void*,size_t) ;

__attribute__((used)) static struct inode *
ext4_xattr_inode_cache_find(struct inode *inode, const void *value,
       size_t value_len, u32 hash)
{
 struct inode *ea_inode;
 struct mb_cache_entry *ce;
 struct mb_cache *ea_inode_cache = EA_INODE_CACHE(inode);
 void *ea_data;

 if (!ea_inode_cache)
  return ((void*)0);

 ce = mb_cache_entry_find_first(ea_inode_cache, hash);
 if (!ce)
  return ((void*)0);

 ea_data = ext4_kvmalloc(value_len, GFP_NOFS);
 if (!ea_data) {
  mb_cache_entry_put(ea_inode_cache, ce);
  return ((void*)0);
 }

 while (ce) {
  ea_inode = ext4_iget(inode->i_sb, ce->e_value,
         EXT4_IGET_NORMAL);
  if (!IS_ERR(ea_inode) &&
      !is_bad_inode(ea_inode) &&
      (EXT4_I(ea_inode)->i_flags & EXT4_EA_INODE_FL) &&
      i_size_read(ea_inode) == value_len &&
      !ext4_xattr_inode_read(ea_inode, ea_data, value_len) &&
      !ext4_xattr_inode_verify_hashes(ea_inode, ((void*)0), ea_data,
          value_len) &&
      !memcmp(value, ea_data, value_len)) {
   mb_cache_entry_touch(ea_inode_cache, ce);
   mb_cache_entry_put(ea_inode_cache, ce);
   kvfree(ea_data);
   return ea_inode;
  }

  if (!IS_ERR(ea_inode))
   iput(ea_inode);
  ce = mb_cache_entry_find_next(ea_inode_cache, ce);
 }
 kvfree(ea_data);
 return ((void*)0);
}
