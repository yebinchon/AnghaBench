
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
struct xfrm_user_tmpl {int aalgos; int ealgos; int calgos; int family; int optional; int share; int mode; int reqid; int saddr; int id; } ;
struct xfrm_tmpl {int aalgos; int ealgos; int calgos; int allalgs; int encap_family; int optional; int share; int mode; int reqid; int saddr; int id; } ;
struct xfrm_policy {int xfrm_nr; struct xfrm_tmpl* xfrm_vec; } ;
struct xfrm_id {int dummy; } ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void copy_templates(struct xfrm_policy *xp, struct xfrm_user_tmpl *ut,
      int nr)
{
 int i;

 xp->xfrm_nr = nr;
 for (i = 0; i < nr; i++, ut++) {
  struct xfrm_tmpl *t = &xp->xfrm_vec[i];

  memcpy(&t->id, &ut->id, sizeof(struct xfrm_id));
  memcpy(&t->saddr, &ut->saddr,
         sizeof(xfrm_address_t));
  t->reqid = ut->reqid;
  t->mode = ut->mode;
  t->share = ut->share;
  t->optional = ut->optional;
  t->aalgos = ut->aalgos;
  t->ealgos = ut->ealgos;
  t->calgos = ut->calgos;

  t->allalgs = !~(t->aalgos & t->ealgos & t->calgos);
  t->encap_family = ut->family;
 }
}
