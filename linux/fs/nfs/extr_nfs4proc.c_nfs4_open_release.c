
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs4_state {int dummy; } ;
struct TYPE_4__ {int fmode; } ;
struct TYPE_3__ {int rflags; } ;
struct nfs4_opendata {scalar_t__ rpc_status; TYPE_2__ o_arg; TYPE_1__ o_res; int rpc_done; int cancelled; } ;


 int IS_ERR (struct nfs4_state*) ;
 int NFS4_OPEN_RESULT_CONFIRM ;
 int nfs4_close_state (struct nfs4_state*,int ) ;
 int nfs4_opendata_put (struct nfs4_opendata*) ;
 struct nfs4_state* nfs4_opendata_to_nfs4_state (struct nfs4_opendata*) ;

__attribute__((used)) static void nfs4_open_release(void *calldata)
{
 struct nfs4_opendata *data = calldata;
 struct nfs4_state *state = ((void*)0);


 if (!data->cancelled)
  goto out_free;

 if (data->rpc_status != 0 || !data->rpc_done)
  goto out_free;

 if (data->o_res.rflags & NFS4_OPEN_RESULT_CONFIRM)
  goto out_free;
 state = nfs4_opendata_to_nfs4_state(data);
 if (!IS_ERR(state))
  nfs4_close_state(state, data->o_arg.fmode);
out_free:
 nfs4_opendata_put(data);
}
