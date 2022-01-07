
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_52__ TYPE_9__ ;
typedef struct TYPE_51__ TYPE_8__ ;
typedef struct TYPE_50__ TYPE_7__ ;
typedef struct TYPE_49__ TYPE_6__ ;
typedef struct TYPE_48__ TYPE_5__ ;
typedef struct TYPE_47__ TYPE_4__ ;
typedef struct TYPE_46__ TYPE_3__ ;
typedef struct TYPE_45__ TYPE_2__ ;
typedef struct TYPE_44__ TYPE_29__ ;
typedef struct TYPE_43__ TYPE_1__ ;
typedef struct TYPE_42__ TYPE_18__ ;
typedef struct TYPE_41__ TYPE_17__ ;
typedef struct TYPE_40__ TYPE_16__ ;
typedef struct TYPE_39__ TYPE_15__ ;
typedef struct TYPE_38__ TYPE_14__ ;
typedef struct TYPE_37__ TYPE_13__ ;
typedef struct TYPE_36__ TYPE_12__ ;
typedef struct TYPE_35__ TYPE_11__ ;
typedef struct TYPE_34__ TYPE_10__ ;


typedef scalar_t__ u8 ;
typedef void* u64 ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef int sle64 ;
typedef int ntfschar ;
struct TYPE_36__ {int cluster_size_bits; int upcase_len; int upcase; struct super_block* sb; } ;
typedef TYPE_12__ ntfs_volume ;
struct TYPE_37__ {void* mref; scalar_t__ len; int name; scalar_t__ type; } ;
typedef TYPE_13__ ntfs_name ;
struct TYPE_48__ {int vcn_size_bits; int block_size; } ;
struct TYPE_49__ {TYPE_5__ index; } ;
struct TYPE_38__ {int mft_no; TYPE_6__ itype; TYPE_12__* vol; } ;
typedef TYPE_14__ ntfs_inode ;
struct TYPE_39__ {scalar_t__ mrec; TYPE_3__* attr; } ;
typedef TYPE_15__ ntfs_attr_search_ctx ;
typedef int VCN ;
struct TYPE_52__ {scalar_t__ file_name_length; scalar_t__ file_name_type; int file_name; } ;
struct TYPE_50__ {int indexed_file; } ;
struct TYPE_51__ {TYPE_7__ dir; } ;
struct TYPE_47__ {int entries_offset; int index_length; } ;
struct TYPE_43__ {int value_offset; } ;
struct TYPE_45__ {TYPE_1__ resident; } ;
struct TYPE_46__ {TYPE_2__ data; } ;
struct TYPE_44__ {struct address_space* i_mapping; int i_mode; } ;
struct TYPE_35__ {int flags; int entries_offset; int index_length; int allocated_size; } ;
struct TYPE_42__ {TYPE_11__ index; int index_block_vcn; int magic; } ;
struct TYPE_34__ {TYPE_9__ file_name; } ;
struct TYPE_41__ {int flags; int length; TYPE_10__ key; TYPE_8__ data; int key_length; } ;
struct TYPE_40__ {TYPE_4__ index; } ;
typedef void* MFT_REF ;
typedef struct page MFT_RECORD ;
typedef TYPE_16__ INDEX_ROOT ;
typedef int INDEX_ENTRY_HEADER ;
typedef TYPE_17__ INDEX_ENTRY ;
typedef TYPE_18__ INDEX_ALLOCATION ;


 int AT_INDEX_ROOT ;
 int BUG_ON (int) ;
 int CASE_SENSITIVE ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 void* ERR_MREF (int) ;
 scalar_t__ FILE_NAME_DOS ;
 int GFP_NOFS ;
 int I30 ;
 int IGNORE_CASE ;
 int INDEX_ENTRY_END ;
 int INDEX_ENTRY_NODE ;
 scalar_t__ IS_ERR (struct page*) ;
 int LEAF_NODE ;
 int NInoAttr (TYPE_14__*) ;
 int NInoIndexAllocPresent (TYPE_14__*) ;
 int NODE_MASK ;
 int NVolCaseSensitive (TYPE_12__*) ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PTR_ERR (struct page*) ;
 int S_ISDIR (int ) ;
 TYPE_29__* VFS_I (TYPE_14__*) ;
 int kfree (TYPE_13__*) ;
 TYPE_13__* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 int lock_page (struct page*) ;
 struct page* map_mft_record (TYPE_14__*) ;
 int memcpy (int ,int ,scalar_t__) ;
 scalar_t__ ntfs_are_names_equal (int const*,int const,int *,scalar_t__,int ,int ,int ) ;
 TYPE_15__* ntfs_attr_get_search_ctx (TYPE_14__*,struct page*) ;
 int ntfs_attr_lookup (int ,int ,int,int ,int ,int *,int ,TYPE_15__*) ;
 int ntfs_attr_put_search_ctx (TYPE_15__*) ;
 int ntfs_collate_names (int const*,int const,int *,scalar_t__,int,int ,int ,int ) ;
 int ntfs_debug (char*) ;
 int ntfs_error (struct super_block*,char*,...) ;
 int ntfs_is_indx_record (int ) ;
 struct page* ntfs_map_page (struct address_space*,int) ;
 int ntfs_unmap_page (struct page*) ;
 scalar_t__ page_address (struct page*) ;
 int sle64_to_cpu (int ) ;
 int sle64_to_cpup (int *) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int unmap_mft_record (TYPE_14__*) ;

