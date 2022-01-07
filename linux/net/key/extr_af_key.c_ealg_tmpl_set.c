
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_tmpl {unsigned int ealgos; } ;
struct TYPE_2__ {unsigned int sadb_alg_id; } ;
struct xfrm_algo_desc {TYPE_1__ desc; } ;



__attribute__((used)) static inline int ealg_tmpl_set(const struct xfrm_tmpl *t,
    const struct xfrm_algo_desc *d)
{
 unsigned int id = d->desc.sadb_alg_id;

 if (id >= sizeof(t->ealgos) * 8)
  return 0;

 return (t->ealgos >> id) & 1;
}
