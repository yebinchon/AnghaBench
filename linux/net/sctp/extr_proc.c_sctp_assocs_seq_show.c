
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sock {int sk_rcvbuf; int sk_sndbuf; int sk_wmem_queued; int sk_wmem_alloc; int sk_state; } ;
struct seq_file {int dummy; } ;
struct sctp_transport {struct sctp_association* asoc; } ;
struct TYPE_5__ {int port; } ;
struct sctp_ep_common {TYPE_1__ bind_addr; struct sock* sk; } ;
struct TYPE_7__ {int outcnt; int incnt; } ;
struct TYPE_6__ {int port; } ;
struct sctp_association {int rtx_data_chunks; int shutdown_retries; int init_retries; int max_retrans; TYPE_3__ stream; int hbinterval; TYPE_2__ peer; int rmem_alloc; int sndbuf_used; int assoc_id; int state; struct sctp_ep_common base; } ;
struct TYPE_8__ {int type; } ;


 void* SEQ_START_TOKEN ;
 int atomic_read (int *) ;
 int from_kuid_munged (int ,int ) ;
 int refcount_read (int *) ;
 int sctp_seq_dump_local_addrs (struct seq_file*,struct sctp_ep_common*) ;
 int sctp_seq_dump_remote_addrs (struct seq_file*,struct sctp_association*) ;
 TYPE_4__* sctp_sk (struct sock*) ;
 int sctp_transport_put (struct sctp_transport*) ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_user_ns (struct seq_file*) ;
 int sock_i_ino (struct sock*) ;
 int sock_i_uid (struct sock*) ;

__attribute__((used)) static int sctp_assocs_seq_show(struct seq_file *seq, void *v)
{
 struct sctp_transport *transport;
 struct sctp_association *assoc;
 struct sctp_ep_common *epb;
 struct sock *sk;

 if (v == SEQ_START_TOKEN) {
  seq_printf(seq, " ASSOC     SOCK   STY SST ST HBKT "
    "ASSOC-ID TX_QUEUE RX_QUEUE UID INODE LPORT "
    "RPORT LADDRS <-> RADDRS "
    "HBINT INS OUTS MAXRT T1X T2X RTXC "
    "wmema wmemq sndbuf rcvbuf\n");
  return 0;
 }

 transport = (struct sctp_transport *)v;
 assoc = transport->asoc;
 epb = &assoc->base;
 sk = epb->sk;

 seq_printf(seq,
     "%8pK %8pK %-3d %-3d %-2d %-4d "
     "%4d %8d %8d %7u %5lu %-5d %5d ",
     assoc, sk, sctp_sk(sk)->type, sk->sk_state,
     assoc->state, 0,
     assoc->assoc_id,
     assoc->sndbuf_used,
     atomic_read(&assoc->rmem_alloc),
     from_kuid_munged(seq_user_ns(seq), sock_i_uid(sk)),
     sock_i_ino(sk),
     epb->bind_addr.port,
     assoc->peer.port);
 seq_printf(seq, " ");
 sctp_seq_dump_local_addrs(seq, epb);
 seq_printf(seq, "<-> ");
 sctp_seq_dump_remote_addrs(seq, assoc);
 seq_printf(seq, "\t%8lu %5d %5d %4d %4d %4d %8d "
     "%8d %8d %8d %8d",
  assoc->hbinterval, assoc->stream.incnt,
  assoc->stream.outcnt, assoc->max_retrans,
  assoc->init_retries, assoc->shutdown_retries,
  assoc->rtx_data_chunks,
  refcount_read(&sk->sk_wmem_alloc),
  sk->sk_wmem_queued,
  sk->sk_sndbuf,
  sk->sk_rcvbuf);
 seq_printf(seq, "\n");

 sctp_transport_put(transport);

 return 0;
}
