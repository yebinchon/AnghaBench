
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BPF_ANY ;
 int CHECK (int,char*,char*,int,int ) ;
 int bpf_map_update_elem (int ,int *,int*,int ) ;
 int errno ;
 int index_zero ;
 int prepare_sk_fds (int,unsigned short,int) ;
 int tmp_index_ovr_map ;

__attribute__((used)) static void setup_per_test(int type, unsigned short family, bool inany)
{
 int ovr = -1, err;

 prepare_sk_fds(type, family, inany);
 err = bpf_map_update_elem(tmp_index_ovr_map, &index_zero, &ovr,
      BPF_ANY);
 CHECK(err == -1, "update_elem(tmp_index_ovr_map, 0, -1)",
       "err:%d errno:%d\n", err, errno);
}
