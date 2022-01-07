
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct aa_ns {int rawdata_list; int revision; int lock; } ;
struct aa_loaddata {int list; int ns; int size; struct dentry** dents; int name; } ;
struct TYPE_2__ {int i_size; } ;


 size_t AAFS_LOADDATA_ABI ;
 size_t AAFS_LOADDATA_DATA ;
 size_t AAFS_LOADDATA_DIR ;
 size_t AAFS_LOADDATA_HASH ;
 size_t AAFS_LOADDATA_REVISION ;
 int AA_BUG (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int S_IFREG ;
 scalar_t__ aa_g_hash_policy ;
 int aa_get_ns (struct aa_ns*) ;
 struct dentry* aafs_create_dir (int ,int ) ;
 struct dentry* aafs_create_file (char*,int,struct dentry*,struct aa_loaddata*,int *) ;
 TYPE_1__* d_inode (struct dentry*) ;
 int kasprintf (int ,char*,int ) ;
 int list_add (int *,int *) ;
 int mutex_is_locked (int *) ;
 int ns_subdata_dir (struct aa_ns*) ;
 int rawdata_fops ;
 int remove_rawdata_dents (struct aa_loaddata*) ;
 int seq_rawdata_abi_fops ;
 int seq_rawdata_hash_fops ;
 int seq_rawdata_revision_fops ;

int __aa_fs_create_rawdata(struct aa_ns *ns, struct aa_loaddata *rawdata)
{
 struct dentry *dent, *dir;

 AA_BUG(!ns);
 AA_BUG(!rawdata);
 AA_BUG(!mutex_is_locked(&ns->lock));
 AA_BUG(!ns_subdata_dir(ns));






 rawdata->name = kasprintf(GFP_KERNEL, "%ld", ns->revision);
 if (!rawdata->name)
  return -ENOMEM;

 dir = aafs_create_dir(rawdata->name, ns_subdata_dir(ns));
 if (IS_ERR(dir))

  return PTR_ERR(dir);
 rawdata->dents[AAFS_LOADDATA_DIR] = dir;

 dent = aafs_create_file("abi", S_IFREG | 0444, dir, rawdata,
          &seq_rawdata_abi_fops);
 if (IS_ERR(dent))
  goto fail;
 rawdata->dents[AAFS_LOADDATA_ABI] = dent;

 dent = aafs_create_file("revision", S_IFREG | 0444, dir, rawdata,
          &seq_rawdata_revision_fops);
 if (IS_ERR(dent))
  goto fail;
 rawdata->dents[AAFS_LOADDATA_REVISION] = dent;

 if (aa_g_hash_policy) {
  dent = aafs_create_file("sha1", S_IFREG | 0444, dir,
           rawdata, &seq_rawdata_hash_fops);
  if (IS_ERR(dent))
   goto fail;
  rawdata->dents[AAFS_LOADDATA_HASH] = dent;
 }

 dent = aafs_create_file("raw_data", S_IFREG | 0444,
          dir, rawdata, &rawdata_fops);
 if (IS_ERR(dent))
  goto fail;
 rawdata->dents[AAFS_LOADDATA_DATA] = dent;
 d_inode(dent)->i_size = rawdata->size;

 rawdata->ns = aa_get_ns(ns);
 list_add(&rawdata->list, &ns->rawdata_list);


 return 0;

fail:
 remove_rawdata_dents(rawdata);

 return PTR_ERR(dent);
}
