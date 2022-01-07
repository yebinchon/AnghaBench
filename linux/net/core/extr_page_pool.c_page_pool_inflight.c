
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct page_pool {int pages_state_hold_cnt; int pages_state_release_cnt; } ;
typedef int s32 ;


 int READ_ONCE (int ) ;
 int _distance (int ,int ) ;
 int atomic_read (int *) ;
 int trace_page_pool_inflight (struct page_pool*,int ,int ,int ) ;

__attribute__((used)) static s32 page_pool_inflight(struct page_pool *pool)
{
 u32 release_cnt = atomic_read(&pool->pages_state_release_cnt);
 u32 hold_cnt = READ_ONCE(pool->pages_state_hold_cnt);
 s32 distance;

 distance = _distance(hold_cnt, release_cnt);

 trace_page_pool_inflight(pool, distance, hold_cnt, release_cnt);
 return distance;
}
