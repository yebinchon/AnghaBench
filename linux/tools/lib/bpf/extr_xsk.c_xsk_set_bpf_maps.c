
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_socket {int fd; int queue_id; int xsks_map_fd; } ;


 int bpf_map_update_elem (int ,int *,int *,int ) ;

__attribute__((used)) static int xsk_set_bpf_maps(struct xsk_socket *xsk)
{
 return bpf_map_update_elem(xsk->xsks_map_fd, &xsk->queue_id,
       &xsk->fd, 0);
}
