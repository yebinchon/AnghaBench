
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct seq_file {struct net* private; } ;
struct TYPE_5__ {int tw_count; } ;
struct TYPE_7__ {TYPE_4__* fqdir; TYPE_1__ tcp_death_row; } ;
struct net {TYPE_3__ ipv4; } ;
struct TYPE_6__ {int nelems; } ;
struct TYPE_8__ {TYPE_2__ rhashtable; } ;


 int atomic_read (int *) ;
 int frag_mem_limit (TYPE_4__*) ;
 int percpu_counter_sum_positive (int *) ;
 int proto_memory_allocated (int *) ;
 int proto_sockets_allocated_sum_positive (int *) ;
 int raw_prot ;
 int seq_printf (struct seq_file*,char*,int ,...) ;
 int sock_prot_inuse_get (struct net*,int *) ;
 int socket_seq_show (struct seq_file*) ;
 int tcp_orphan_count ;
 int tcp_prot ;
 int udp_prot ;
 int udplite_prot ;

__attribute__((used)) static int sockstat_seq_show(struct seq_file *seq, void *v)
{
 struct net *net = seq->private;
 int orphans, sockets;

 orphans = percpu_counter_sum_positive(&tcp_orphan_count);
 sockets = proto_sockets_allocated_sum_positive(&tcp_prot);

 socket_seq_show(seq);
 seq_printf(seq, "TCP: inuse %d orphan %d tw %d alloc %d mem %ld\n",
     sock_prot_inuse_get(net, &tcp_prot), orphans,
     atomic_read(&net->ipv4.tcp_death_row.tw_count), sockets,
     proto_memory_allocated(&tcp_prot));
 seq_printf(seq, "UDP: inuse %d mem %ld\n",
     sock_prot_inuse_get(net, &udp_prot),
     proto_memory_allocated(&udp_prot));
 seq_printf(seq, "UDPLITE: inuse %d\n",
     sock_prot_inuse_get(net, &udplite_prot));
 seq_printf(seq, "RAW: inuse %d\n",
     sock_prot_inuse_get(net, &raw_prot));
 seq_printf(seq, "FRAG: inuse %u memory %lu\n",
     atomic_read(&net->ipv4.fqdir->rhashtable.nelems),
     frag_mem_limit(net->ipv4.fqdir));
 return 0;
}
