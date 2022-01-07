
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct discard_info {int dummy; } ;


 int __is_discard_mergeable (struct discard_info*,struct discard_info*,unsigned int) ;

__attribute__((used)) static inline bool __is_discard_front_mergeable(struct discard_info *cur,
   struct discard_info *front, unsigned int max_len)
{
 return __is_discard_mergeable(cur, front, max_len);
}
