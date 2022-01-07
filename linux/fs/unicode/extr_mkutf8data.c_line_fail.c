
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char const*,char const*) ;

__attribute__((used)) static void line_fail(const char *filename, const char *line)
{
 printf("Error parsing %s:%s\n", filename, line);
 exit(1);
}
