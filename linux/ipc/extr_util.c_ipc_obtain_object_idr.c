
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;
struct ipc_ids {int ipcs_idr; } ;


 int EINVAL ;
 struct kern_ipc_perm* ERR_PTR (int ) ;
 struct kern_ipc_perm* idr_find (int *,int) ;
 int ipcid_to_idx (int) ;

struct kern_ipc_perm *ipc_obtain_object_idr(struct ipc_ids *ids, int id)
{
 struct kern_ipc_perm *out;
 int idx = ipcid_to_idx(id);

 out = idr_find(&ids->ipcs_idr, idx);
 if (!out)
  return ERR_PTR(-EINVAL);

 return out;
}
