
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum bpf_type { ____Placeholder_bpf_type } bpf_type ;


 int BPF_TYPE_MAP ;
 int BPF_TYPE_PROG ;
 scalar_t__ IS_ERR (void*) ;
 void* bpf_map_get_with_uref (int ) ;
 void* bpf_prog_get (int ) ;

__attribute__((used)) static void *bpf_fd_probe_obj(u32 ufd, enum bpf_type *type)
{
 void *raw;

 *type = BPF_TYPE_MAP;
 raw = bpf_map_get_with_uref(ufd);
 if (IS_ERR(raw)) {
  *type = BPF_TYPE_PROG;
  raw = bpf_prog_get(ufd);
 }

 return raw;
}