MFT_REF ntfs_lookup_inode_by_name(ntfs_inode *dir_ni, const ntfschar *uname,
  const int uname_len, ntfs_name **res)
{
 ntfs_volume *vol = dir_ni->vol;
 struct super_block *sb = vol->sb;
 MFT_RECORD *m;
 INDEX_ROOT *ir;
 INDEX_ENTRY *ie;
 INDEX_ALLOCATION *ia;
 u8 *index_end;
 u64 mref;
 ntfs_attr_search_ctx *ctx;
 int err, rc;
 VCN vcn, old_vcn;
 struct address_space *ia_mapping;
 struct page *page;
 u8 *kaddr;
 ntfs_name *name = ((void*)0);

 BUG_ON(!S_ISDIR(VFS_I(dir_ni)->i_mode));
 BUG_ON(NInoAttr(dir_ni));

 m = map_mft_record(dir_ni);
 if (IS_ERR(m)) {
  ntfs_error(sb, "map_mft_record() failed with error code %ld.",
    -PTR_ERR(m));
  return ERR_MREF(PTR_ERR(m));
 }
 ctx = ntfs_attr_get_search_ctx(dir_ni, m);
 if (unlikely(!ctx)) {
  err = -ENOMEM;
  goto err_out;
 }

 err = ntfs_attr_lookup(AT_INDEX_ROOT, I30, 4, CASE_SENSITIVE, 0, ((void*)0),
   0, ctx);
 if (unlikely(err)) {
  if (err == -ENOENT) {
   ntfs_error(sb, "Index root attribute missing in "
     "directory inode 0x%lx.",
     dir_ni->mft_no);
   err = -EIO;
  }
  goto err_out;
 }

 ir = (INDEX_ROOT*)((u8*)ctx->attr +
   le16_to_cpu(ctx->attr->data.resident.value_offset));
 index_end = (u8*)&ir->index + le32_to_cpu(ir->index.index_length);

 ie = (INDEX_ENTRY*)((u8*)&ir->index +
   le32_to_cpu(ir->index.entries_offset));




 for (;; ie = (INDEX_ENTRY*)((u8*)ie + le16_to_cpu(ie->length))) {

  if ((u8*)ie < (u8*)ctx->mrec || (u8*)ie +
    sizeof(INDEX_ENTRY_HEADER) > index_end ||
    (u8*)ie + le16_to_cpu(ie->key_length) >
    index_end)
   goto dir_err_out;




  if (ie->flags & INDEX_ENTRY_END)
   break;







  if (ntfs_are_names_equal(uname, uname_len,
    (ntfschar*)&ie->key.file_name.file_name,
    ie->key.file_name.file_name_length,
    CASE_SENSITIVE, vol->upcase, vol->upcase_len)) {
found_it:
   if (ie->key.file_name.file_name_type == FILE_NAME_DOS) {
    if (!name) {
     name = kmalloc(sizeof(ntfs_name),
       GFP_NOFS);
     if (!name) {
      err = -ENOMEM;
      goto err_out;
     }
    }
    name->mref = le64_to_cpu(
      ie->data.dir.indexed_file);
    name->type = FILE_NAME_DOS;
    name->len = 0;
    *res = name;
   } else {
    kfree(name);
    *res = ((void*)0);
   }
   mref = le64_to_cpu(ie->data.dir.indexed_file);
   ntfs_attr_put_search_ctx(ctx);
   unmap_mft_record(dir_ni);
   return mref;
  }
  if (!NVolCaseSensitive(vol) &&
    ie->key.file_name.file_name_type &&
    ntfs_are_names_equal(uname, uname_len,
    (ntfschar*)&ie->key.file_name.file_name,
    ie->key.file_name.file_name_length,
    IGNORE_CASE, vol->upcase, vol->upcase_len)) {
   int name_size = sizeof(ntfs_name);
   u8 type = ie->key.file_name.file_name_type;
   u8 len = ie->key.file_name.file_name_length;


   if (name) {
    ntfs_error(sb, "Found already allocated name "
      "in phase 1. Please run chkdsk "
      "and if that doesn't find any "
      "errors please report you saw "
      "this message to "
      "linux-ntfs-dev@lists."
      "sourceforge.net.");
    goto dir_err_out;
   }

   if (type != FILE_NAME_DOS)
    name_size += len * sizeof(ntfschar);
   name = kmalloc(name_size, GFP_NOFS);
   if (!name) {
    err = -ENOMEM;
    goto err_out;
   }
   name->mref = le64_to_cpu(ie->data.dir.indexed_file);
   name->type = type;
   if (type != FILE_NAME_DOS) {
    name->len = len;
    memcpy(name->name, ie->key.file_name.file_name,
      len * sizeof(ntfschar));
   } else
    name->len = 0;
   *res = name;
  }




  rc = ntfs_collate_names(uname, uname_len,
    (ntfschar*)&ie->key.file_name.file_name,
    ie->key.file_name.file_name_length, 1,
    IGNORE_CASE, vol->upcase, vol->upcase_len);





  if (rc == -1)
   break;

  if (rc)
   continue;





  rc = ntfs_collate_names(uname, uname_len,
    (ntfschar*)&ie->key.file_name.file_name,
    ie->key.file_name.file_name_length, 1,
    CASE_SENSITIVE, vol->upcase, vol->upcase_len);
  if (rc == -1)
   break;
  if (rc)
   continue;





  goto found_it;
 }






 if (!(ie->flags & INDEX_ENTRY_NODE)) {
  if (name) {
   ntfs_attr_put_search_ctx(ctx);
   unmap_mft_record(dir_ni);
   return name->mref;
  }
  ntfs_debug("Entry not found.");
  err = -ENOENT;
  goto err_out;
 }

 if (!NInoIndexAllocPresent(dir_ni)) {
  ntfs_error(sb, "No index allocation attribute but index entry "
    "requires one. Directory inode 0x%lx is "
    "corrupt or driver bug.", dir_ni->mft_no);
  goto err_out;
 }

 vcn = sle64_to_cpup((sle64*)((u8*)ie + le16_to_cpu(ie->length) - 8));
 ia_mapping = VFS_I(dir_ni)->i_mapping;




 ntfs_attr_put_search_ctx(ctx);
 unmap_mft_record(dir_ni);
 m = ((void*)0);
 ctx = ((void*)0);
descend_into_child_node:





 page = ntfs_map_page(ia_mapping, vcn <<
   dir_ni->itype.index.vcn_size_bits >> PAGE_SHIFT);
 if (IS_ERR(page)) {
  ntfs_error(sb, "Failed to map directory index page, error %ld.",
    -PTR_ERR(page));
  err = PTR_ERR(page);
  goto err_out;
 }
 lock_page(page);
 kaddr = (u8*)page_address(page);
fast_descend_into_child_node:

 ia = (INDEX_ALLOCATION*)(kaddr + ((vcn <<
   dir_ni->itype.index.vcn_size_bits) & ~PAGE_MASK));

 if ((u8*)ia < kaddr || (u8*)ia > kaddr + PAGE_SIZE) {
  ntfs_error(sb, "Out of bounds check failed. Corrupt directory "
    "inode 0x%lx or driver bug.", dir_ni->mft_no);
  goto unm_err_out;
 }

 if (unlikely(!ntfs_is_indx_record(ia->magic))) {
  ntfs_error(sb, "Directory index record with vcn 0x%llx is "
    "corrupt.  Corrupt inode 0x%lx.  Run chkdsk.",
    (unsigned long long)vcn, dir_ni->mft_no);
  goto unm_err_out;
 }
 if (sle64_to_cpu(ia->index_block_vcn) != vcn) {
  ntfs_error(sb, "Actual VCN (0x%llx) of index buffer is "
    "different from expected VCN (0x%llx). "
    "Directory inode 0x%lx is corrupt or driver "
    "bug.", (unsigned long long)
    sle64_to_cpu(ia->index_block_vcn),
    (unsigned long long)vcn, dir_ni->mft_no);
  goto unm_err_out;
 }
 if (le32_to_cpu(ia->index.allocated_size) + 0x18 !=
   dir_ni->itype.index.block_size) {
  ntfs_error(sb, "Index buffer (VCN 0x%llx) of directory inode "
    "0x%lx has a size (%u) differing from the "
    "directory specified size (%u). Directory "
    "inode is corrupt or driver bug.",
    (unsigned long long)vcn, dir_ni->mft_no,
    le32_to_cpu(ia->index.allocated_size) + 0x18,
    dir_ni->itype.index.block_size);
  goto unm_err_out;
 }
 index_end = (u8*)ia + dir_ni->itype.index.block_size;
 if (index_end > kaddr + PAGE_SIZE) {
  ntfs_error(sb, "Index buffer (VCN 0x%llx) of directory inode "
    "0x%lx crosses page boundary. Impossible! "
    "Cannot access! This is probably a bug in the "
    "driver.", (unsigned long long)vcn,
    dir_ni->mft_no);
  goto unm_err_out;
 }
 index_end = (u8*)&ia->index + le32_to_cpu(ia->index.index_length);
 if (index_end > (u8*)ia + dir_ni->itype.index.block_size) {
  ntfs_error(sb, "Size of index buffer (VCN 0x%llx) of directory "
    "inode 0x%lx exceeds maximum size.",
    (unsigned long long)vcn, dir_ni->mft_no);
  goto unm_err_out;
 }

 ie = (INDEX_ENTRY*)((u8*)&ia->index +
   le32_to_cpu(ia->index.entries_offset));





 for (;; ie = (INDEX_ENTRY*)((u8*)ie + le16_to_cpu(ie->length))) {

  if ((u8*)ie < (u8*)ia || (u8*)ie +
    sizeof(INDEX_ENTRY_HEADER) > index_end ||
    (u8*)ie + le16_to_cpu(ie->key_length) >
    index_end) {
   ntfs_error(sb, "Index entry out of bounds in "
     "directory inode 0x%lx.",
     dir_ni->mft_no);
   goto unm_err_out;
  }




  if (ie->flags & INDEX_ENTRY_END)
   break;







  if (ntfs_are_names_equal(uname, uname_len,
    (ntfschar*)&ie->key.file_name.file_name,
    ie->key.file_name.file_name_length,
    CASE_SENSITIVE, vol->upcase, vol->upcase_len)) {
found_it2:
   if (ie->key.file_name.file_name_type == FILE_NAME_DOS) {
    if (!name) {
     name = kmalloc(sizeof(ntfs_name),
       GFP_NOFS);
     if (!name) {
      err = -ENOMEM;
      goto unm_err_out;
     }
    }
    name->mref = le64_to_cpu(
      ie->data.dir.indexed_file);
    name->type = FILE_NAME_DOS;
    name->len = 0;
    *res = name;
   } else {
    kfree(name);
    *res = ((void*)0);
   }
   mref = le64_to_cpu(ie->data.dir.indexed_file);
   unlock_page(page);
   ntfs_unmap_page(page);
   return mref;
  }
  if (!NVolCaseSensitive(vol) &&
    ie->key.file_name.file_name_type &&
    ntfs_are_names_equal(uname, uname_len,
    (ntfschar*)&ie->key.file_name.file_name,
    ie->key.file_name.file_name_length,
    IGNORE_CASE, vol->upcase, vol->upcase_len)) {
   int name_size = sizeof(ntfs_name);
   u8 type = ie->key.file_name.file_name_type;
   u8 len = ie->key.file_name.file_name_length;


   if (name) {
    ntfs_error(sb, "Found already allocated name "
      "in phase 2. Please run chkdsk "
      "and if that doesn't find any "
      "errors please report you saw "
      "this message to "
      "linux-ntfs-dev@lists."
      "sourceforge.net.");
    unlock_page(page);
    ntfs_unmap_page(page);
    goto dir_err_out;
   }

   if (type != FILE_NAME_DOS)
    name_size += len * sizeof(ntfschar);
   name = kmalloc(name_size, GFP_NOFS);
   if (!name) {
    err = -ENOMEM;
    goto unm_err_out;
   }
   name->mref = le64_to_cpu(ie->data.dir.indexed_file);
   name->type = type;
   if (type != FILE_NAME_DOS) {
    name->len = len;
    memcpy(name->name, ie->key.file_name.file_name,
      len * sizeof(ntfschar));
   } else
    name->len = 0;
   *res = name;
  }




  rc = ntfs_collate_names(uname, uname_len,
    (ntfschar*)&ie->key.file_name.file_name,
    ie->key.file_name.file_name_length, 1,
    IGNORE_CASE, vol->upcase, vol->upcase_len);





  if (rc == -1)
   break;

  if (rc)
   continue;





  rc = ntfs_collate_names(uname, uname_len,
    (ntfschar*)&ie->key.file_name.file_name,
    ie->key.file_name.file_name_length, 1,
    CASE_SENSITIVE, vol->upcase, vol->upcase_len);
  if (rc == -1)
   break;
  if (rc)
   continue;





  goto found_it2;
 }




 if (ie->flags & INDEX_ENTRY_NODE) {
  if ((ia->index.flags & NODE_MASK) == LEAF_NODE) {
   ntfs_error(sb, "Index entry with child node found in "
     "a leaf node in directory inode 0x%lx.",
     dir_ni->mft_no);
   goto unm_err_out;
  }

  old_vcn = vcn;
  vcn = sle64_to_cpup((sle64*)((u8*)ie +
    le16_to_cpu(ie->length) - 8));
  if (vcn >= 0) {


   if (old_vcn << vol->cluster_size_bits >>
     PAGE_SHIFT == vcn <<
     vol->cluster_size_bits >>
     PAGE_SHIFT)
    goto fast_descend_into_child_node;
   unlock_page(page);
   ntfs_unmap_page(page);
   goto descend_into_child_node;
  }
  ntfs_error(sb, "Negative child node vcn in directory inode "
    "0x%lx.", dir_ni->mft_no);
  goto unm_err_out;
 }





 if (name) {
  unlock_page(page);
  ntfs_unmap_page(page);
  return name->mref;
 }
 ntfs_debug("Entry not found.");
 err = -ENOENT;
unm_err_out:
 unlock_page(page);
 ntfs_unmap_page(page);
err_out:
 if (!err)
  err = -EIO;
 if (ctx)
  ntfs_attr_put_search_ctx(ctx);
 if (m)
  unmap_mft_record(dir_ni);
 if (name) {
  kfree(name);
  *res = ((void*)0);
 }
 return ERR_MREF(err);
dir_err_out:
 ntfs_error(sb, "Corrupt directory.  Aborting lookup.");
 goto err_out;
}
