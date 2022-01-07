
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct cred const cred ;
typedef int kernel_cap_t ;


 int PROCESS__SETCAP ;
 int SECCLASS_PROCESS ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int cred_sid (struct cred const*) ;
 int selinux_state ;

__attribute__((used)) static int selinux_capset(struct cred *new, const struct cred *old,
     const kernel_cap_t *effective,
     const kernel_cap_t *inheritable,
     const kernel_cap_t *permitted)
{
 return avc_has_perm(&selinux_state,
       cred_sid(old), cred_sid(new), SECCLASS_PROCESS,
       PROCESS__SETCAP, ((void*)0));
}
