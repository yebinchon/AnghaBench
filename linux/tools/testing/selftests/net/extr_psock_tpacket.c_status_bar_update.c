
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int total_packets ;

__attribute__((used)) static void status_bar_update(void)
{
 if (total_packets % 10 == 0) {
  fprintf(stderr, ".");
  fflush(stderr);
 }
}
