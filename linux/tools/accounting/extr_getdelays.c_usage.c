
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void usage(void)
{
 fprintf(stderr, "getdelays [-dilv] [-w logfile] [-r bufsize] "
   "[-m cpumask] [-t tgid] [-p pid]\n");
 fprintf(stderr, "  -d: print delayacct stats\n");
 fprintf(stderr, "  -i: print IO accounting (works only with -p)\n");
 fprintf(stderr, "  -l: listen forever\n");
 fprintf(stderr, "  -v: debug on\n");
 fprintf(stderr, "  -C: container path\n");
}
