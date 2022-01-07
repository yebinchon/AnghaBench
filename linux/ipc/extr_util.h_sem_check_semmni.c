
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_namespace {scalar_t__* sem_ctls; } ;


 int ERANGE ;
 scalar_t__ ipc_mni ;

__attribute__((used)) static inline int sem_check_semmni(struct ipc_namespace *ns) {




 return ((ns->sem_ctls[3] < 0) || (ns->sem_ctls[3] > ipc_mni))
  ? -ERANGE : 0;
}
