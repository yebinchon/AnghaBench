
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; scalar_t__ len; } ;
struct nfs4_client {TYPE_1__ cl_name; } ;


 int dprintk (char*,int,int ,int) ;

__attribute__((used)) static void warn_no_callback_path(struct nfs4_client *clp, int reason)
{
 dprintk("NFSD: warning: no callback path to client %.*s: error %d\n",
  (int)clp->cl_name.len, clp->cl_name.data, reason);
}
