
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct perf_cpu_map {int * map; scalar_t__ nr; } ;
struct numa_topology {int nr; int * nodes; } ;
typedef int FILE ;


 int MAXPATHLEN ;
 int NODE_ONLINE_FMT ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 scalar_t__ getline (char**,size_t*,int *) ;
 scalar_t__ load_numa_node (int *,int ) ;
 int numa_topology__delete (struct numa_topology*) ;
 struct perf_cpu_map* perf_cpu_map__new (char*) ;
 int perf_cpu_map__put (struct perf_cpu_map*) ;
 int scnprintf (char*,int,int ,int ) ;
 char* strchr (char*,char) ;
 int sysfs__mountpoint () ;
 struct numa_topology* zalloc (int) ;

struct numa_topology *numa_topology__new(void)
{
 struct perf_cpu_map *node_map = ((void*)0);
 struct numa_topology *tp = ((void*)0);
 char path[MAXPATHLEN];
 char *buf = ((void*)0);
 size_t len = 0;
 u32 nr, i;
 FILE *fp;
 char *c;

 scnprintf(path, MAXPATHLEN, NODE_ONLINE_FMT,
    sysfs__mountpoint());

 fp = fopen(path, "r");
 if (!fp)
  return ((void*)0);

 if (getline(&buf, &len, fp) <= 0)
  goto out;

 c = strchr(buf, '\n');
 if (c)
  *c = '\0';

 node_map = perf_cpu_map__new(buf);
 if (!node_map)
  goto out;

 nr = (u32) node_map->nr;

 tp = zalloc(sizeof(*tp) + sizeof(tp->nodes[0])*nr);
 if (!tp)
  goto out;

 tp->nr = nr;

 for (i = 0; i < nr; i++) {
  if (load_numa_node(&tp->nodes[i], node_map->map[i])) {
   numa_topology__delete(tp);
   tp = ((void*)0);
   break;
  }
 }

out:
 free(buf);
 fclose(fp);
 perf_cpu_map__put(node_map);
 return tp;
}
