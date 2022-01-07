
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_type { ____Placeholder_bpf_type } bpf_type ;




 int WARN_ON_ONCE (int) ;
 void* bpf_map_inc (void*,int) ;
 void* bpf_prog_inc (void*) ;

__attribute__((used)) static void *bpf_any_get(void *raw, enum bpf_type type)
{
 switch (type) {
 case 128:
  raw = bpf_prog_inc(raw);
  break;
 case 129:
  raw = bpf_map_inc(raw, 1);
  break;
 default:
  WARN_ON_ONCE(1);
  break;
 }

 return raw;
}
