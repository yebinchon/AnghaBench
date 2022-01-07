
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int puts (char*) ;

__attribute__((used)) static void usage(void)
{
    puts("usage: dslm [-w <time>] <disk>");
    exit(0);
}
