
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int python_scripting_unsupported_ops ;
 int register_python_scripting (int *) ;

void setup_python_scripting(void)
{
 register_python_scripting(&python_scripting_unsupported_ops);
}
