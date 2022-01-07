
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int printf (char*,...) ;

__attribute__((used)) static int usage(const char *argv0)
{
 printf("Usage: %s [-d] [-D] <cg-path> <egress|ingress>\n", argv0);
 printf("	-d	Drop Traffic\n");
 printf("	-D	Detach filter, and exit\n");
 return EXIT_FAILURE;
}
