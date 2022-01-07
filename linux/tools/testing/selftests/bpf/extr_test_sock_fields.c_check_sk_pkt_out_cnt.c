
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_spinlock_cnt {int cnt; } ;


 int CHECK (int,char*,char*,int,int ,int,int) ;
 int bpf_map_lookup_elem (int ,int*,struct bpf_spinlock_cnt*) ;
 int errno ;
 int sk_pkt_out_cnt10_fd ;
 int sk_pkt_out_cnt_fd ;

__attribute__((used)) static void check_sk_pkt_out_cnt(int accept_fd, int cli_fd)
{
 struct bpf_spinlock_cnt pkt_out_cnt = {}, pkt_out_cnt10 = {};
 int err;

 pkt_out_cnt.cnt = ~0;
 pkt_out_cnt10.cnt = ~0;
 err = bpf_map_lookup_elem(sk_pkt_out_cnt_fd, &accept_fd, &pkt_out_cnt);
 if (!err)
  err = bpf_map_lookup_elem(sk_pkt_out_cnt10_fd, &accept_fd,
       &pkt_out_cnt10);
 CHECK(err || pkt_out_cnt.cnt != 4 || pkt_out_cnt10.cnt != 40,
       "bpf_map_lookup_elem(sk_pkt_out_cnt, &accept_fd)",
       "err:%d errno:%d pkt_out_cnt:%u pkt_out_cnt10:%u",
       err, errno, pkt_out_cnt.cnt, pkt_out_cnt10.cnt);

 pkt_out_cnt.cnt = ~0;
 pkt_out_cnt10.cnt = ~0;
 err = bpf_map_lookup_elem(sk_pkt_out_cnt_fd, &cli_fd, &pkt_out_cnt);
 if (!err)
  err = bpf_map_lookup_elem(sk_pkt_out_cnt10_fd, &cli_fd,
       &pkt_out_cnt10);






 CHECK(err || pkt_out_cnt.cnt != 0xeB9F + 4 ||
       pkt_out_cnt10.cnt != 0xeB9F + 40,
       "bpf_map_lookup_elem(sk_pkt_out_cnt, &cli_fd)",
       "err:%d errno:%d pkt_out_cnt:%u pkt_out_cnt10:%u",
       err, errno, pkt_out_cnt.cnt, pkt_out_cnt10.cnt);
}
