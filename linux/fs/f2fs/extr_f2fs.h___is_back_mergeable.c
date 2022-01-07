
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_info {int dummy; } ;


 int __is_extent_mergeable (struct extent_info*,struct extent_info*) ;

__attribute__((used)) static inline bool __is_back_mergeable(struct extent_info *cur,
      struct extent_info *back)
{
 return __is_extent_mergeable(back, cur);
}
