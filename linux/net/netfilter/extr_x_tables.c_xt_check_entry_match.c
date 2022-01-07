
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int match_size; } ;
struct xt_entry_match {TYPE_1__ u; } ;
typedef scalar_t__ pos ;


 int EINVAL ;

__attribute__((used)) static int xt_check_entry_match(const char *match, const char *target,
    const size_t alignment)
{
 const struct xt_entry_match *pos;
 int length = target - match;

 if (length == 0)
  return 0;

 pos = (struct xt_entry_match *)match;
 do {
  if ((unsigned long)pos % alignment)
   return -EINVAL;

  if (length < (int)sizeof(struct xt_entry_match))
   return -EINVAL;

  if (pos->u.match_size < sizeof(struct xt_entry_match))
   return -EINVAL;

  if (pos->u.match_size > length)
   return -EINVAL;

  length -= pos->u.match_size;
  pos = ((void *)((char *)(pos) + (pos)->u.match_size));
 } while (length > 0);

 return 0;
}
