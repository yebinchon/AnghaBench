
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct ib_umad_rw_args {int mgmt_class; } ;


 int BPF_NOEXIST ;
 int* bpf_map_lookup_elem (int *,int *) ;
 int bpf_map_update_elem (int *,int *,int*,int ) ;
 int bpf_printk (char*,int ) ;
 int read_count ;

int on_ib_umad_read_send(struct ib_umad_rw_args *ctx)
{
 u64 zero = 0, *val;
 u8 class = ctx->mgmt_class;

 bpf_printk("ib_umad read send : class 0x%x\n", class);

 val = bpf_map_lookup_elem(&read_count, &class);
 if (!val) {
  bpf_map_update_elem(&read_count, &class, &zero, BPF_NOEXIST);
  val = bpf_map_lookup_elem(&read_count, &class);
  if (!val)
   return 0;
 }

 (*val) += 1;

 return 0;
}
