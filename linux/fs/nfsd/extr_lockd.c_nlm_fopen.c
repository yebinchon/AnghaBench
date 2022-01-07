
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct TYPE_2__ {int fh_base; int fh_size; } ;
struct svc_fh {int * fh_export; TYPE_1__ fh_handle; } ;
struct nfs_fh {int size; int data; } ;
struct file {int dummy; } ;
typedef int __be32 ;


 int NFSD_MAY_LOCK ;
 int S_IFREG ;
 int fh_init (struct svc_fh*,int ) ;
 int fh_put (struct svc_fh*) ;
 int memcpy (char*,int ,int ) ;

 int nfsd_open (struct svc_rqst*,struct svc_fh*,int ,int ,struct file**) ;


 int nlm_drop_reply ;
 int nlm_failed ;
 int nlm_stale_fh ;

__attribute__((used)) static __be32
nlm_fopen(struct svc_rqst *rqstp, struct nfs_fh *f, struct file **filp)
{
 __be32 nfserr;
 struct svc_fh fh;


 fh_init(&fh,0);
 fh.fh_handle.fh_size = f->size;
 memcpy((char*)&fh.fh_handle.fh_base, f->data, f->size);
 fh.fh_export = ((void*)0);

 nfserr = nfsd_open(rqstp, &fh, S_IFREG, NFSD_MAY_LOCK, filp);
 fh_put(&fh);



 switch (nfserr) {
 case 130:
  return 0;
 case 129:
  return nlm_drop_reply;
 case 128:
  return nlm_stale_fh;
 default:
  return nlm_failed;
 }
}
