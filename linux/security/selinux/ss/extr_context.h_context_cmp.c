
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {scalar_t__ len; scalar_t__ user; scalar_t__ role; scalar_t__ type; int str; } ;


 scalar_t__ mls_context_cmp (struct context*,struct context*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static inline int context_cmp(struct context *c1, struct context *c2)
{
 if (c1->len && c2->len)
  return (c1->len == c2->len && !strcmp(c1->str, c2->str));
 if (c1->len || c2->len)
  return 0;
 return ((c1->user == c2->user) &&
  (c1->role == c2->role) &&
  (c1->type == c2->type) &&
  mls_context_cmp(c1, c2));
}
