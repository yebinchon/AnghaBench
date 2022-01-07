
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_socket {int xsks_map_fd; } ;


 int BPF_MAP_TYPE_XSKMAP ;
 int bpf_create_map_name (int ,char*,int,int,int,int ) ;
 int xsk_get_max_queues (struct xsk_socket*) ;

__attribute__((used)) static int xsk_create_bpf_maps(struct xsk_socket *xsk)
{
 int max_queues;
 int fd;

 max_queues = xsk_get_max_queues(xsk);
 if (max_queues < 0)
  return max_queues;

 fd = bpf_create_map_name(BPF_MAP_TYPE_XSKMAP, "xsks_map",
     sizeof(int), sizeof(int), max_queues, 0);
 if (fd < 0)
  return fd;

 xsk->xsks_map_fd = fd;

 return 0;
}
