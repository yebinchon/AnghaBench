
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;


 int buf_printf (struct buffer*,char*) ;

__attribute__((used)) static void add_intree_flag(struct buffer *b, int is_intree)
{
 if (is_intree)
  buf_printf(b, "\nMODULE_INFO(intree, \"Y\");\n");
}
