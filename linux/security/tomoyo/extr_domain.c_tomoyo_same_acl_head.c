
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_acl_info {scalar_t__ type; scalar_t__ cond; } ;



__attribute__((used)) static inline bool tomoyo_same_acl_head(const struct tomoyo_acl_info *a,
     const struct tomoyo_acl_info *b)
{
 return a->type == b->type && a->cond == b->cond;
}
