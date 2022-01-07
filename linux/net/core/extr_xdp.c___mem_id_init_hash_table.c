
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct rhashtable*) ;
 struct rhashtable* kzalloc (int,int ) ;
 struct rhashtable* mem_id_ht ;
 int mem_id_init ;
 int mem_id_rht_params ;
 int rhashtable_init (struct rhashtable*,int *) ;
 int smp_mb () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __mem_id_init_hash_table(void)
{
 struct rhashtable *rht;
 int ret;

 if (unlikely(mem_id_init))
  return 0;

 rht = kzalloc(sizeof(*rht), GFP_KERNEL);
 if (!rht)
  return -ENOMEM;

 ret = rhashtable_init(rht, &mem_id_rht_params);
 if (ret < 0) {
  kfree(rht);
  return ret;
 }
 mem_id_ht = rht;
 smp_mb();
 mem_id_init = 1;

 return 0;
}
