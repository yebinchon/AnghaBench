
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scripting_ops {int dummy; } ;
struct script_spec {struct scripting_ops* ops; } ;


 struct script_spec* script_spec__find (char const*) ;

__attribute__((used)) static struct scripting_ops *script_spec__lookup(const char *spec)
{
 struct script_spec *s = script_spec__find(spec);
 if (!s)
  return ((void*)0);

 return s->ops;
}
