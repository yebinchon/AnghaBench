
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int printf (char*,char const*) ;

__attribute__((used)) static int usage(const char *argv0)
{
 printf("Usage: %s cg-path filter-path [filter-id]\n", argv0);
 return EXIT_FAILURE;
}
