
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct inode {int i_sb; } ;
struct ext4_xattr_entry {scalar_t__ e_hash; int e_name_len; int e_name; } ;
typedef scalar_t__ __le32 ;


 int EFSCORRUPTED ;
 int EXT4_SB (int ) ;
 scalar_t__ cpu_to_le32 (scalar_t__) ;
 scalar_t__ ext4_xattr_hash_entry (int ,int ,scalar_t__*,int) ;
 scalar_t__ ext4_xattr_inode_get_hash (struct inode*) ;
 scalar_t__ ext4_xattr_inode_hash (int ,void*,size_t) ;

__attribute__((used)) static int
ext4_xattr_inode_verify_hashes(struct inode *ea_inode,
          struct ext4_xattr_entry *entry, void *buffer,
          size_t size)
{
 u32 hash;


 hash = ext4_xattr_inode_hash(EXT4_SB(ea_inode->i_sb), buffer, size);
 if (hash != ext4_xattr_inode_get_hash(ea_inode))
  return -EFSCORRUPTED;

 if (entry) {
  __le32 e_hash, tmp_data;


  tmp_data = cpu_to_le32(hash);
  e_hash = ext4_xattr_hash_entry(entry->e_name, entry->e_name_len,
            &tmp_data, 1);
  if (e_hash != entry->e_hash)
   return -EFSCORRUPTED;
 }
 return 0;
}
