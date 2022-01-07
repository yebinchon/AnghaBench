
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_config {size_t index; int extra_format; int * paths; int * names; } ;


 size_t SCRIPT_MAX_NO ;
 scalar_t__ asprintf (int *,char*,char const*,int ) ;
 int strdup (char const*) ;
 int strstarts (char const*,char*) ;

__attribute__((used)) static int scripts_config(const char *var, const char *value, void *data)
{
 struct script_config *c = data;

 if (!strstarts(var, "scripts."))
  return -1;
 if (c->index >= SCRIPT_MAX_NO)
  return -1;
 c->names[c->index] = strdup(var + 7);
 if (!c->names[c->index])
  return -1;
 if (asprintf(&c->paths[c->index], "%s %s", value,
       c->extra_format) < 0)
  return -1;
 c->index++;
 return 0;
}
