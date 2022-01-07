
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* val; int len; } ;
struct property {TYPE_1__ val; } ;
struct node {int dummy; } ;


 struct property* get_property (struct node*,char*) ;
 scalar_t__ streq (char const*,char const*) ;
 scalar_t__ strnlen (char const*,int) ;

__attribute__((used)) static bool node_is_compatible(struct node *node, const char *compat)
{
 struct property *prop;
 const char *str, *end;

 prop = get_property(node, "compatible");
 if (!prop)
  return 0;

 for (str = prop->val.val, end = str + prop->val.len; str < end;
      str += strnlen(str, end - str) + 1) {
  if (streq(str, compat))
   return 1;
 }
 return 0;
}
