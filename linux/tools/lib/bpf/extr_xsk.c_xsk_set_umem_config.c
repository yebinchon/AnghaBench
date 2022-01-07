
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_umem_config {int flags; int frame_headroom; int frame_size; int comp_size; int fill_size; } ;


 int XSK_RING_CONS__DEFAULT_NUM_DESCS ;
 int XSK_RING_PROD__DEFAULT_NUM_DESCS ;
 int XSK_UMEM__DEFAULT_FLAGS ;
 int XSK_UMEM__DEFAULT_FRAME_HEADROOM ;
 int XSK_UMEM__DEFAULT_FRAME_SIZE ;

__attribute__((used)) static void xsk_set_umem_config(struct xsk_umem_config *cfg,
    const struct xsk_umem_config *usr_cfg)
{
 if (!usr_cfg) {
  cfg->fill_size = XSK_RING_PROD__DEFAULT_NUM_DESCS;
  cfg->comp_size = XSK_RING_CONS__DEFAULT_NUM_DESCS;
  cfg->frame_size = XSK_UMEM__DEFAULT_FRAME_SIZE;
  cfg->frame_headroom = XSK_UMEM__DEFAULT_FRAME_HEADROOM;
  cfg->flags = XSK_UMEM__DEFAULT_FLAGS;
  return;
 }

 cfg->fill_size = usr_cfg->fill_size;
 cfg->comp_size = usr_cfg->comp_size;
 cfg->frame_size = usr_cfg->frame_size;
 cfg->frame_headroom = usr_cfg->frame_headroom;
 cfg->flags = usr_cfg->flags;
}
