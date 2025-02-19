
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_hist {scalar_t__ max; int * data; } ;


 int MAX_CPU ;
 int MAX_ENTRIES ;
 int MAX_STARS ;
 struct cpu_hist* cpu_hist ;
 int printf (char*,...) ;
 int stars (char*,int ,scalar_t__,int) ;

__attribute__((used)) static void print_hist(void)
{
 char starstr[MAX_STARS];
 struct cpu_hist *hist;
 int i, j;


 printf("\033[2J");

 for (j = 0; j < MAX_CPU; j++) {
  hist = &cpu_hist[j];


  if (hist->max == 0)
   continue;

  printf("CPU %d\n", j);
  printf("      latency        : count     distribution\n");
  for (i = 1; i <= MAX_ENTRIES; i++) {
   stars(starstr, hist->data[i - 1], hist->max, MAX_STARS);
   printf("%8ld -> %-8ld : %-8ld |%-*s|\n",
    (1l << i) >> 1, (1l << i) - 1,
    hist->data[i - 1], MAX_STARS, starstr);
  }
 }
}
