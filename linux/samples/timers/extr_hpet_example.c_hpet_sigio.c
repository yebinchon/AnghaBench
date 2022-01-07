
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int hpet_sigio_count ;
 int stderr ;

__attribute__((used)) static void
hpet_sigio(int val)
{
 fprintf(stderr, "hpet_sigio: called\n");
 hpet_sigio_count++;
}
