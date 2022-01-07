
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_xdr_opaque_data {struct nfs4_flexfile_layoutreturn_args* data; } ;
struct nfs4_flexfile_layoutreturn_args {int * pages; int num_dev; int devinfo; int errors; } ;


 int ff_layout_free_ds_ioerr (int *) ;
 int ff_layout_free_iostats_array (int ,int ) ;
 int kfree (struct nfs4_flexfile_layoutreturn_args*) ;
 int put_page (int ) ;

__attribute__((used)) static void
ff_layout_free_layoutreturn(struct nfs4_xdr_opaque_data *args)
{
 struct nfs4_flexfile_layoutreturn_args *ff_args;

 if (!args->data)
  return;
 ff_args = args->data;
 args->data = ((void*)0);

 ff_layout_free_ds_ioerr(&ff_args->errors);
 ff_layout_free_iostats_array(ff_args->devinfo, ff_args->num_dev);

 put_page(ff_args->pages[0]);
 kfree(ff_args);
}
