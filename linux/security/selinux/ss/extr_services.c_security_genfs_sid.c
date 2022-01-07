
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct selinux_state {TYPE_1__* ss; } ;
struct TYPE_2__ {int policy_rwlock; } ;


 int __security_genfs_sid (struct selinux_state*,char const*,char*,int ,int *) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

int security_genfs_sid(struct selinux_state *state,
         const char *fstype,
         char *path,
         u16 orig_sclass,
         u32 *sid)
{
 int retval;

 read_lock(&state->ss->policy_rwlock);
 retval = __security_genfs_sid(state, fstype, path, orig_sclass, sid);
 read_unlock(&state->ss->policy_rwlock);
 return retval;
}
