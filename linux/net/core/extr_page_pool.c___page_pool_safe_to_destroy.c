
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_pool {int dummy; } ;
typedef scalar_t__ s32 ;


 int WARN (int,char*,scalar_t__) ;
 scalar_t__ page_pool_inflight (struct page_pool*) ;

__attribute__((used)) static bool __page_pool_safe_to_destroy(struct page_pool *pool)
{
 s32 inflight = page_pool_inflight(pool);


 WARN(inflight < 0, "Negative(%d) inflight packet-pages", inflight);

 return (inflight == 0);
}
