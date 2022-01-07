
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {TYPE_1__* io_stats; } ;
typedef enum nfs_stat_eventcounters { ____Placeholder_nfs_stat_eventcounters } nfs_stat_eventcounters ;
struct TYPE_2__ {int * events; } ;


 int this_cpu_inc (int ) ;

__attribute__((used)) static inline void nfs_inc_server_stats(const struct nfs_server *server,
     enum nfs_stat_eventcounters stat)
{
 this_cpu_inc(server->io_stats->events[stat]);
}
