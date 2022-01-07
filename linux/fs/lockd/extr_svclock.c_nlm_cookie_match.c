
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_cookie {scalar_t__ len; int data; } ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static inline int nlm_cookie_match(struct nlm_cookie *a, struct nlm_cookie *b)
{
 if (a->len != b->len)
  return 0;
 if (memcmp(a->data, b->data, a->len))
  return 0;
 return 1;
}
