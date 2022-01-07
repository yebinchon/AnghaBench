
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_9__ ;
typedef struct TYPE_39__ TYPE_8__ ;
typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_13__ ;
typedef struct TYPE_30__ TYPE_12__ ;
typedef struct TYPE_29__ TYPE_11__ ;
typedef struct TYPE_28__ TYPE_10__ ;


typedef int u8 ;
struct inode {int i_mode; int i_size; int i_blocks; int i_ino; int i_sb; TYPE_7__* i_mapping; int i_generation; int i_atime; int i_ctime; int i_mtime; int i_nlink; int i_gid; int i_uid; } ;
struct TYPE_40__ {int mft_record_size; scalar_t__ cluster_size; scalar_t__ sector_size; int sb; int sector_size_bits; int cluster_size_bits; } ;
typedef TYPE_9__ ntfs_volume ;
struct TYPE_39__ {TYPE_10__* base_ntfs_ino; } ;
struct TYPE_36__ {int block_size; int block_size_bits; scalar_t__ vcn_size; int vcn_size_bits; scalar_t__ collation_rule; } ;
struct TYPE_37__ {TYPE_5__ index; } ;
struct TYPE_28__ {int initialized_size; int allocated_size; int nr_extents; int name_len; TYPE_8__ ext; TYPE_6__ itype; int name; int seq_no; } ;
typedef TYPE_10__ ntfs_inode ;
struct TYPE_29__ {TYPE_13__* attr; scalar_t__ mrec; } ;
typedef TYPE_11__ ntfs_attr_search_ctx ;
typedef int loff_t ;
struct TYPE_38__ {int * a_ops; } ;
struct TYPE_34__ {int allocated_size; int initialized_size; int data_size; scalar_t__ lowest_vcn; int mapping_pairs_offset; } ;
struct TYPE_32__ {scalar_t__ value_length; int value_offset; } ;
struct TYPE_35__ {TYPE_3__ non_resident; TYPE_1__ resident; } ;
struct TYPE_33__ {int flags; scalar_t__ index_length; } ;
struct TYPE_31__ {int non_resident; int flags; TYPE_4__ data; int name_offset; scalar_t__ name_length; } ;
struct TYPE_30__ {TYPE_2__ index; scalar_t__ index_block_size; scalar_t__ collation_rule; scalar_t__ type; } ;
typedef struct inode MFT_RECORD ;
typedef TYPE_12__ INDEX_ROOT ;
typedef TYPE_13__ ATTR_RECORD ;


 int ATTR_COMPRESSION_MASK ;
 int ATTR_IS_ENCRYPTED ;
 int ATTR_IS_SPARSE ;
 int AT_BITMAP ;
 int AT_INDEX_ALLOCATION ;
 int AT_INDEX_ROOT ;
 int CASE_SENSITIVE ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct inode*) ;
 int LARGE_INDEX ;
 scalar_t__ NInoCompressed (TYPE_10__*) ;
 scalar_t__ NInoEncrypted (TYPE_10__*) ;
 int NInoSetIndexAllocPresent (TYPE_10__*) ;
 scalar_t__ NInoSparse (TYPE_10__*) ;
 scalar_t__ NTFS_BLOCK_SIZE ;
 TYPE_10__* NTFS_I (struct inode*) ;
 TYPE_9__* NTFS_SB (int ) ;
 int NVolSetErrors (TYPE_9__*) ;
 scalar_t__ PAGE_SIZE ;
 int PTR_ERR (struct inode*) ;
 int S_IFMT ;
 int ffs (scalar_t__) ;
 int i_size_read (struct inode*) ;
 int igrab (struct inode*) ;
 int iput (struct inode*) ;
 int is_power_of_2 (int) ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (scalar_t__) ;
 int make_bad_inode (struct inode*) ;
 struct inode* map_mft_record (TYPE_10__*) ;
 TYPE_11__* ntfs_attr_get_search_ctx (TYPE_10__*,struct inode*) ;
 struct inode* ntfs_attr_iget (struct inode*,int ,int ,int ) ;
 int ntfs_attr_lookup (int ,int ,int ,int ,int ,int *,int ,TYPE_11__*) ;
 int ntfs_attr_put_search_ctx (TYPE_11__*) ;
 int ntfs_attr_reinit_search_ctx (TYPE_11__*) ;
 int ntfs_debug (char*,...) ;
 int ntfs_error (int ,char*,...) ;
 int ntfs_init_big_inode (struct inode*) ;
 int ntfs_mst_aops ;
 int set_nlink (struct inode*,int ) ;
 void* sle64_to_cpu (int ) ;
 scalar_t__ unlikely (int) ;
 int unmap_mft_record (TYPE_10__*) ;

