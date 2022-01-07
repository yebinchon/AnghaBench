
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_algo_list {int entries; int mask; int type; struct xfrm_algo_desc* algs; } ;
struct xfrm_algo_desc {int available; int name; } ;


 int crypto_has_alg (int ,int ,int ) ;

__attribute__((used)) static struct xfrm_algo_desc *xfrm_find_algo(
 const struct xfrm_algo_list *algo_list,
 int match(const struct xfrm_algo_desc *entry, const void *data),
 const void *data, int probe)
{
 struct xfrm_algo_desc *list = algo_list->algs;
 int i, status;

 for (i = 0; i < algo_list->entries; i++) {
  if (!match(list + i, data))
   continue;

  if (list[i].available)
   return &list[i];

  if (!probe)
   break;

  status = crypto_has_alg(list[i].name, algo_list->type,
     algo_list->mask);
  if (!status)
   break;

  list[i].available = status;
  return &list[i];
 }
 return ((void*)0);
}
