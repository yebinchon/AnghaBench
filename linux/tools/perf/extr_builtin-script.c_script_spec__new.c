
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scripting_ops {int dummy; } ;
struct script_spec {struct scripting_ops* ops; int spec; } ;


 struct script_spec* malloc (scalar_t__) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static struct script_spec *script_spec__new(const char *spec,
         struct scripting_ops *ops)
{
 struct script_spec *s = malloc(sizeof(*s) + strlen(spec) + 1);

 if (s != ((void*)0)) {
  strcpy(s->spec, spec);
  s->ops = ops;
 }

 return s;
}
