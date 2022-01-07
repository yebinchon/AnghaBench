
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct variable {int flavor; char* value; int node; scalar_t__ exp_count; void* name; } ;
typedef enum variable_flavor { ____Placeholder_variable_flavor } variable_flavor ;


 int VAR_APPEND ;
 int VAR_RECURSIVE ;
 int VAR_SIMPLE ;
 char* expand_string (char const*) ;
 int free (char*) ;
 int list_add_tail (int *,int *) ;
 int strcat (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int variable_list ;
 struct variable* variable_lookup (char const*) ;
 struct variable* xmalloc (int) ;
 char* xrealloc (char*,scalar_t__) ;
 void* xstrdup (char const*) ;

void variable_add(const char *name, const char *value,
    enum variable_flavor flavor)
{
 struct variable *v;
 char *new_value;
 bool append = 0;

 v = variable_lookup(name);
 if (v) {

  if (flavor == VAR_APPEND) {
   flavor = v->flavor;
   append = 1;
  } else {
   free(v->value);
  }
 } else {

  if (flavor == VAR_APPEND)
   flavor = VAR_RECURSIVE;

  v = xmalloc(sizeof(*v));
  v->name = xstrdup(name);
  v->exp_count = 0;
  list_add_tail(&v->node, &variable_list);
 }

 v->flavor = flavor;

 if (flavor == VAR_SIMPLE)
  new_value = expand_string(value);
 else
  new_value = xstrdup(value);

 if (append) {
  v->value = xrealloc(v->value,
        strlen(v->value) + strlen(new_value) + 2);
  strcat(v->value, " ");
  strcat(v->value, new_value);
  free(new_value);
 } else {
  v->value = new_value;
 }
}
