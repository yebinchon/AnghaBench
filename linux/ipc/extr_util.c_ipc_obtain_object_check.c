
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;
struct ipc_ids {int dummy; } ;


 int EINVAL ;
 struct kern_ipc_perm* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct kern_ipc_perm*) ;
 scalar_t__ ipc_checkid (struct kern_ipc_perm*,int) ;
 struct kern_ipc_perm* ipc_obtain_object_idr (struct ipc_ids*,int) ;

struct kern_ipc_perm *ipc_obtain_object_check(struct ipc_ids *ids, int id)
{
 struct kern_ipc_perm *out = ipc_obtain_object_idr(ids, id);

 if (IS_ERR(out))
  goto out;

 if (ipc_checkid(out, id))
  return ERR_PTR(-EINVAL);
out:
 return out;
}
