
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs4_layoutreturn_args {TYPE_2__* ld_private; TYPE_1__* inode; int range; int layout; } ;
struct nfs4_flexfile_layoutreturn_args {int * devinfo; int num_dev; int errors; int num_errors; int * pages; } ;
struct nfs4_flexfile_layout {int generic_hdr; } ;
struct TYPE_4__ {struct nfs4_flexfile_layoutreturn_args* data; int * ops; } ;
struct TYPE_3__ {int i_lock; } ;


 int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int FF_LAYOUTRETURN_MAXERR ;
 struct nfs4_flexfile_layout* FF_LAYOUT_FROM_HDR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int alloc_page (int ) ;
 int ff_layout_fetch_ds_ioerr (int ,int *,int *,int ) ;
 int ff_layout_mirror_prepare_stats (int *,int *,int ) ;
 int kfree (struct nfs4_flexfile_layoutreturn_args*) ;
 struct nfs4_flexfile_layoutreturn_args* kmalloc (int,int ) ;
 int layoutreturn_ops ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
ff_layout_prepare_layoutreturn(struct nfs4_layoutreturn_args *args)
{
 struct nfs4_flexfile_layoutreturn_args *ff_args;
 struct nfs4_flexfile_layout *ff_layout = FF_LAYOUT_FROM_HDR(args->layout);

 ff_args = kmalloc(sizeof(*ff_args), GFP_KERNEL);
 if (!ff_args)
  goto out_nomem;
 ff_args->pages[0] = alloc_page(GFP_KERNEL);
 if (!ff_args->pages[0])
  goto out_nomem_free;

 INIT_LIST_HEAD(&ff_args->errors);
 ff_args->num_errors = ff_layout_fetch_ds_ioerr(args->layout,
   &args->range, &ff_args->errors,
   FF_LAYOUTRETURN_MAXERR);

 spin_lock(&args->inode->i_lock);
 ff_args->num_dev = ff_layout_mirror_prepare_stats(&ff_layout->generic_hdr,
   &ff_args->devinfo[0], ARRAY_SIZE(ff_args->devinfo));
 spin_unlock(&args->inode->i_lock);

 args->ld_private->ops = &layoutreturn_ops;
 args->ld_private->data = ff_args;
 return 0;
out_nomem_free:
 kfree(ff_args);
out_nomem:
 return -ENOMEM;
}
