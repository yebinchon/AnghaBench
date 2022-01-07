
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BPF_F_NO_PREALLOC ;
 int BPF_MAP_TYPE_HASH ;
 int assert (int) ;
 int bpf_create_map (int ,int,int,int,int ) ;
 int bpf_gen_imm_prog ;
 int bpf_gen_map_prog ;
 int close (int) ;
 int do_test (int*,int,int,int ) ;
 int printf (char*,int) ;

int main(void)
{
 uint32_t tests = 0;
 int i, fd_map;

 fd_map = bpf_create_map(BPF_MAP_TYPE_HASH, sizeof(int),
    sizeof(int), 1, BPF_F_NO_PREALLOC);
 assert(fd_map > 0);

 for (i = 0; i < 5; i++) {
  do_test(&tests, 2, -1, bpf_gen_imm_prog);
  do_test(&tests, 3, fd_map, bpf_gen_map_prog);
 }

 printf("test_tag: OK (%u tests)\n", tests);
 close(fd_map);
 return 0;
}
