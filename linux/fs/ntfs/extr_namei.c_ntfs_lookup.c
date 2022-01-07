
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct qstr {unsigned int len; TYPE_5__* name; int hash; } ;
struct TYPE_24__ {int len; int name; } ;
struct inode {TYPE_1__ d_name; int i_ino; int i_sb; } ;
struct dentry {TYPE_1__ d_name; int i_ino; int i_sb; } ;
typedef int ntfschar ;
struct TYPE_27__ {int sb; } ;
typedef TYPE_4__ ntfs_volume ;
struct TYPE_28__ {scalar_t__ type; int len; int name; } ;
typedef TYPE_5__ ntfs_name ;
struct TYPE_29__ {scalar_t__ seq_no; } ;
typedef TYPE_6__ ntfs_inode ;
struct TYPE_30__ {TYPE_9__* attr; } ;
typedef TYPE_7__ ntfs_attr_search_ctx ;
struct TYPE_25__ {int value_offset; int value_length; } ;
struct TYPE_26__ {TYPE_2__ resident; } ;
struct TYPE_32__ {TYPE_3__ data; int length; scalar_t__ flags; scalar_t__ non_resident; } ;
struct TYPE_31__ {scalar_t__ file_name_type; int file_name_length; int file_name; } ;
typedef int MFT_REF ;
typedef struct inode MFT_RECORD ;
typedef TYPE_8__ FILE_NAME_ATTR ;
typedef TYPE_9__ ATTR_RECORD ;


 int AT_FILE_NAME ;
 int EIO ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int ENOMEM ;
 struct inode* ERR_CAST (struct inode*) ;
 struct inode* ERR_PTR (int) ;
 unsigned long FILE_MFT ;
 scalar_t__ FILE_NAME_DOS ;
 scalar_t__ FILE_NAME_WIN32 ;
 scalar_t__ IS_ERR (struct inode*) ;
 int IS_ERR_MREF (int ) ;
 unsigned long MREF (int ) ;
 int MREF_ERR (int ) ;
 scalar_t__ MSEQNO (int ) ;
 TYPE_6__* NTFS_I (struct inode*) ;
 TYPE_4__* NTFS_SB (int ) ;
 int PTR_ERR (struct inode*) ;
 int d_add (struct inode*,int *) ;
 struct inode* d_add_ci (struct inode*,struct inode*,struct qstr*) ;
 struct inode* d_splice_alias (struct inode*,struct inode*) ;
 int full_name_hash (struct inode*,TYPE_5__*,unsigned int) ;
 int iput (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int kfree (TYPE_5__*) ;
 int kmem_cache_free (int ,int *) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 struct inode* map_mft_record (TYPE_6__*) ;
 TYPE_7__* ntfs_attr_get_search_ctx (TYPE_6__*,struct inode*) ;
 int ntfs_attr_lookup (int ,int *,int ,int ,int ,int *,int ,TYPE_7__*) ;
 int ntfs_attr_put_search_ctx (TYPE_7__*) ;
 int ntfs_debug (char*,...) ;
 int ntfs_error (int ,char*,...) ;
 struct inode* ntfs_iget (int ,unsigned long) ;
 int ntfs_lookup_inode_by_name (TYPE_6__*,int *,int,TYPE_5__**) ;
 int ntfs_name_cache ;
 int ntfs_nlstoucs (TYPE_4__*,int ,int ,int **) ;
 scalar_t__ ntfs_ucstonls (TYPE_4__*,int *,int,unsigned char**,int ) ;
 scalar_t__ unlikely (int) ;
 int unmap_mft_record (TYPE_6__*) ;

__attribute__((used)) static struct dentry *ntfs_lookup(struct inode *dir_ino, struct dentry *dent,
  unsigned int flags)
{
 ntfs_volume *vol = NTFS_SB(dir_ino->i_sb);
 struct inode *dent_inode;
 ntfschar *uname;
 ntfs_name *name = ((void*)0);
 MFT_REF mref;
 unsigned long dent_ino;
 int uname_len;

 ntfs_debug("Looking up %pd in directory inode 0x%lx.",
   dent, dir_ino->i_ino);

 uname_len = ntfs_nlstoucs(vol, dent->d_name.name, dent->d_name.len,
   &uname);
 if (uname_len < 0) {
  if (uname_len != -ENAMETOOLONG)
   ntfs_error(vol->sb, "Failed to convert name to "
     "Unicode.");
  return ERR_PTR(uname_len);
 }
 mref = ntfs_lookup_inode_by_name(NTFS_I(dir_ino), uname, uname_len,
   &name);
 kmem_cache_free(ntfs_name_cache, uname);
 if (!IS_ERR_MREF(mref)) {
  dent_ino = MREF(mref);
  ntfs_debug("Found inode 0x%lx. Calling ntfs_iget.", dent_ino);
  dent_inode = ntfs_iget(vol->sb, dent_ino);
  if (!IS_ERR(dent_inode)) {

   if (is_bad_inode(dent_inode) || MSEQNO(mref) ==
     NTFS_I(dent_inode)->seq_no ||
     dent_ino == FILE_MFT) {

    if (!name) {
     ntfs_debug("Done.  (Case 1.)");
     return d_splice_alias(dent_inode, dent);
    }




    goto handle_name;
   }
   ntfs_error(vol->sb, "Found stale reference to inode "
     "0x%lx (reference sequence number = "
     "0x%x, inode sequence number = 0x%x), "
     "returning -EIO. Run chkdsk.",
     dent_ino, MSEQNO(mref),
     NTFS_I(dent_inode)->seq_no);
   iput(dent_inode);
   dent_inode = ERR_PTR(-EIO);
  } else
   ntfs_error(vol->sb, "ntfs_iget(0x%lx) failed with "
     "error code %li.", dent_ino,
     PTR_ERR(dent_inode));
  kfree(name);

  return ERR_CAST(dent_inode);
 }

 if (MREF_ERR(mref) == -ENOENT) {
  ntfs_debug("Entry was not found, adding negative dentry.");

  d_add(dent, ((void*)0));
  ntfs_debug("Done.");
  return ((void*)0);
 }
 ntfs_error(vol->sb, "ntfs_lookup_ino_by_name() failed with error "
   "code %i.", -MREF_ERR(mref));
 return ERR_PTR(MREF_ERR(mref));

handle_name:
   {
 MFT_RECORD *m;
 ntfs_attr_search_ctx *ctx;
 ntfs_inode *ni = NTFS_I(dent_inode);
 int err;
 struct qstr nls_name;

 nls_name.name = ((void*)0);
 if (name->type != FILE_NAME_DOS) {
  ntfs_debug("Case 2.");
  nls_name.len = (unsigned)ntfs_ucstonls(vol,
    (ntfschar*)&name->name, name->len,
    (unsigned char**)&nls_name.name, 0);
  kfree(name);
 } else {
  FILE_NAME_ATTR *fn;

  ntfs_debug("Case 3.");
  kfree(name);


  ni = NTFS_I(dent_inode);
  m = map_mft_record(ni);
  if (IS_ERR(m)) {
   err = PTR_ERR(m);
   m = ((void*)0);
   ctx = ((void*)0);
   goto err_out;
  }
  ctx = ntfs_attr_get_search_ctx(ni, m);
  if (unlikely(!ctx)) {
   err = -ENOMEM;
   goto err_out;
  }
  do {
   ATTR_RECORD *a;
   u32 val_len;

   err = ntfs_attr_lookup(AT_FILE_NAME, ((void*)0), 0, 0, 0,
     ((void*)0), 0, ctx);
   if (unlikely(err)) {
    ntfs_error(vol->sb, "Inode corrupt: No WIN32 "
      "namespace counterpart to DOS "
      "file name. Run chkdsk.");
    if (err == -ENOENT)
     err = -EIO;
    goto err_out;
   }

   a = ctx->attr;
   if (a->non_resident || a->flags)
    goto eio_err_out;
   val_len = le32_to_cpu(a->data.resident.value_length);
   if (le16_to_cpu(a->data.resident.value_offset) +
     val_len > le32_to_cpu(a->length))
    goto eio_err_out;
   fn = (FILE_NAME_ATTR*)((u8*)ctx->attr + le16_to_cpu(
     ctx->attr->data.resident.value_offset));
   if ((u32)(fn->file_name_length * sizeof(ntfschar) +
     sizeof(FILE_NAME_ATTR)) > val_len)
    goto eio_err_out;
  } while (fn->file_name_type != FILE_NAME_WIN32);


  nls_name.len = (unsigned)ntfs_ucstonls(vol,
    (ntfschar*)&fn->file_name, fn->file_name_length,
    (unsigned char**)&nls_name.name, 0);

  ntfs_attr_put_search_ctx(ctx);
  unmap_mft_record(ni);
 }
 m = ((void*)0);
 ctx = ((void*)0);


 if ((signed)nls_name.len < 0) {
  err = (signed)nls_name.len;
  goto err_out;
 }
 nls_name.hash = full_name_hash(dent, nls_name.name, nls_name.len);

 dent = d_add_ci(dent, dent_inode, &nls_name);
 kfree(nls_name.name);
 return dent;

eio_err_out:
 ntfs_error(vol->sb, "Illegal file name attribute. Run chkdsk.");
 err = -EIO;
err_out:
 if (ctx)
  ntfs_attr_put_search_ctx(ctx);
 if (m)
  unmap_mft_record(ni);
 iput(dent_inode);
 ntfs_error(vol->sb, "Failed, returning error code %i.", err);
 return ERR_PTR(err);
   }
}
