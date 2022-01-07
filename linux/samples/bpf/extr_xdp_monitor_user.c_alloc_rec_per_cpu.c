
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAIL_MEM ;
 unsigned int bpf_num_possible_cpus () ;
 int exit (int ) ;
 int fprintf (int ,char*,unsigned int) ;
 void* malloc (size_t) ;
 int memset (void*,int ,size_t) ;
 int stderr ;

__attribute__((used)) static void *alloc_rec_per_cpu(int record_size)
{
 unsigned int nr_cpus = bpf_num_possible_cpus();
 void *array;
 size_t size;

 size = record_size * nr_cpus;
 array = malloc(size);
 memset(array, 0, size);
 if (!array) {
  fprintf(stderr, "Mem alloc error (nr_cpus:%u)\n", nr_cpus);
  exit(EXIT_FAIL_MEM);
 }
 return array;
}
