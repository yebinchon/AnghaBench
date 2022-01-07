
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int printf (char*,...) ;

__attribute__((used)) static int usage(const char *argv0)
{
 printf("Usage:\n");
 printf("  Attach a program\n");
 printf("  %s -b bind-to-dev -m mark -p prio cg-path\n", argv0);
 printf("\n");
 printf("  Detach a program\n");
 printf("  %s -d cg-path\n", argv0);
 printf("\n");
 printf("  Show inherited socket settings (mark, priority, and device)\n");
 printf("  %s [-6]\n", argv0);
 return EXIT_FAILURE;
}
