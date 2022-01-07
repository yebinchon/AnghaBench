
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct selinux_state {TYPE_1__* ss; int initialized; } ;
struct policydb {int dummy; } ;
struct policy_file {size_t len; void* data; } ;
struct TYPE_2__ {int policy_rwlock; struct policydb policydb; } ;


 int EINVAL ;
 int ENOMEM ;
 int policydb_write (struct policydb*,struct policy_file*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 size_t security_policydb_len (struct selinux_state*) ;
 void* vmalloc_user (size_t) ;

int security_read_policy(struct selinux_state *state,
    void **data, size_t *len)
{
 struct policydb *policydb = &state->ss->policydb;
 int rc;
 struct policy_file fp;

 if (!state->initialized)
  return -EINVAL;

 *len = security_policydb_len(state);

 *data = vmalloc_user(*len);
 if (!*data)
  return -ENOMEM;

 fp.data = *data;
 fp.len = *len;

 read_lock(&state->ss->policy_rwlock);
 rc = policydb_write(policydb, &fp);
 read_unlock(&state->ss->policy_rwlock);

 if (rc)
  return rc;

 *len = (unsigned long)fp.data - (unsigned long)*data;
 return 0;

}
