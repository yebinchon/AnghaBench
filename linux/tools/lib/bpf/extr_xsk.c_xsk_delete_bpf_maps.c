
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_socket {int xsks_map_fd; int queue_id; } ;


 int bpf_map_delete_elem (int ,int *) ;
 int close (int ) ;

__attribute__((used)) static void xsk_delete_bpf_maps(struct xsk_socket *xsk)
{
 bpf_map_delete_elem(xsk->xsks_map_fd, &xsk->queue_id);
 close(xsk->xsks_map_fd);
}
