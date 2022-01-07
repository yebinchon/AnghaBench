
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {size_t tag; int string; } ;
struct TYPE_2__ {char n; } ;
typedef int FILE ;


 int fputs (int ,int *) ;
 int putc (char,int *) ;
 TYPE_1__* symbol_types ;

__attribute__((used)) static void print_node(FILE * f, struct string_list *list)
{
 if (symbol_types[list->tag].n) {
  putc(symbol_types[list->tag].n, f);
  putc('#', f);
 }
 fputs(list->string, f);
}
