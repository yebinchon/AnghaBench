
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_46__ TYPE_9__ ;
typedef struct TYPE_45__ TYPE_8__ ;
typedef struct TYPE_44__ TYPE_7__ ;
typedef struct TYPE_43__ TYPE_6__ ;
typedef struct TYPE_42__ TYPE_5__ ;
typedef struct TYPE_41__ TYPE_4__ ;
typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_25__ ;
typedef struct TYPE_37__ TYPE_1__ ;
typedef struct TYPE_36__ TYPE_13__ ;
typedef struct TYPE_35__ TYPE_12__ ;
typedef struct TYPE_34__ TYPE_11__ ;
typedef struct TYPE_33__ TYPE_10__ ;


typedef char u8 ;
typedef unsigned int u32 ;
struct super_block {unsigned int s_blocksize; int s_blocksize_bits; } ;
struct inode {int i_generation; scalar_t__ i_ino; int i_size; int * i_fop; int * i_op; int i_mode; int i_gid; int i_uid; TYPE_3__* i_mapping; struct super_block* i_sb; } ;
struct buffer_head {char* b_data; } ;
typedef int s64 ;
typedef int runlist_element ;
struct TYPE_45__ {int mft_record_size; unsigned long long mft_record_size_bits; int mft_lcn; int cluster_size_bits; struct inode* mft_ino; } ;
typedef TYPE_8__ ntfs_volume ;
struct TYPE_44__ {int lock; int * rl; } ;
struct TYPE_38__ {int * rl; } ;
struct TYPE_37__ {int block_size; unsigned long long block_size_bits; } ;
struct TYPE_39__ {TYPE_1__ index; } ;
struct TYPE_46__ {int seq_no; unsigned int attr_list_size; char* attr_list; int initialized_size; int allocated_size; int mrec_lock; TYPE_7__ runlist; TYPE_25__ attr_list_rl; TYPE_2__ itype; scalar_t__ name_len; int * name; scalar_t__ type; } ;
typedef TYPE_9__ ntfs_inode ;
struct TYPE_33__ {TYPE_12__* attr; scalar_t__ mrec; } ;
typedef TYPE_10__ ntfs_attr_search_ctx ;
typedef int VCN ;
struct TYPE_42__ {scalar_t__ lowest_vcn; scalar_t__ highest_vcn; scalar_t__ allocated_size; scalar_t__ initialized_size; scalar_t__ data_size; } ;
struct TYPE_41__ {scalar_t__ value_length; int value_offset; } ;
struct TYPE_43__ {TYPE_5__ non_resident; TYPE_4__ resident; } ;
struct TYPE_40__ {int * a_ops; } ;
struct TYPE_36__ {scalar_t__ type; int mft_reference; scalar_t__ lowest_vcn; scalar_t__ name_length; int length; } ;
struct TYPE_35__ {int flags; TYPE_6__ data; scalar_t__ non_resident; } ;
struct TYPE_34__ {int sequence_number; } ;
typedef int NTFS_RECORD ;
typedef TYPE_11__ MFT_RECORD ;
typedef TYPE_12__ ATTR_RECORD ;
typedef TYPE_13__ ATTR_LIST_ENTRY ;


 int ATTR_COMPRESSION_MASK ;
 int ATTR_IS_ENCRYPTED ;
 int ATTR_IS_SPARSE ;
 scalar_t__ AT_ATTRIBUTE_LIST ;
 scalar_t__ AT_DATA ;
 int ENOENT ;
 int ENOMEM ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 scalar_t__ IS_ERR (int *) ;
 scalar_t__ MREF_LE (int ) ;
 scalar_t__ MSEQNO_LE (int ) ;
 int NInoSetAttrList (TYPE_9__*) ;
 int NInoSetAttrListNonResident (TYPE_9__*) ;
 int NInoSetMstProtected (TYPE_9__*) ;
 int NInoSetNonResident (TYPE_9__*) ;
 int NInoSetSparseDisabled (TYPE_9__*) ;
 TYPE_9__* NTFS_I (struct inode*) ;
 TYPE_8__* NTFS_SB (struct super_block*) ;
 int PTR_ERR (int *) ;
 int S_IFREG ;
 int brelse (struct buffer_head*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (scalar_t__) ;
 int load_attribute_list (TYPE_8__*,TYPE_25__*,char*,unsigned int,int) ;
 int lockdep_set_class (int *,int *) ;
 int make_bad_inode (struct inode*) ;
 int memcpy (char*,char*,scalar_t__) ;
 int mft_ni_mrec_lock_key ;
 int mft_ni_runlist_lock_key ;
 TYPE_10__* ntfs_attr_get_search_ctx (TYPE_9__*,TYPE_11__*) ;
 int ntfs_attr_lookup (scalar_t__,int *,int ,int ,int,int *,int ,TYPE_10__*) ;
 int ntfs_attr_put_search_ctx (TYPE_10__*) ;
 int ntfs_attr_reinit_search_ctx (TYPE_10__*) ;
 scalar_t__ ntfs_attr_size (TYPE_12__*) ;
 int ntfs_debug (char*,...) ;
 int ntfs_empty_file_ops ;
 int ntfs_empty_inode_ops ;
 int ntfs_error (struct super_block*,char*,...) ;
 int ntfs_free (TYPE_11__*) ;
 int ntfs_init_big_inode (struct inode*) ;
 char* ntfs_malloc_nofs (unsigned int) ;
 void* ntfs_mapping_pairs_decompress (TYPE_8__*,TYPE_12__*,int *) ;
 int ntfs_mst_aops ;
 int ntfs_read_locked_inode (struct inode*) ;
 int ntfs_warning (struct super_block*,char*) ;
 scalar_t__ post_read_mst_fixup (int *,unsigned int) ;
 struct buffer_head* sb_bread (struct super_block*,int ) ;
 int sle64_to_cpu (scalar_t__) ;
 scalar_t__ unlikely (int) ;

int ntfs_read_inode_mount(struct inode *vi)
{
 VCN next_vcn, last_vcn, highest_vcn;
 s64 block;
 struct super_block *sb = vi->i_sb;
 ntfs_volume *vol = NTFS_SB(sb);
 struct buffer_head *bh;
 ntfs_inode *ni;
 MFT_RECORD *m = ((void*)0);
 ATTR_RECORD *a;
 ntfs_attr_search_ctx *ctx;
 unsigned int i, nr_blocks;
 int err;

 ntfs_debug("Entering.");


 ntfs_init_big_inode(vi);

 ni = NTFS_I(vi);


 NInoSetNonResident(ni);
 NInoSetMstProtected(ni);
 NInoSetSparseDisabled(ni);
 ni->type = AT_DATA;
 ni->name = ((void*)0);
 ni->name_len = 0;




 ni->itype.index.block_size = vol->mft_record_size;
 ni->itype.index.block_size_bits = vol->mft_record_size_bits;


 vol->mft_ino = vi;


 if (vol->mft_record_size > 64 * 1024) {
  ntfs_error(sb, "Unsupported mft record size %i (max 64kiB).",
    vol->mft_record_size);
  goto err_out;
 }
 i = vol->mft_record_size;
 if (i < sb->s_blocksize)
  i = sb->s_blocksize;
 m = (MFT_RECORD*)ntfs_malloc_nofs(i);
 if (!m) {
  ntfs_error(sb, "Failed to allocate buffer for $MFT record 0.");
  goto err_out;
 }


 block = vol->mft_lcn << vol->cluster_size_bits >>
   sb->s_blocksize_bits;
 nr_blocks = vol->mft_record_size >> sb->s_blocksize_bits;
 if (!nr_blocks)
  nr_blocks = 1;


 for (i = 0; i < nr_blocks; i++) {
  bh = sb_bread(sb, block++);
  if (!bh) {
   ntfs_error(sb, "Device read failed.");
   goto err_out;
  }
  memcpy((char*)m + (i << sb->s_blocksize_bits), bh->b_data,
    sb->s_blocksize);
  brelse(bh);
 }


 if (post_read_mst_fixup((NTFS_RECORD*)m, vol->mft_record_size)) {

  ntfs_error(sb, "MST fixup failed. $MFT is corrupt.");
  goto err_out;
 }


 vi->i_generation = ni->seq_no = le16_to_cpu(m->sequence_number);


 vi->i_mapping->a_ops = &ntfs_mst_aops;

 ctx = ntfs_attr_get_search_ctx(ni, m);
 if (!ctx) {
  err = -ENOMEM;
  goto err_out;
 }


 err = ntfs_attr_lookup(AT_ATTRIBUTE_LIST, ((void*)0), 0, 0, 0, ((void*)0), 0, ctx);
 if (err) {
  if (unlikely(err != -ENOENT)) {
   ntfs_error(sb, "Failed to lookup attribute list "
     "attribute. You should run chkdsk.");
   goto put_err_out;
  }
 } else {
  ATTR_LIST_ENTRY *al_entry, *next_al_entry;
  u8 *al_end;
  static const char *es = "  Not allowed.  $MFT is corrupt.  "
    "You should run chkdsk.";

  ntfs_debug("Attribute list attribute found in $MFT.");
  NInoSetAttrList(ni);
  a = ctx->attr;
  if (a->flags & ATTR_COMPRESSION_MASK) {
   ntfs_error(sb, "Attribute list attribute is "
     "compressed.%s", es);
   goto put_err_out;
  }
  if (a->flags & ATTR_IS_ENCRYPTED ||
    a->flags & ATTR_IS_SPARSE) {
   if (a->non_resident) {
    ntfs_error(sb, "Non-resident attribute list "
      "attribute is encrypted/"
      "sparse.%s", es);
    goto put_err_out;
   }
   ntfs_warning(sb, "Resident attribute list attribute "
     "in $MFT system file is marked "
     "encrypted/sparse which is not true.  "
     "However, Windows allows this and "
     "chkdsk does not detect or correct it "
     "so we will just ignore the invalid "
     "flags and pretend they are not set.");
  }

  ni->attr_list_size = (u32)ntfs_attr_size(a);
  ni->attr_list = ntfs_malloc_nofs(ni->attr_list_size);
  if (!ni->attr_list) {
   ntfs_error(sb, "Not enough memory to allocate buffer "
     "for attribute list.");
   goto put_err_out;
  }
  if (a->non_resident) {
   NInoSetAttrListNonResident(ni);
   if (a->data.non_resident.lowest_vcn) {
    ntfs_error(sb, "Attribute list has non zero "
      "lowest_vcn. $MFT is corrupt. "
      "You should run chkdsk.");
    goto put_err_out;
   }

   ni->attr_list_rl.rl = ntfs_mapping_pairs_decompress(vol,
     a, ((void*)0));
   if (IS_ERR(ni->attr_list_rl.rl)) {
    err = PTR_ERR(ni->attr_list_rl.rl);
    ni->attr_list_rl.rl = ((void*)0);
    ntfs_error(sb, "Mapping pairs decompression "
      "failed with error code %i.",
      -err);
    goto put_err_out;
   }

   if ((err = load_attribute_list(vol, &ni->attr_list_rl,
     ni->attr_list, ni->attr_list_size,
     sle64_to_cpu(a->data.
     non_resident.initialized_size)))) {
    ntfs_error(sb, "Failed to load attribute list "
      "attribute with error code %i.",
      -err);
    goto put_err_out;
   }
  } else {
   if ((u8*)a + le16_to_cpu(
     a->data.resident.value_offset) +
     le32_to_cpu(
     a->data.resident.value_length) >
     (u8*)ctx->mrec + vol->mft_record_size) {
    ntfs_error(sb, "Corrupt attribute list "
      "attribute.");
    goto put_err_out;
   }

   memcpy(ni->attr_list, (u8*)a + le16_to_cpu(
     a->data.resident.value_offset),
     le32_to_cpu(
     a->data.resident.value_length));
  }
  al_entry = (ATTR_LIST_ENTRY*)ni->attr_list;
  al_end = (u8*)al_entry + ni->attr_list_size;
  for (;; al_entry = next_al_entry) {

   if ((u8*)al_entry < ni->attr_list ||
     (u8*)al_entry > al_end)
    goto em_put_err_out;

   if ((u8*)al_entry == al_end)
    goto em_put_err_out;
   if (!al_entry->length)
    goto em_put_err_out;
   if ((u8*)al_entry + 6 > al_end || (u8*)al_entry +
     le16_to_cpu(al_entry->length) > al_end)
    goto em_put_err_out;
   next_al_entry = (ATTR_LIST_ENTRY*)((u8*)al_entry +
     le16_to_cpu(al_entry->length));
   if (le32_to_cpu(al_entry->type) > le32_to_cpu(AT_DATA))
    goto em_put_err_out;
   if (AT_DATA != al_entry->type)
    continue;

   if (al_entry->name_length)
    goto em_put_err_out;

   if (al_entry->lowest_vcn)
    goto em_put_err_out;

   if (MREF_LE(al_entry->mft_reference) != vi->i_ino) {

    ntfs_error(sb, "BUG: The first $DATA extent "
      "of $MFT is not in the base "
      "mft record. Please report "
      "you saw this message to "
      "linux-ntfs-dev@lists."
      "sourceforge.net");
    goto put_err_out;
   } else {

    if (MSEQNO_LE(al_entry->mft_reference) !=
      ni->seq_no)
     goto em_put_err_out;

    break;
   }
  }
 }

 ntfs_attr_reinit_search_ctx(ctx);


 a = ((void*)0);
 next_vcn = last_vcn = highest_vcn = 0;
 while (!(err = ntfs_attr_lookup(AT_DATA, ((void*)0), 0, 0, next_vcn, ((void*)0), 0,
   ctx))) {
  runlist_element *nrl;


  a = ctx->attr;

  if (!a->non_resident) {
   ntfs_error(sb, "$MFT must be non-resident but a "
     "resident extent was found. $MFT is "
     "corrupt. Run chkdsk.");
   goto put_err_out;
  }

  if (a->flags & ATTR_COMPRESSION_MASK ||
    a->flags & ATTR_IS_ENCRYPTED ||
    a->flags & ATTR_IS_SPARSE) {
   ntfs_error(sb, "$MFT must be uncompressed, "
     "non-sparse, and unencrypted but a "
     "compressed/sparse/encrypted extent "
     "was found. $MFT is corrupt. Run "
     "chkdsk.");
   goto put_err_out;
  }






  nrl = ntfs_mapping_pairs_decompress(vol, a, ni->runlist.rl);
  if (IS_ERR(nrl)) {
   ntfs_error(sb, "ntfs_mapping_pairs_decompress() "
     "failed with error code %ld.  $MFT is "
     "corrupt.", PTR_ERR(nrl));
   goto put_err_out;
  }
  ni->runlist.rl = nrl;


  if (!next_vcn) {
   if (a->data.non_resident.lowest_vcn) {
    ntfs_error(sb, "First extent of $DATA "
      "attribute has non zero "
      "lowest_vcn. $MFT is corrupt. "
      "You should run chkdsk.");
    goto put_err_out;
   }

   last_vcn = sle64_to_cpu(
     a->data.non_resident.allocated_size)
     >> vol->cluster_size_bits;

   vi->i_size = sle64_to_cpu(
     a->data.non_resident.data_size);
   ni->initialized_size = sle64_to_cpu(
     a->data.non_resident.initialized_size);
   ni->allocated_size = sle64_to_cpu(
     a->data.non_resident.allocated_size);




   if ((vi->i_size >> vol->mft_record_size_bits) >=
     (1ULL << 32)) {
    ntfs_error(sb, "$MFT is too big! Aborting.");
    goto put_err_out;
   }
   ntfs_read_locked_inode(vi);
   if (is_bad_inode(vi)) {
    ntfs_error(sb, "ntfs_read_inode() of $MFT "
      "failed. BUG or corrupt $MFT. "
      "Run chkdsk and if no errors "
      "are found, please report you "
      "saw this message to "
      "linux-ntfs-dev@lists."
      "sourceforge.net");
    ntfs_attr_put_search_ctx(ctx);

    ntfs_free(m);
    return -1;
   }





   vi->i_uid = GLOBAL_ROOT_UID;
   vi->i_gid = GLOBAL_ROOT_GID;

   vi->i_mode = S_IFREG;

   vi->i_op = &ntfs_empty_inode_ops;
   vi->i_fop = &ntfs_empty_file_ops;
  }


  highest_vcn = sle64_to_cpu(a->data.non_resident.highest_vcn);
  next_vcn = highest_vcn + 1;


  if (next_vcn <= 0)
   break;


  if (next_vcn < sle64_to_cpu(
    a->data.non_resident.lowest_vcn)) {
   ntfs_error(sb, "$MFT has corrupt attribute list "
     "attribute. Run chkdsk.");
   goto put_err_out;
  }
 }
 if (err != -ENOENT) {
  ntfs_error(sb, "Failed to lookup $MFT/$DATA attribute extent. "
    "$MFT is corrupt. Run chkdsk.");
  goto put_err_out;
 }
 if (!a) {
  ntfs_error(sb, "$MFT/$DATA attribute not found. $MFT is "
    "corrupt. Run chkdsk.");
  goto put_err_out;
 }
 if (highest_vcn && highest_vcn != last_vcn - 1) {
  ntfs_error(sb, "Failed to load the complete runlist for "
    "$MFT/$DATA. Driver bug or corrupt $MFT. "
    "Run chkdsk.");
  ntfs_debug("highest_vcn = 0x%llx, last_vcn - 1 = 0x%llx",
    (unsigned long long)highest_vcn,
    (unsigned long long)last_vcn - 1);
  goto put_err_out;
 }
 ntfs_attr_put_search_ctx(ctx);
 ntfs_debug("Done.");
 ntfs_free(m);





 lockdep_set_class(&ni->runlist.lock, &mft_ni_runlist_lock_key);
 lockdep_set_class(&ni->mrec_lock, &mft_ni_mrec_lock_key);

 return 0;

em_put_err_out:
 ntfs_error(sb, "Couldn't find first extent of $DATA attribute in "
   "attribute list. $MFT is corrupt. Run chkdsk.");
put_err_out:
 ntfs_attr_put_search_ctx(ctx);
err_out:
 ntfs_error(sb, "Failed. Marking inode as bad.");
 make_bad_inode(vi);
 ntfs_free(m);
 return -1;
}
