
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct discard_info {scalar_t__ lstart; unsigned int len; } ;



__attribute__((used)) static inline bool __is_discard_mergeable(struct discard_info *back,
   struct discard_info *front, unsigned int max_len)
{
 return (back->lstart + back->len == front->lstart) &&
  (back->len + front->len <= max_len);
}
