
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_callback {TYPE_1__* cb_ops; scalar_t__ cb_need_restart; } ;
struct TYPE_2__ {int (* release ) (struct nfsd4_callback*) ;} ;


 int nfsd4_run_cb (struct nfsd4_callback*) ;
 int stub1 (struct nfsd4_callback*) ;

__attribute__((used)) static void nfsd4_cb_release(void *calldata)
{
 struct nfsd4_callback *cb = calldata;

 if (cb->cb_need_restart)
  nfsd4_run_cb(cb);
 else
  cb->cb_ops->release(cb);

}
