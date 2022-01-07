
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;


 int buf_printf (struct buffer*,char*) ;
 scalar_t__ strstarts (char const*,char*) ;

__attribute__((used)) static void add_staging_flag(struct buffer *b, const char *name)
{
 if (strstarts(name, "drivers/staging"))
  buf_printf(b, "\nMODULE_INFO(staging, \"Y\");\n");
}