__attribute__((used)) static int ntfs_read_locked_index_inode(struct inode *base_vi, struct inode *vi)
{
 loff_t bvi_size;
 ntfs_volume *vol = NTFS_SB(vi->i_sb);
 ntfs_inode *ni, *base_ni, *bni;
 struct inode *bvi;
 MFT_RECORD *m;
 ATTR_RECORD *a;
 ntfs_attr_search_ctx *ctx;
 INDEX_ROOT *ir;
 u8 *ir_end, *index_end;
 int err = 0;

 ntfs_debug("Entering for i_ino 0x%lx.", vi->i_ino);
 ntfs_init_big_inode(vi);
 ni = NTFS_I(vi);
 base_ni = NTFS_I(base_vi);

 vi->i_uid = base_vi->i_uid;
 vi->i_gid = base_vi->i_gid;
 set_nlink(vi, base_vi->i_nlink);
 vi->i_mtime = base_vi->i_mtime;
 vi->i_ctime = base_vi->i_ctime;
 vi->i_atime = base_vi->i_atime;
 vi->i_generation = ni->seq_no = base_ni->seq_no;

 vi->i_mode = base_vi->i_mode & ~S_IFMT;

 m = map_mft_record(base_ni);
 if (IS_ERR(m)) {
  err = PTR_ERR(m);
  goto err_out;
 }
 ctx = ntfs_attr_get_search_ctx(base_ni, m);
 if (!ctx) {
  err = -ENOMEM;
  goto unm_err_out;
 }

 err = ntfs_attr_lookup(AT_INDEX_ROOT, ni->name, ni->name_len,
   CASE_SENSITIVE, 0, ((void*)0), 0, ctx);
 if (unlikely(err)) {
  if (err == -ENOENT)
   ntfs_error(vi->i_sb, "$INDEX_ROOT attribute is "
     "missing.");
  goto unm_err_out;
 }
 a = ctx->attr;

 if (unlikely(a->non_resident)) {
  ntfs_error(vol->sb, "$INDEX_ROOT attribute is not resident.");
  goto unm_err_out;
 }

 if (unlikely(a->name_length && (le16_to_cpu(a->name_offset) >=
   le16_to_cpu(a->data.resident.value_offset)))) {
  ntfs_error(vol->sb, "$INDEX_ROOT attribute name is placed "
    "after the attribute value.");
  goto unm_err_out;
 }




 if (a->flags & (ATTR_COMPRESSION_MASK | ATTR_IS_ENCRYPTED |
   ATTR_IS_SPARSE)) {
  ntfs_error(vi->i_sb, "Found compressed/encrypted/sparse index "
    "root attribute.");
  goto unm_err_out;
 }
 ir = (INDEX_ROOT*)((u8*)a + le16_to_cpu(a->data.resident.value_offset));
 ir_end = (u8*)ir + le32_to_cpu(a->data.resident.value_length);
 if (ir_end > (u8*)ctx->mrec + vol->mft_record_size) {
  ntfs_error(vi->i_sb, "$INDEX_ROOT attribute is corrupt.");
  goto unm_err_out;
 }
 index_end = (u8*)&ir->index + le32_to_cpu(ir->index.index_length);
 if (index_end > ir_end) {
  ntfs_error(vi->i_sb, "Index is corrupt.");
  goto unm_err_out;
 }
 if (ir->type) {
  ntfs_error(vi->i_sb, "Index type is not 0 (type is 0x%x).",
    le32_to_cpu(ir->type));
  goto unm_err_out;
 }
 ni->itype.index.collation_rule = ir->collation_rule;
 ntfs_debug("Index collation rule is 0x%x.",
   le32_to_cpu(ir->collation_rule));
 ni->itype.index.block_size = le32_to_cpu(ir->index_block_size);
 if (!is_power_of_2(ni->itype.index.block_size)) {
  ntfs_error(vi->i_sb, "Index block size (%u) is not a power of "
    "two.", ni->itype.index.block_size);
  goto unm_err_out;
 }
 if (ni->itype.index.block_size > PAGE_SIZE) {
  ntfs_error(vi->i_sb, "Index block size (%u) > PAGE_SIZE "
    "(%ld) is not supported.  Sorry.",
    ni->itype.index.block_size, PAGE_SIZE);
  err = -EOPNOTSUPP;
  goto unm_err_out;
 }
 if (ni->itype.index.block_size < NTFS_BLOCK_SIZE) {
  ntfs_error(vi->i_sb, "Index block size (%u) < NTFS_BLOCK_SIZE "
    "(%i) is not supported.  Sorry.",
    ni->itype.index.block_size, NTFS_BLOCK_SIZE);
  err = -EOPNOTSUPP;
  goto unm_err_out;
 }
 ni->itype.index.block_size_bits = ffs(ni->itype.index.block_size) - 1;

 if (vol->cluster_size <= ni->itype.index.block_size) {
  ni->itype.index.vcn_size = vol->cluster_size;
  ni->itype.index.vcn_size_bits = vol->cluster_size_bits;
 } else {
  ni->itype.index.vcn_size = vol->sector_size;
  ni->itype.index.vcn_size_bits = vol->sector_size_bits;
 }

 if (!(ir->index.flags & LARGE_INDEX)) {

  vi->i_size = ni->initialized_size = ni->allocated_size = 0;

  ntfs_attr_put_search_ctx(ctx);
  unmap_mft_record(base_ni);
  m = ((void*)0);
  ctx = ((void*)0);
  goto skip_large_index_stuff;
 }
 NInoSetIndexAllocPresent(ni);

 ntfs_attr_reinit_search_ctx(ctx);
 err = ntfs_attr_lookup(AT_INDEX_ALLOCATION, ni->name, ni->name_len,
   CASE_SENSITIVE, 0, ((void*)0), 0, ctx);
 if (unlikely(err)) {
  if (err == -ENOENT)
   ntfs_error(vi->i_sb, "$INDEX_ALLOCATION attribute is "
     "not present but $INDEX_ROOT "
     "indicated it is.");
  else
   ntfs_error(vi->i_sb, "Failed to lookup "
     "$INDEX_ALLOCATION attribute.");
  goto unm_err_out;
 }
 a = ctx->attr;
 if (!a->non_resident) {
  ntfs_error(vi->i_sb, "$INDEX_ALLOCATION attribute is "
    "resident.");
  goto unm_err_out;
 }



 if (unlikely(a->name_length && (le16_to_cpu(a->name_offset) >=
   le16_to_cpu(
   a->data.non_resident.mapping_pairs_offset)))) {
  ntfs_error(vol->sb, "$INDEX_ALLOCATION attribute name is "
    "placed after the mapping pairs array.");
  goto unm_err_out;
 }
 if (a->flags & ATTR_IS_ENCRYPTED) {
  ntfs_error(vi->i_sb, "$INDEX_ALLOCATION attribute is "
    "encrypted.");
  goto unm_err_out;
 }
 if (a->flags & ATTR_IS_SPARSE) {
  ntfs_error(vi->i_sb, "$INDEX_ALLOCATION attribute is sparse.");
  goto unm_err_out;
 }
 if (a->flags & ATTR_COMPRESSION_MASK) {
  ntfs_error(vi->i_sb, "$INDEX_ALLOCATION attribute is "
    "compressed.");
  goto unm_err_out;
 }
 if (a->data.non_resident.lowest_vcn) {
  ntfs_error(vi->i_sb, "First extent of $INDEX_ALLOCATION "
    "attribute has non zero lowest_vcn.");
  goto unm_err_out;
 }
 vi->i_size = sle64_to_cpu(a->data.non_resident.data_size);
 ni->initialized_size = sle64_to_cpu(
   a->data.non_resident.initialized_size);
 ni->allocated_size = sle64_to_cpu(a->data.non_resident.allocated_size);




 ntfs_attr_put_search_ctx(ctx);
 unmap_mft_record(base_ni);
 m = ((void*)0);
 ctx = ((void*)0);

 bvi = ntfs_attr_iget(base_vi, AT_BITMAP, ni->name, ni->name_len);
 if (IS_ERR(bvi)) {
  ntfs_error(vi->i_sb, "Failed to get bitmap attribute.");
  err = PTR_ERR(bvi);
  goto unm_err_out;
 }
 bni = NTFS_I(bvi);
 if (NInoCompressed(bni) || NInoEncrypted(bni) ||
   NInoSparse(bni)) {
  ntfs_error(vi->i_sb, "$BITMAP attribute is compressed and/or "
    "encrypted and/or sparse.");
  goto iput_unm_err_out;
 }

 bvi_size = i_size_read(bvi);
 if ((bvi_size << 3) < (vi->i_size >> ni->itype.index.block_size_bits)) {
  ntfs_error(vi->i_sb, "Index bitmap too small (0x%llx) for "
    "index allocation (0x%llx).", bvi_size << 3,
    vi->i_size);
  goto iput_unm_err_out;
 }
 iput(bvi);
skip_large_index_stuff:

 vi->i_mapping->a_ops = &ntfs_mst_aops;
 vi->i_blocks = ni->allocated_size >> 9;




 igrab(base_vi);
 ni->ext.base_ntfs_ino = base_ni;
 ni->nr_extents = -1;

 ntfs_debug("Done.");
 return 0;
iput_unm_err_out:
 iput(bvi);
unm_err_out:
 if (!err)
  err = -EIO;
 if (ctx)
  ntfs_attr_put_search_ctx(ctx);
 if (m)
  unmap_mft_record(base_ni);
err_out:
 ntfs_error(vi->i_sb, "Failed with error code %i while reading index "
   "inode (mft_no 0x%lx, name_len %i.", err, vi->i_ino,
   ni->name_len);
 make_bad_inode(vi);
 if (err != -EOPNOTSUPP && err != -ENOMEM)
  NVolSetErrors(vol);
 return err;
}
