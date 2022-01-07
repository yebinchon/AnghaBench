
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scripting_ops {int dummy; } ;


 int * malloc (int) ;
 int pr_err (char*) ;
 scalar_t__ script_spec_register (char*,struct scripting_ops*) ;
 int * scripting_context ;
 int zfree (int **) ;

__attribute__((used)) static void register_python_scripting(struct scripting_ops *scripting_ops)
{
 if (scripting_context == ((void*)0))
  scripting_context = malloc(sizeof(*scripting_context));

       if (scripting_context == ((void*)0) ||
    script_spec_register("Python", scripting_ops) ||
    script_spec_register("py", scripting_ops)) {
  pr_err("Error registering Python script extension: disabling it\n");
  zfree(&scripting_context);
 }
}
