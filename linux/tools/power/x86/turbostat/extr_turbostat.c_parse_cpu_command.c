
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * CPU_ALLOC (unsigned int) ;
 int CPU_ALLOC_SIZE (unsigned int) ;
 int CPU_SET_S (unsigned int,int ,int *) ;
 unsigned int CPU_SUBSET_MAXCPUS ;
 int CPU_ZERO_S (int ,int *) ;
 int * cpu_subset ;
 int cpu_subset_size ;
 int err (int,char*) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int help () ;
 scalar_t__ show_core_only ;
 scalar_t__ show_pkg_only ;
 int stderr ;
 int strcmp (char*,char*) ;
 unsigned int strtoul (char*,char**,int) ;

void parse_cpu_command(char *optarg)
{
 unsigned int start, end;
 char *next;

 if (!strcmp(optarg, "core")) {
  if (cpu_subset)
   goto error;
  show_core_only++;
  return;
 }
 if (!strcmp(optarg, "package")) {
  if (cpu_subset)
   goto error;
  show_pkg_only++;
  return;
 }
 if (show_core_only || show_pkg_only)
  goto error;

 cpu_subset = CPU_ALLOC(CPU_SUBSET_MAXCPUS);
 if (cpu_subset == ((void*)0))
  err(3, "CPU_ALLOC");
 cpu_subset_size = CPU_ALLOC_SIZE(CPU_SUBSET_MAXCPUS);

 CPU_ZERO_S(cpu_subset_size, cpu_subset);

 next = optarg;

 while (next && *next) {

  if (*next == '-')
   goto error;

  start = strtoul(next, &next, 10);

  if (start >= CPU_SUBSET_MAXCPUS)
   goto error;
  CPU_SET_S(start, cpu_subset_size, cpu_subset);

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
   if (start >= CPU_SUBSET_MAXCPUS)
    goto error;
   CPU_SET_S(start, cpu_subset_size, cpu_subset);
  }

  if (*next == ',')
   next += 1;
  else if (*next != '\0')
   goto error;
 }

 return;

error:
 fprintf(stderr, "\"--cpu %s\" malformed\n", optarg);
 help();
 exit(-1);
}
