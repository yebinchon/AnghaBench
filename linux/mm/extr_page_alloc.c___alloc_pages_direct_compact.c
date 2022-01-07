
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct alloc_context {int dummy; } ;
typedef int gfp_t ;
typedef enum compact_result { ____Placeholder_compact_result } compact_result ;
typedef enum compact_priority { ____Placeholder_compact_priority } compact_priority ;


 int COMPACT_SKIPPED ;

__attribute__((used)) static inline struct page *
__alloc_pages_direct_compact(gfp_t gfp_mask, unsigned int order,
  unsigned int alloc_flags, const struct alloc_context *ac,
  enum compact_priority prio, enum compact_result *compact_result)
{
 *compact_result = COMPACT_SKIPPED;
 return ((void*)0);
}
