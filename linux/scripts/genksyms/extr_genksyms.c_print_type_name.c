
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum symbol_type { ____Placeholder_symbol_type } symbol_type ;
struct TYPE_2__ {char* name; } ;


 int fprintf (int ,char*,char const*,...) ;
 int stderr ;
 TYPE_1__* symbol_types ;

__attribute__((used)) static void print_type_name(enum symbol_type type, const char *name)
{
 if (symbol_types[type].name)
  fprintf(stderr, "%s %s", symbol_types[type].name, name);
 else
  fprintf(stderr, "%s", name);
}
