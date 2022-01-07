
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable_compare_arg {struct frag_v4_compare_key* key; } ;
struct inet_frag_queue {int key; } ;
struct frag_v4_compare_key {int dummy; } ;


 int memcmp (int *,struct frag_v4_compare_key const*,int) ;

__attribute__((used)) static int ip4_obj_cmpfn(struct rhashtable_compare_arg *arg, const void *ptr)
{
 const struct frag_v4_compare_key *key = arg->key;
 const struct inet_frag_queue *fq = ptr;

 return !!memcmp(&fq->key, key, sizeof(*key));
}
