
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct source_location {int line; int column; int file_name; } ;


 int COLUMN_MASK ;
 int LINE_MASK ;
 int pr_err (char*,char const*,int ,int,int) ;

__attribute__((used)) static void print_source_location(const char *prefix,
    struct source_location *loc)
{
 pr_err("%s %s:%d:%d\n", prefix, loc->file_name,
  loc->line & LINE_MASK, loc->column & COLUMN_MASK);
}
