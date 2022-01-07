
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * dir_attr; int * fattr; int * fh; } ;
struct TYPE_3__ {TYPE_2__* rpc_resp; int * rpc_argp; } ;
struct nfs3_createdata {TYPE_2__ res; int dir_attr; int fattr; int fh; TYPE_1__ msg; int arg; } ;


 int GFP_KERNEL ;
 struct nfs3_createdata* kzalloc (int,int ) ;
 int nfs_fattr_init (int *) ;

__attribute__((used)) static struct nfs3_createdata *nfs3_alloc_createdata(void)
{
 struct nfs3_createdata *data;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (data != ((void*)0)) {
  data->msg.rpc_argp = &data->arg;
  data->msg.rpc_resp = &data->res;
  data->res.fh = &data->fh;
  data->res.fattr = &data->fattr;
  data->res.dir_attr = &data->dir_attr;
  nfs_fattr_init(data->res.fattr);
  nfs_fattr_init(data->res.dir_attr);
 }
 return data;
}
