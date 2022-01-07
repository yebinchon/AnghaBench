
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stats {int uid; int bytes; int packets; } ;


 int UINT32_MAX ;
 int bpf_map_get_next_key (int ,int*,int*) ;
 int bpf_map_lookup_elem (int ,int*,struct stats*) ;
 int errno ;
 int error (int,int ,char*,int) ;
 int map_fd ;
 int printf (char*,int,int,int ,int ) ;

__attribute__((used)) static void print_table(void)
{
 struct stats curEntry;
 uint32_t curN = UINT32_MAX;
 uint32_t nextN;
 int res;

 while (bpf_map_get_next_key(map_fd, &curN, &nextN) > -1) {
  curN = nextN;
  res = bpf_map_lookup_elem(map_fd, &curN, &curEntry);
  if (res < 0) {
   error(1, errno, "fail to get entry value of Key: %u\n",
    curN);
  } else {
   printf("cookie: %u, uid: 0x%x, Packet Count: %lu,"
    " Bytes Count: %lu\n", curN, curEntry.uid,
    curEntry.packets, curEntry.bytes);
  }
 }
}
