
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cred {int usage; } ;
struct TYPE_2__ {struct cred* cred; } ;


 int alter_cred_subscribers (struct cred const*,int) ;
 int atomic_read (int *) ;
 TYPE_1__* current ;
 int get_new_cred (struct cred*) ;
 int kdebug (char*,struct cred const*,int ,int ) ;
 int rcu_assign_pointer (struct cred*,struct cred const*) ;
 int read_cred_subscribers (struct cred const*) ;
 int validate_creds (struct cred const*) ;

const struct cred *override_creds(const struct cred *new)
{
 const struct cred *old = current->cred;

 kdebug("override_creds(%p{%d,%d})", new,
        atomic_read(&new->usage),
        read_cred_subscribers(new));

 validate_creds(old);
 validate_creds(new);
 get_new_cred((struct cred *)new);
 alter_cred_subscribers(new, 1);
 rcu_assign_pointer(current->cred, new);
 alter_cred_subscribers(old, -1);

 kdebug("override_creds() = %p{%d,%d}", old,
        atomic_read(&old->usage),
        read_cred_subscribers(old));
 return old;
}
