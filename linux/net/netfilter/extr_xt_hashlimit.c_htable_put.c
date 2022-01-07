
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_hashlimit_htable {scalar_t__ use; int node; } ;


 int hashlimit_mutex ;
 int hlist_del (int *) ;
 int htable_destroy (struct xt_hashlimit_htable*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void htable_put(struct xt_hashlimit_htable *hinfo)
{
 mutex_lock(&hashlimit_mutex);
 if (--hinfo->use == 0) {
  hlist_del(&hinfo->node);
  htable_destroy(hinfo);
 }
 mutex_unlock(&hashlimit_mutex);
}
