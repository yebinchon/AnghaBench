
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int A_OF_PORT_A ;
 int BPF_ANY ;
 int BPF_NOEXIST ;
 int H_OF_PORT_A ;
 int H_OF_PORT_H ;
 int PORT_A ;
 int PORT_H ;
 int assert (int) ;
 int bpf_map_update_elem (int,int *,int*,int ) ;
 int check_map_id (int,int,int ) ;

__attribute__((used)) static void populate_map(uint32_t port_key, int magic_result)
{
 int ret;

 ret = bpf_map_update_elem(PORT_A, &port_key, &magic_result, BPF_ANY);
 assert(!ret);

 ret = bpf_map_update_elem(PORT_H, &port_key, &magic_result,
      BPF_NOEXIST);
 assert(!ret);

 ret = bpf_map_update_elem(A_OF_PORT_A, &port_key, &PORT_A, BPF_ANY);
 assert(!ret);
 check_map_id(PORT_A, A_OF_PORT_A, port_key);

 ret = bpf_map_update_elem(H_OF_PORT_A, &port_key, &PORT_A, BPF_NOEXIST);
 assert(!ret);
 check_map_id(PORT_A, H_OF_PORT_A, port_key);

 ret = bpf_map_update_elem(H_OF_PORT_H, &port_key, &PORT_H, BPF_NOEXIST);
 assert(!ret);
 check_map_id(PORT_H, H_OF_PORT_H, port_key);
}
