
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct topology {int sib_core_nr; int sib_thr_nr; int * sib_thr; int * sib_core; } ;
struct perf_env {int nr_sibling_cores; int nr_sibling_threads; char* sibling_cores; char* sibling_threads; int nr_cpus_online; } ;
typedef int cpumask_t ;


 int MAX_NR_CPUS ;
 void* calloc (int,int) ;
 int fprintf (int ,char*) ;
 int* malloc (int) ;
 int min (int ,int ) ;
 int scan_core_topology (int*,struct topology*,int) ;
 int stderr ;
 scalar_t__ str_to_bitmap (char*,int *,int) ;
 scalar_t__ strlen (char*) ;
 int* topology_map ;
 int zfree (int **) ;

int svg_build_topology_map(struct perf_env *env)
{
 int i, nr_cpus;
 struct topology t;
 char *sib_core, *sib_thr;

 nr_cpus = min(env->nr_cpus_online, MAX_NR_CPUS);

 t.sib_core_nr = env->nr_sibling_cores;
 t.sib_thr_nr = env->nr_sibling_threads;
 t.sib_core = calloc(env->nr_sibling_cores, sizeof(cpumask_t));
 t.sib_thr = calloc(env->nr_sibling_threads, sizeof(cpumask_t));

 sib_core = env->sibling_cores;
 sib_thr = env->sibling_threads;

 if (!t.sib_core || !t.sib_thr) {
  fprintf(stderr, "topology: no memory\n");
  goto exit;
 }

 for (i = 0; i < env->nr_sibling_cores; i++) {
  if (str_to_bitmap(sib_core, &t.sib_core[i], nr_cpus)) {
   fprintf(stderr, "topology: can't parse siblings map\n");
   goto exit;
  }

  sib_core += strlen(sib_core) + 1;
 }

 for (i = 0; i < env->nr_sibling_threads; i++) {
  if (str_to_bitmap(sib_thr, &t.sib_thr[i], nr_cpus)) {
   fprintf(stderr, "topology: can't parse siblings map\n");
   goto exit;
  }

  sib_thr += strlen(sib_thr) + 1;
 }

 topology_map = malloc(sizeof(int) * nr_cpus);
 if (!topology_map) {
  fprintf(stderr, "topology: no memory\n");
  goto exit;
 }

 for (i = 0; i < nr_cpus; i++)
  topology_map[i] = -1;

 scan_core_topology(topology_map, &t, nr_cpus);

 return 0;

exit:
 zfree(&t.sib_core);
 zfree(&t.sib_thr);

 return -1;
}
