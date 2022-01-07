
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_map_type { ____Placeholder_bpf_map_type } bpf_map_type ;


 int bpf_probe_map_type (int,int ) ;
 int printf (char*,int) ;
 int skips ;

__attribute__((used)) static bool skip_unsupported_map(enum bpf_map_type map_type)
{
 if (!bpf_probe_map_type(map_type, 0)) {
  printf("SKIP (unsupported map type %d)\n", map_type);
  skips++;
  return 1;
 }
 return 0;
}
