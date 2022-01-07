
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct l2tp_dfs_seq_data {int session; int tunnel; } ;


 void* SEQ_START_TOKEN ;
 int l2tp_dfs_seq_session_show (struct seq_file*,int ) ;
 int l2tp_dfs_seq_tunnel_show (struct seq_file*,int ) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int l2tp_dfs_seq_show(struct seq_file *m, void *v)
{
 struct l2tp_dfs_seq_data *pd = v;


 if (v == SEQ_START_TOKEN) {
  seq_puts(m, "TUNNEL ID, peer ID from IP to IP\n");
  seq_puts(m, " L2TPv2/L2TPv3, UDP/IP\n");
  seq_puts(m, " sessions session-count, refcnt refcnt/sk->refcnt\n");
  seq_puts(m, " debug tx-pkts/bytes/errs rx-pkts/bytes/errs\n");
  seq_puts(m, "  SESSION ID, peer ID, PWTYPE\n");
  seq_puts(m, "   refcnt cnt\n");
  seq_puts(m, "   offset OFFSET l2specific TYPE/LEN\n");
  seq_puts(m, "   [ cookie ]\n");
  seq_puts(m, "   [ peer cookie ]\n");
  seq_puts(m, "   config mtu/mru/rcvseq/sendseq/dataseq/lns debug reorderto\n");
  seq_puts(m, "   nr/ns tx-pkts/bytes/errs rx-pkts/bytes/errs\n");
  goto out;
 }

 if (!pd->session)
  l2tp_dfs_seq_tunnel_show(m, pd->tunnel);
 else
  l2tp_dfs_seq_session_show(m, pd->session);

out:
 return 0;
}
