
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nfs_writeverf {int dummy; } ;
struct nfs_commitres {TYPE_3__* verf; } ;
struct TYPE_5__ {int verifier; } ;
struct TYPE_6__ {TYPE_1__ verifier; int count; } ;
struct nfs42_copy_res {TYPE_2__ write_res; } ;
struct file {int dummy; } ;
typedef int loff_t ;
struct TYPE_7__ {int verifier; } ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_NOFS ;
 int dprintk (char*) ;
 int kfree (TYPE_3__*) ;
 TYPE_3__* kzalloc (int,int ) ;
 int nfs4_proc_commit (struct file*,int ,int ,struct nfs_commitres*) ;
 scalar_t__ nfs_write_verifier_cmp (int *,int *) ;

__attribute__((used)) static int process_copy_commit(struct file *dst, loff_t pos_dst,
          struct nfs42_copy_res *res)
{
 struct nfs_commitres cres;
 int status = -ENOMEM;

 cres.verf = kzalloc(sizeof(struct nfs_writeverf), GFP_NOFS);
 if (!cres.verf)
  goto out;

 status = nfs4_proc_commit(dst, pos_dst, res->write_res.count, &cres);
 if (status)
  goto out_free;
 if (nfs_write_verifier_cmp(&res->write_res.verifier.verifier,
        &cres.verf->verifier)) {
  dprintk("commit verf differs from copy verf\n");
  status = -EAGAIN;
 }
out_free:
 kfree(cres.verf);
out:
 return status;
}
