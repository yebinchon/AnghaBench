
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_frag_queue {int key; } ;
struct frag_lowpan_compare_key {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int memcpy (int *,struct frag_lowpan_compare_key const*,int) ;

__attribute__((used)) static void lowpan_frag_init(struct inet_frag_queue *q, const void *a)
{
 const struct frag_lowpan_compare_key *key = a;

 BUILD_BUG_ON(sizeof(*key) > sizeof(q->key));
 memcpy(&q->key, key, sizeof(*key));
}
