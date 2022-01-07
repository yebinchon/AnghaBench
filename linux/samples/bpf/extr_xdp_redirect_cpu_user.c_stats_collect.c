
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats_record {int exception; int kthread; int * enq; int redir_err; int rx_cnt; } ;


 int MAX_CPUS ;
 int cpumap_enqueue_cnt_map_fd ;
 int cpumap_kthread_cnt_map_fd ;
 int exception_cnt_map_fd ;
 int map_collect_percpu (int,int,int *) ;
 int redirect_err_cnt_map_fd ;
 int rx_cnt_map_fd ;

__attribute__((used)) static void stats_collect(struct stats_record *rec)
{
 int fd, i;

 fd = rx_cnt_map_fd;
 map_collect_percpu(fd, 0, &rec->rx_cnt);

 fd = redirect_err_cnt_map_fd;
 map_collect_percpu(fd, 1, &rec->redir_err);

 fd = cpumap_enqueue_cnt_map_fd;
 for (i = 0; i < MAX_CPUS; i++)
  map_collect_percpu(fd, i, &rec->enq[i]);

 fd = cpumap_kthread_cnt_map_fd;
 map_collect_percpu(fd, 0, &rec->kthread);

 fd = exception_cnt_map_fd;
 map_collect_percpu(fd, 0, &rec->exception);
}
