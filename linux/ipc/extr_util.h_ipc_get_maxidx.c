
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_ids {scalar_t__ in_use; int max_idx; } ;


 scalar_t__ ipc_mni ;

__attribute__((used)) static inline int ipc_get_maxidx(struct ipc_ids *ids)
{
 if (ids->in_use == 0)
  return -1;

 if (ids->in_use == ipc_mni)
  return ipc_mni - 1;

 return ids->max_idx;
}
