
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int virtio_block_fd; } ;
struct TYPE_5__ {int virtio_console_fd; } ;
struct TYPE_4__ {int virtio_net_fd; } ;
struct mic_info {int id; int name; TYPE_3__ mic_virtblk; TYPE_2__ mic_console; TYPE_1__ mic_net; } ;
struct mic_device_desc {int type; } ;


 int MIC_VIRTIO_ADD_DEVICE ;
 int O_RDWR ;
 int PATH_MAX ;



 int close (int) ;
 int errno ;
 int ioctl (int,int ,struct mic_device_desc*) ;
 int mpsslog (char*,char*,...) ;
 int open (char*,int ) ;
 int snprintf (char*,int,char*,int) ;
 int strerror (int ) ;

__attribute__((used)) static void
add_virtio_device(struct mic_info *mic, struct mic_device_desc *dd)
{
 char path[PATH_MAX];
 int fd, err;

 snprintf(path, PATH_MAX, "/dev/vop_virtio%d", mic->id);
 fd = open(path, O_RDWR);
 if (fd < 0) {
  mpsslog("Could not open %s %s\n", path, strerror(errno));
  return;
 }

 err = ioctl(fd, MIC_VIRTIO_ADD_DEVICE, dd);
 if (err < 0) {
  mpsslog("Could not add %d %s\n", dd->type, strerror(errno));
  close(fd);
  return;
 }
 switch (dd->type) {
 case 128:
  mic->mic_net.virtio_net_fd = fd;
  mpsslog("Added VIRTIO_ID_NET for %s\n", mic->name);
  break;
 case 129:
  mic->mic_console.virtio_console_fd = fd;
  mpsslog("Added VIRTIO_ID_CONSOLE for %s\n", mic->name);
  break;
 case 130:
  mic->mic_virtblk.virtio_block_fd = fd;
  mpsslog("Added VIRTIO_ID_BLOCK for %s\n", mic->name);
  break;
 }
}
