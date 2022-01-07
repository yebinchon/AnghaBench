
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stid {char sc_type; int sc_count; } ;
struct nfs4_client {int cl_lock; } ;
typedef int stateid_t ;


 struct nfs4_stid* find_stateid_locked (struct nfs4_client*,int *) ;
 int refcount_inc (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nfs4_stid *
find_stateid_by_type(struct nfs4_client *cl, stateid_t *t, char typemask)
{
 struct nfs4_stid *s;

 spin_lock(&cl->cl_lock);
 s = find_stateid_locked(cl, t);
 if (s != ((void*)0)) {
  if (typemask & s->sc_type)
   refcount_inc(&s->sc_count);
  else
   s = ((void*)0);
 }
 spin_unlock(&cl->cl_lock);
 return s;
}
