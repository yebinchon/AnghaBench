
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_spinlock_cnt {int cnt; } ;
typedef int __u32 ;


 int BPF_NOEXIST ;
 int CHECK (int,char*,char*,int,int ) ;
 int bpf_map_update_elem (int ,int*,struct bpf_spinlock_cnt*,int ) ;
 int errno ;
 int sk_pkt_out_cnt10_fd ;
 int sk_pkt_out_cnt_fd ;

__attribute__((used)) static void init_sk_storage(int sk_fd, __u32 pkt_out_cnt)
{
 struct bpf_spinlock_cnt scnt = {};
 int err;

 scnt.cnt = pkt_out_cnt;
 err = bpf_map_update_elem(sk_pkt_out_cnt_fd, &sk_fd, &scnt,
      BPF_NOEXIST);
 CHECK(err, "bpf_map_update_elem(sk_pkt_out_cnt_fd)",
       "err:%d errno:%d", err, errno);

 scnt.cnt *= 10;
 err = bpf_map_update_elem(sk_pkt_out_cnt10_fd, &sk_fd, &scnt,
      BPF_NOEXIST);
 CHECK(err, "bpf_map_update_elem(sk_pkt_out_cnt10_fd)",
       "err:%d errno:%d", err, errno);
}
