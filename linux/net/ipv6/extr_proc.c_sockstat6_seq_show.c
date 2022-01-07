
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {struct net* private; } ;
struct TYPE_5__ {TYPE_3__* fqdir; } ;
struct net {TYPE_2__ ipv6; } ;
struct TYPE_4__ {int nelems; } ;
struct TYPE_6__ {TYPE_1__ rhashtable; } ;


 int atomic_read (int *) ;
 int frag_mem_limit (TYPE_3__*) ;
 int rawv6_prot ;
 int seq_printf (struct seq_file*,char*,int ,...) ;
 int sock_prot_inuse_get (struct net*,int *) ;
 int tcpv6_prot ;
 int udplitev6_prot ;
 int udpv6_prot ;

__attribute__((used)) static int sockstat6_seq_show(struct seq_file *seq, void *v)
{
 struct net *net = seq->private;

 seq_printf(seq, "TCP6: inuse %d\n",
         sock_prot_inuse_get(net, &tcpv6_prot));
 seq_printf(seq, "UDP6: inuse %d\n",
         sock_prot_inuse_get(net, &udpv6_prot));
 seq_printf(seq, "UDPLITE6: inuse %d\n",
   sock_prot_inuse_get(net, &udplitev6_prot));
 seq_printf(seq, "RAW6: inuse %d\n",
         sock_prot_inuse_get(net, &rawv6_prot));
 seq_printf(seq, "FRAG6: inuse %u memory %lu\n",
     atomic_read(&net->ipv6.fqdir->rhashtable.nelems),
     frag_mem_limit(net->ipv6.fqdir));
 return 0;
}
