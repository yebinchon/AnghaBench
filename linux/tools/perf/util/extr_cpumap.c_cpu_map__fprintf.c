
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int dummy; } ;
typedef int buf ;
typedef int FILE ;


 int BUFSIZE ;
 int cpu_map__snprint (struct perf_cpu_map*,char*,int) ;
 size_t fprintf (int *,char*,char*) ;

size_t cpu_map__fprintf(struct perf_cpu_map *map, FILE *fp)
{

 char buf[1024];

 cpu_map__snprint(map, buf, sizeof(buf));
 return fprintf(fp, "%s\n", buf);

}
