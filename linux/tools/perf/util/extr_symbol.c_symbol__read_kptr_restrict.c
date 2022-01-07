
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int CAP_SYSLOG ;
 int atoi (char*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ perf_cap__capable (int ) ;
 int perf_event_paranoid () ;

__attribute__((used)) static bool symbol__read_kptr_restrict(void)
{
 bool value = 0;
 FILE *fp = fopen("/proc/sys/kernel/kptr_restrict", "r");

 if (fp != ((void*)0)) {
  char line[8];

  if (fgets(line, sizeof(line), fp) != ((void*)0))
   value = perf_cap__capable(CAP_SYSLOG) ?
     (atoi(line) >= 2) :
     (atoi(line) != 0);

  fclose(fp);
 }




 if (perf_event_paranoid() > 1 && !perf_cap__capable(CAP_SYSLOG))
  value = 1;

 return value;
}
