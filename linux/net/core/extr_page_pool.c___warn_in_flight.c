
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct page_pool {int pages_state_hold_cnt; int pages_state_release_cnt; } ;
typedef int s32 ;


 int READ_ONCE (int ) ;
 int WARN (int,char*,int ,int ,int ) ;
 int _distance (int ,int ) ;
 int atomic_read (int *) ;

__attribute__((used)) static void __warn_in_flight(struct page_pool *pool)
{
 u32 release_cnt = atomic_read(&pool->pages_state_release_cnt);
 u32 hold_cnt = READ_ONCE(pool->pages_state_hold_cnt);
 s32 distance;

 distance = _distance(hold_cnt, release_cnt);


 WARN(1, "Still in-flight pages:%d hold:%u released:%u",
      distance, hold_cnt, release_cnt);
}
