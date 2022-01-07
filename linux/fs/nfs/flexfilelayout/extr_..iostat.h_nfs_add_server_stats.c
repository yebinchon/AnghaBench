
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {TYPE_1__* io_stats; } ;
typedef enum nfs_stat_bytecounters { ____Placeholder_nfs_stat_bytecounters } nfs_stat_bytecounters ;
struct TYPE_2__ {int * bytes; } ;


 int this_cpu_add (int ,long) ;

__attribute__((used)) static inline void nfs_add_server_stats(const struct nfs_server *server,
     enum nfs_stat_bytecounters stat,
     long addend)
{
 this_cpu_add(server->io_stats->bytes[stat], addend);
}
