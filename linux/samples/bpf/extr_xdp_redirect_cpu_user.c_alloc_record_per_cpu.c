
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datarec {int dummy; } ;


 int EXIT_FAIL_MEM ;
 unsigned int bpf_num_possible_cpus () ;
 int exit (int ) ;
 int fprintf (int ,char*,unsigned int) ;
 struct datarec* malloc (size_t) ;
 int memset (struct datarec*,int ,size_t) ;
 int stderr ;

__attribute__((used)) static struct datarec *alloc_record_per_cpu(void)
{
 unsigned int nr_cpus = bpf_num_possible_cpus();
 struct datarec *array;
 size_t size;

 size = sizeof(struct datarec) * nr_cpus;
 array = malloc(size);
 memset(array, 0, size);
 if (!array) {
  fprintf(stderr, "Mem alloc error (nr_cpus:%u)\n", nr_cpus);
  exit(EXIT_FAIL_MEM);
 }
 return array;
}
