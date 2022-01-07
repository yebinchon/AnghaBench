
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key ;
typedef int byte_cnt ;


 int BPF_MAP_TYPE_ARRAY ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int MAP_KEY_BYTES ;
 int MAP_KEY_PACKETS ;
 int assert (int) ;
 int bpf_create_map (int ,int,int,int,int ) ;
 char* bpf_log_buf ;
 scalar_t__ bpf_map_lookup_elem (int,int*,long long*) ;
 int bpf_prog_attach (int,int,int,int ) ;
 int errno ;
 int printf (char*,...) ;
 int prog_load (int,int) ;
 int sleep (int) ;
 char* strerror (int ) ;

__attribute__((used)) static int attach_filter(int cg_fd, int type, int verdict)
{
 int prog_fd, map_fd, ret, key;
 long long pkt_cnt, byte_cnt;

 map_fd = bpf_create_map(BPF_MAP_TYPE_ARRAY,
    sizeof(key), sizeof(byte_cnt),
    256, 0);
 if (map_fd < 0) {
  printf("Failed to create map: '%s'\n", strerror(errno));
  return EXIT_FAILURE;
 }

 prog_fd = prog_load(map_fd, verdict);
 printf("Output from kernel verifier:\n%s\n-------\n", bpf_log_buf);

 if (prog_fd < 0) {
  printf("Failed to load prog: '%s'\n", strerror(errno));
  return EXIT_FAILURE;
 }

 ret = bpf_prog_attach(prog_fd, cg_fd, type, 0);
 if (ret < 0) {
  printf("Failed to attach prog to cgroup: '%s'\n",
         strerror(errno));
  return EXIT_FAILURE;
 }
 while (1) {
  key = MAP_KEY_PACKETS;
  assert(bpf_map_lookup_elem(map_fd, &key, &pkt_cnt) == 0);

  key = MAP_KEY_BYTES;
  assert(bpf_map_lookup_elem(map_fd, &key, &byte_cnt) == 0);

  printf("cgroup received %lld packets, %lld bytes\n",
         pkt_cnt, byte_cnt);
  sleep(1);
 }

 return EXIT_SUCCESS;
}
