
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int deleted; } ;



__attribute__((used)) static inline bool ipc_valid_object(struct kern_ipc_perm *perm)
{
 return !perm->deleted;
}
