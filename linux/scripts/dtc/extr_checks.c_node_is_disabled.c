
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* val; } ;
struct property {TYPE_1__ val; } ;
struct node {int dummy; } ;


 struct property* get_property (struct node*,char*) ;
 scalar_t__ streq (char*,char*) ;

__attribute__((used)) static bool node_is_disabled(struct node *node)
{
 struct property *prop;

 prop = get_property(node, "status");
 if (prop) {
  char *str = prop->val.val;
  if (streq("disabled", str))
   return 1;
 }

 return 0;
}
