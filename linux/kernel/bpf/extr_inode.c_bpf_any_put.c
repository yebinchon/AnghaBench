
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_type { ____Placeholder_bpf_type } bpf_type ;




 int WARN_ON_ONCE (int) ;
 int bpf_map_put_with_uref (void*) ;
 int bpf_prog_put (void*) ;

__attribute__((used)) static void bpf_any_put(void *raw, enum bpf_type type)
{
 switch (type) {
 case 128:
  bpf_prog_put(raw);
  break;
 case 129:
  bpf_map_put_with_uref(raw);
  break;
 default:
  WARN_ON_ONCE(1);
  break;
 }
}
