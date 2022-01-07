
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stats_record {int xdp_devmap_xmit; int xdp_cpumap_kthread; int * xdp_cpumap_enqueue; int * xdp_exception; int * xdp_redirect; } ;
struct TYPE_2__ {int fd; } ;


 int MAX_CPUS ;
 int REDIR_RES_MAX ;
 int XDP_ACTION_MAX ;
 int map_collect_record (int,int,int *) ;
 int map_collect_record_u64 (int,int,int *) ;
 TYPE_1__* map_data ;

__attribute__((used)) static bool stats_collect(struct stats_record *rec)
{
 int fd;
 int i;





 fd = map_data[0].fd;
 for (i = 0; i < REDIR_RES_MAX; i++)
  map_collect_record_u64(fd, i, &rec->xdp_redirect[i]);

 fd = map_data[1].fd;
 for (i = 0; i < XDP_ACTION_MAX; i++) {
  map_collect_record_u64(fd, i, &rec->xdp_exception[i]);
 }

 fd = map_data[2].fd;
 for (i = 0; i < MAX_CPUS; i++)
  map_collect_record(fd, i, &rec->xdp_cpumap_enqueue[i]);

 fd = map_data[3].fd;
 map_collect_record(fd, 0, &rec->xdp_cpumap_kthread);

 fd = map_data[4].fd;
 map_collect_record(fd, 0, &rec->xdp_devmap_xmit);

 return 1;
}
