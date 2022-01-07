
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* val; int len; } ;
struct property {TYPE_1__ val; } ;
struct node {int dummy; } ;
struct dt_info {int dummy; } ;
struct check {char* data; } ;


 int FAIL_PROP (struct check*,struct dt_info*,struct node*,struct property*,char*) ;
 struct property* get_property (struct node*,char*) ;
 int strnlen (char*,int) ;

__attribute__((used)) static void check_is_string_list(struct check *c, struct dt_info *dti,
     struct node *node)
{
 int rem, l;
 struct property *prop;
 char *propname = c->data;
 char *str;

 prop = get_property(node, propname);
 if (!prop)
  return;

 str = prop->val.val;
 rem = prop->val.len;
 while (rem > 0) {
  l = strnlen(str, rem);
  if (l == rem) {
   FAIL_PROP(c, dti, node, prop, "property is not a string list");
   break;
  }
  rem -= l + 1;
  str += l + 1;
 }
}
