
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_copy {int cp_cb; int cp_clp; int fh; int nfserr; int cp_res; } ;


 int GFP_KERNEL ;
 int NFSPROC4_CLNT_CB_OFFLOAD ;
 int cleanup_async_copy (struct nfsd4_copy*) ;
 struct nfsd4_copy* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int nfsd4_cb_offload_ops ;
 int nfsd4_do_copy (struct nfsd4_copy*,int ) ;
 int nfsd4_init_cb (int *,int ,int *,int ) ;
 int nfsd4_run_cb (int *) ;

__attribute__((used)) static int nfsd4_do_async_copy(void *data)
{
 struct nfsd4_copy *copy = (struct nfsd4_copy *)data;
 struct nfsd4_copy *cb_copy;

 copy->nfserr = nfsd4_do_copy(copy, 0);
 cb_copy = kzalloc(sizeof(struct nfsd4_copy), GFP_KERNEL);
 if (!cb_copy)
  goto out;
 memcpy(&cb_copy->cp_res, &copy->cp_res, sizeof(copy->cp_res));
 cb_copy->cp_clp = copy->cp_clp;
 cb_copy->nfserr = copy->nfserr;
 memcpy(&cb_copy->fh, &copy->fh, sizeof(copy->fh));
 nfsd4_init_cb(&cb_copy->cp_cb, cb_copy->cp_clp,
   &nfsd4_cb_offload_ops, NFSPROC4_CLNT_CB_OFFLOAD);
 nfsd4_run_cb(&cb_copy->cp_cb);
out:
 cleanup_async_copy(copy);
 return 0;
}
