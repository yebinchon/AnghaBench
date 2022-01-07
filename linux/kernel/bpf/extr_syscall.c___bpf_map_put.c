
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int work; int btf; int refcnt; } ;


 int INIT_WORK (int *,int ) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int bpf_map_free_deferred ;
 int bpf_map_free_id (struct bpf_map*,int) ;
 int btf_put (int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static void __bpf_map_put(struct bpf_map *map, bool do_idr_lock)
{
 if (atomic_dec_and_test(&map->refcnt)) {

  bpf_map_free_id(map, do_idr_lock);
  btf_put(map->btf);
  INIT_WORK(&map->work, bpf_map_free_deferred);
  schedule_work(&map->work);
 }
}
