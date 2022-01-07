
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_47__ TYPE_9__ ;
typedef struct TYPE_46__ TYPE_8__ ;
typedef struct TYPE_45__ TYPE_7__ ;
typedef struct TYPE_44__ TYPE_6__ ;
typedef struct TYPE_43__ TYPE_5__ ;
typedef struct TYPE_42__ TYPE_4__ ;
typedef struct TYPE_41__ TYPE_3__ ;
typedef struct TYPE_40__ TYPE_2__ ;
typedef struct TYPE_39__ TYPE_26__ ;
typedef struct TYPE_38__ TYPE_1__ ;
typedef struct TYPE_37__ TYPE_17__ ;
typedef struct TYPE_36__ TYPE_16__ ;
typedef struct TYPE_35__ TYPE_15__ ;
typedef struct TYPE_34__ TYPE_14__ ;
typedef struct TYPE_33__ TYPE_13__ ;
typedef struct TYPE_32__ TYPE_12__ ;
typedef struct TYPE_31__ TYPE_11__ ;
typedef struct TYPE_30__ TYPE_10__ ;


typedef int u8 ;
typedef int u32 ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef int sle64 ;
struct TYPE_31__ {int cluster_size_bits; struct super_block* sb; } ;
typedef TYPE_11__ ntfs_volume ;
struct TYPE_46__ {int vcn_size_bits; int block_size; int collation_rule; } ;
struct TYPE_47__ {TYPE_8__ index; } ;
struct TYPE_38__ {TYPE_12__* base_ntfs_ino; } ;
struct TYPE_32__ {scalar_t__ type; int nr_extents; int mft_no; TYPE_9__ itype; int name_len; int name; TYPE_1__ ext; TYPE_11__* vol; } ;
typedef TYPE_12__ ntfs_inode ;
struct TYPE_33__ {int is_in_root; int data_len; struct page* page; TYPE_17__* ia; TYPE_12__* base_ni; TYPE_14__* actx; int * data; TYPE_16__* entry; TYPE_15__* ir; TYPE_12__* idx_ni; } ;
typedef TYPE_13__ ntfs_index_context ;
struct TYPE_34__ {scalar_t__ mrec; TYPE_4__* attr; } ;
typedef TYPE_14__ ntfs_attr_search_ctx ;
typedef int VCN ;
struct TYPE_44__ {int data_length; int data_offset; } ;
struct TYPE_45__ {TYPE_6__ vi; } ;
struct TYPE_43__ {int entries_offset; int index_length; } ;
struct TYPE_40__ {int value_offset; } ;
struct TYPE_41__ {TYPE_2__ resident; } ;
struct TYPE_42__ {TYPE_3__ data; } ;
struct TYPE_39__ {struct address_space* i_mapping; } ;
struct TYPE_30__ {int flags; int entries_offset; int index_length; int allocated_size; } ;
struct TYPE_37__ {TYPE_10__ index; int index_block_vcn; int magic; } ;
struct TYPE_36__ {int flags; int length; int key_length; int key; TYPE_7__ data; } ;
struct TYPE_35__ {TYPE_5__ index; } ;
typedef struct page MFT_RECORD ;
typedef TYPE_15__ INDEX_ROOT ;
typedef int INDEX_ENTRY_HEADER ;
typedef TYPE_16__ INDEX_ENTRY ;
typedef TYPE_17__ INDEX_ALLOCATION ;


 scalar_t__ AT_INDEX_ALLOCATION ;
 int AT_INDEX_ROOT ;
 int BUG_ON (int) ;
 int CASE_SENSITIVE ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int INDEX_ENTRY_END ;
 int INDEX_ENTRY_NODE ;
 scalar_t__ IS_ERR (struct page*) ;
 int LEAF_NODE ;
 int NInoAttr (TYPE_12__*) ;
 int NInoIndexAllocPresent (TYPE_12__*) ;
 int NODE_MASK ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PTR_ERR (struct page*) ;
 TYPE_26__* VFS_I (TYPE_12__*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int lock_page (struct page*) ;
 struct page* map_mft_record (TYPE_12__*) ;
 int memcmp (void const*,int *,int const) ;
 TYPE_14__* ntfs_attr_get_search_ctx (TYPE_12__*,struct page*) ;
 int ntfs_attr_lookup (int ,int ,int ,int ,int ,int *,int ,TYPE_14__*) ;
 int ntfs_attr_put_search_ctx (TYPE_14__*) ;
 int ntfs_collate (TYPE_11__*,int ,void const*,int const,int *,int) ;
 int ntfs_debug (char*) ;
 int ntfs_error (struct super_block*,char*,...) ;
 int ntfs_is_collation_rule_supported (int ) ;
 int ntfs_is_indx_record (int ) ;
 struct page* ntfs_map_page (struct address_space*,int) ;
 int ntfs_unmap_page (struct page*) ;
 scalar_t__ page_address (struct page*) ;
 int sle64_to_cpu (int ) ;
 int sle64_to_cpup (int *) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int unmap_mft_record (TYPE_12__*) ;

int ntfs_index_lookup(const void *key, const int key_len,
  ntfs_index_context *ictx)
{
 VCN vcn, old_vcn;
 ntfs_inode *idx_ni = ictx->idx_ni;
 ntfs_volume *vol = idx_ni->vol;
 struct super_block *sb = vol->sb;
 ntfs_inode *base_ni = idx_ni->ext.base_ntfs_ino;
 MFT_RECORD *m;
 INDEX_ROOT *ir;
 INDEX_ENTRY *ie;
 INDEX_ALLOCATION *ia;
 u8 *index_end, *kaddr;
 ntfs_attr_search_ctx *actx;
 struct address_space *ia_mapping;
 struct page *page;
 int rc, err = 0;

 ntfs_debug("Entering.");
 BUG_ON(!NInoAttr(idx_ni));
 BUG_ON(idx_ni->type != AT_INDEX_ALLOCATION);
 BUG_ON(idx_ni->nr_extents != -1);
 BUG_ON(!base_ni);
 BUG_ON(!key);
 BUG_ON(key_len <= 0);
 if (!ntfs_is_collation_rule_supported(
   idx_ni->itype.index.collation_rule)) {
  ntfs_error(sb, "Index uses unsupported collation rule 0x%x.  "
    "Aborting lookup.", le32_to_cpu(
    idx_ni->itype.index.collation_rule));
  return -EOPNOTSUPP;
 }

 m = map_mft_record(base_ni);
 if (IS_ERR(m)) {
  ntfs_error(sb, "map_mft_record() failed with error code %ld.",
    -PTR_ERR(m));
  return PTR_ERR(m);
 }
 actx = ntfs_attr_get_search_ctx(base_ni, m);
 if (unlikely(!actx)) {
  err = -ENOMEM;
  goto err_out;
 }

 err = ntfs_attr_lookup(AT_INDEX_ROOT, idx_ni->name, idx_ni->name_len,
   CASE_SENSITIVE, 0, ((void*)0), 0, actx);
 if (unlikely(err)) {
  if (err == -ENOENT) {
   ntfs_error(sb, "Index root attribute missing in inode "
     "0x%lx.", idx_ni->mft_no);
   err = -EIO;
  }
  goto err_out;
 }

 ir = (INDEX_ROOT*)((u8*)actx->attr +
   le16_to_cpu(actx->attr->data.resident.value_offset));
 index_end = (u8*)&ir->index + le32_to_cpu(ir->index.index_length);

 ie = (INDEX_ENTRY*)((u8*)&ir->index +
   le32_to_cpu(ir->index.entries_offset));




 for (;; ie = (INDEX_ENTRY*)((u8*)ie + le16_to_cpu(ie->length))) {

  if ((u8*)ie < (u8*)actx->mrec || (u8*)ie +
    sizeof(INDEX_ENTRY_HEADER) > index_end ||
    (u8*)ie + le16_to_cpu(ie->length) > index_end)
   goto idx_err_out;




  if (ie->flags & INDEX_ENTRY_END)
   break;

  if ((u32)sizeof(INDEX_ENTRY_HEADER) +
    le16_to_cpu(ie->key_length) >
    le16_to_cpu(ie->data.vi.data_offset) ||
    (u32)le16_to_cpu(ie->data.vi.data_offset) +
    le16_to_cpu(ie->data.vi.data_length) >
    le16_to_cpu(ie->length))
   goto idx_err_out;

  if ((key_len == le16_to_cpu(ie->key_length)) && !memcmp(key,
    &ie->key, key_len)) {
ir_done:
   ictx->is_in_root = 1;
   ictx->ir = ir;
   ictx->actx = actx;
   ictx->base_ni = base_ni;
   ictx->ia = ((void*)0);
   ictx->page = ((void*)0);
done:
   ictx->entry = ie;
   ictx->data = (u8*)ie +
     le16_to_cpu(ie->data.vi.data_offset);
   ictx->data_len = le16_to_cpu(ie->data.vi.data_length);
   ntfs_debug("Done.");
   return err;
  }




  rc = ntfs_collate(vol, idx_ni->itype.index.collation_rule, key,
    key_len, &ie->key, le16_to_cpu(ie->key_length));





  if (rc == -1)
   break;




  if (!rc)
   goto ir_done;

 }





 if (!(ie->flags & INDEX_ENTRY_NODE)) {
  ntfs_debug("Entry not found.");
  err = -ENOENT;
  goto ir_done;
 }

 if (!NInoIndexAllocPresent(idx_ni)) {
  ntfs_error(sb, "No index allocation attribute but index entry "
    "requires one.  Inode 0x%lx is corrupt or "
    "driver bug.", idx_ni->mft_no);
  goto err_out;
 }

 vcn = sle64_to_cpup((sle64*)((u8*)ie + le16_to_cpu(ie->length) - 8));
 ia_mapping = VFS_I(idx_ni)->i_mapping;




 ntfs_attr_put_search_ctx(actx);
 unmap_mft_record(base_ni);
 m = ((void*)0);
 actx = ((void*)0);
descend_into_child_node:





 page = ntfs_map_page(ia_mapping, vcn <<
   idx_ni->itype.index.vcn_size_bits >> PAGE_SHIFT);
 if (IS_ERR(page)) {
  ntfs_error(sb, "Failed to map index page, error %ld.",
    -PTR_ERR(page));
  err = PTR_ERR(page);
  goto err_out;
 }
 lock_page(page);
 kaddr = (u8*)page_address(page);
fast_descend_into_child_node:

 ia = (INDEX_ALLOCATION*)(kaddr + ((vcn <<
   idx_ni->itype.index.vcn_size_bits) & ~PAGE_MASK));

 if ((u8*)ia < kaddr || (u8*)ia > kaddr + PAGE_SIZE) {
  ntfs_error(sb, "Out of bounds check failed.  Corrupt inode "
    "0x%lx or driver bug.", idx_ni->mft_no);
  goto unm_err_out;
 }

 if (unlikely(!ntfs_is_indx_record(ia->magic))) {
  ntfs_error(sb, "Index record with vcn 0x%llx is corrupt.  "
    "Corrupt inode 0x%lx.  Run chkdsk.",
    (long long)vcn, idx_ni->mft_no);
  goto unm_err_out;
 }
 if (sle64_to_cpu(ia->index_block_vcn) != vcn) {
  ntfs_error(sb, "Actual VCN (0x%llx) of index buffer is "
    "different from expected VCN (0x%llx).  Inode "
    "0x%lx is corrupt or driver bug.",
    (unsigned long long)
    sle64_to_cpu(ia->index_block_vcn),
    (unsigned long long)vcn, idx_ni->mft_no);
  goto unm_err_out;
 }
 if (le32_to_cpu(ia->index.allocated_size) + 0x18 !=
   idx_ni->itype.index.block_size) {
  ntfs_error(sb, "Index buffer (VCN 0x%llx) of inode 0x%lx has "
    "a size (%u) differing from the index "
    "specified size (%u).  Inode is corrupt or "
    "driver bug.", (unsigned long long)vcn,
    idx_ni->mft_no,
    le32_to_cpu(ia->index.allocated_size) + 0x18,
    idx_ni->itype.index.block_size);
  goto unm_err_out;
 }
 index_end = (u8*)ia + idx_ni->itype.index.block_size;
 if (index_end > kaddr + PAGE_SIZE) {
  ntfs_error(sb, "Index buffer (VCN 0x%llx) of inode 0x%lx "
    "crosses page boundary.  Impossible!  Cannot "
    "access!  This is probably a bug in the "
    "driver.", (unsigned long long)vcn,
    idx_ni->mft_no);
  goto unm_err_out;
 }
 index_end = (u8*)&ia->index + le32_to_cpu(ia->index.index_length);
 if (index_end > (u8*)ia + idx_ni->itype.index.block_size) {
  ntfs_error(sb, "Size of index buffer (VCN 0x%llx) of inode "
    "0x%lx exceeds maximum size.",
    (unsigned long long)vcn, idx_ni->mft_no);
  goto unm_err_out;
 }

 ie = (INDEX_ENTRY*)((u8*)&ia->index +
   le32_to_cpu(ia->index.entries_offset));





 for (;; ie = (INDEX_ENTRY*)((u8*)ie + le16_to_cpu(ie->length))) {

  if ((u8*)ie < (u8*)ia || (u8*)ie +
    sizeof(INDEX_ENTRY_HEADER) > index_end ||
    (u8*)ie + le16_to_cpu(ie->length) > index_end) {
   ntfs_error(sb, "Index entry out of bounds in inode "
     "0x%lx.", idx_ni->mft_no);
   goto unm_err_out;
  }




  if (ie->flags & INDEX_ENTRY_END)
   break;

  if ((u32)sizeof(INDEX_ENTRY_HEADER) +
    le16_to_cpu(ie->key_length) >
    le16_to_cpu(ie->data.vi.data_offset) ||
    (u32)le16_to_cpu(ie->data.vi.data_offset) +
    le16_to_cpu(ie->data.vi.data_length) >
    le16_to_cpu(ie->length)) {
   ntfs_error(sb, "Index entry out of bounds in inode "
     "0x%lx.", idx_ni->mft_no);
   goto unm_err_out;
  }

  if ((key_len == le16_to_cpu(ie->key_length)) && !memcmp(key,
    &ie->key, key_len)) {
ia_done:
   ictx->is_in_root = 0;
   ictx->actx = ((void*)0);
   ictx->base_ni = ((void*)0);
   ictx->ia = ia;
   ictx->page = page;
   goto done;
  }




  rc = ntfs_collate(vol, idx_ni->itype.index.collation_rule, key,
    key_len, &ie->key, le16_to_cpu(ie->key_length));





  if (rc == -1)
   break;




  if (!rc)
   goto ia_done;

 }




 if (!(ie->flags & INDEX_ENTRY_NODE)) {
  ntfs_debug("Entry not found.");
  err = -ENOENT;
  goto ia_done;
 }
 if ((ia->index.flags & NODE_MASK) == LEAF_NODE) {
  ntfs_error(sb, "Index entry with child node found in a leaf "
    "node in inode 0x%lx.", idx_ni->mft_no);
  goto unm_err_out;
 }

 old_vcn = vcn;
 vcn = sle64_to_cpup((sle64*)((u8*)ie + le16_to_cpu(ie->length) - 8));
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
 ntfs_error(sb, "Negative child node vcn in inode 0x%lx.",
   idx_ni->mft_no);
unm_err_out:
 unlock_page(page);
 ntfs_unmap_page(page);
err_out:
 if (!err)
  err = -EIO;
 if (actx)
  ntfs_attr_put_search_ctx(actx);
 if (m)
  unmap_mft_record(base_ni);
 return err;
idx_err_out:
 ntfs_error(sb, "Corrupt index.  Aborting lookup.");
 goto err_out;
}
