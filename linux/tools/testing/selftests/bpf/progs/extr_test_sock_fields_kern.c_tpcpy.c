
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_tcp_sock {int bytes_acked; int bytes_received; int sacked_out; int lost_out; int data_segs_out; int segs_out; int data_segs_in; int segs_in; int total_retrans; int retrans_out; int packets_out; int rate_interval_us; int rate_delivered; int ecn_flags; int mss_cache; int snd_una; int snd_nxt; int rcv_nxt; int snd_ssthresh; int rtt_min; int srtt_us; int snd_cwnd; } ;



__attribute__((used)) static void tpcpy(struct bpf_tcp_sock *dst,
    const struct bpf_tcp_sock *src)
{
 dst->snd_cwnd = src->snd_cwnd;
 dst->srtt_us = src->srtt_us;
 dst->rtt_min = src->rtt_min;
 dst->snd_ssthresh = src->snd_ssthresh;
 dst->rcv_nxt = src->rcv_nxt;
 dst->snd_nxt = src->snd_nxt;
 dst->snd_una = src->snd_una;
 dst->mss_cache = src->mss_cache;
 dst->ecn_flags = src->ecn_flags;
 dst->rate_delivered = src->rate_delivered;
 dst->rate_interval_us = src->rate_interval_us;
 dst->packets_out = src->packets_out;
 dst->retrans_out = src->retrans_out;
 dst->total_retrans = src->total_retrans;
 dst->segs_in = src->segs_in;
 dst->data_segs_in = src->data_segs_in;
 dst->segs_out = src->segs_out;
 dst->data_segs_out = src->data_segs_out;
 dst->lost_out = src->lost_out;
 dst->sacked_out = src->sacked_out;
 dst->bytes_received = src->bytes_received;
 dst->bytes_acked = src->bytes_acked;
}
