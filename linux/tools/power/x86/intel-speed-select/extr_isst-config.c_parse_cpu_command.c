
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_CPUS_IN_ONE_REQ ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int max_target_cpus ;
 int printf (char*,int) ;
 int stderr ;
 unsigned int strtoul (char*,char**,int) ;
 int* target_cpus ;

void parse_cpu_command(char *optarg)
{
 unsigned int start, end;
 char *next;

 next = optarg;

 while (next && *next) {
  if (*next == '-')
   goto error;

  start = strtoul(next, &next, 10);

  if (max_target_cpus < MAX_CPUS_IN_ONE_REQ)
   target_cpus[max_target_cpus++] = start;

  if (*next == '\0')
   break;

  if (*next == ',') {
   next += 1;
   continue;
  }

  if (*next == '-') {
   next += 1;
  } else if (*next == '.') {
   next += 1;
   if (*next == '.')
    next += 1;
   else
    goto error;
  }

  end = strtoul(next, &next, 10);
  if (end <= start)
   goto error;

  while (++start <= end) {
   if (max_target_cpus < MAX_CPUS_IN_ONE_REQ)
    target_cpus[max_target_cpus++] = start;
  }

  if (*next == ',')
   next += 1;
  else if (*next != '\0')
   goto error;
 }
 return;

error:
 fprintf(stderr, "\"--cpu %s\" malformed\n", optarg);
 exit(-1);
}
