
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mic_vring {int dummy; } ;
struct TYPE_4__ {int virtio_block_fd; } ;
struct mic_info {int name; TYPE_1__ mic_virtblk; } ;
struct TYPE_6__ {int num_vq; } ;
struct TYPE_5__ {TYPE_3__ dd; int blk_config; } ;


 scalar_t__ MAP_FAILED ;
 int VIRTIO_ID_BLOCK ;
 int add_virtio_device (struct mic_info*,TYPE_3__*) ;
 int errno ;
 scalar_t__ init_vr (struct mic_info*,int ,int ,struct mic_vring*,int *,int ) ;
 int mpsslog (char*,int ,...) ;
 int strerror (int ) ;
 TYPE_2__ virtblk_dev_page ;

__attribute__((used)) static bool
start_virtblk(struct mic_info *mic, struct mic_vring *vring)
{
 if (((unsigned long)&virtblk_dev_page.blk_config % 8) != 0) {
  mpsslog("%s: blk_config is not 8 byte aligned.\n",
   mic->name);
  return 0;
 }
 add_virtio_device(mic, &virtblk_dev_page.dd);
 if (MAP_FAILED == init_vr(mic, mic->mic_virtblk.virtio_block_fd,
      VIRTIO_ID_BLOCK, vring, ((void*)0),
      virtblk_dev_page.dd.num_vq)) {
  mpsslog("%s init_vr failed %s\n",
   mic->name, strerror(errno));
  return 0;
 }
 return 1;
}
