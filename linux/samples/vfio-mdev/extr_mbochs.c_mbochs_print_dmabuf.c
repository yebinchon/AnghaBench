
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int drm_format; int size; int offset; int stride; int height; int width; } ;
struct mbochs_dmabuf {int pagecount; TYPE_1__ mode; int id; TYPE_2__* mdev_state; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int mdev; } ;


 int dev_dbg (struct device*,char*,char const*,int ,int,int,int,int,int ,int ,int ,int ,int ,int ) ;
 struct device* mdev_dev (int ) ;

__attribute__((used)) static void mbochs_print_dmabuf(struct mbochs_dmabuf *dmabuf,
    const char *prefix)
{
 struct device *dev = mdev_dev(dmabuf->mdev_state->mdev);
 u32 fourcc = dmabuf->mode.drm_format;

 dev_dbg(dev, "%s/%d: %c%c%c%c, %dx%d, stride %d, off 0x%llx, size 0x%llx, pages %ld\n",
  prefix, dmabuf->id,
  fourcc ? ((fourcc >> 0) & 0xff) : '-',
  fourcc ? ((fourcc >> 8) & 0xff) : '-',
  fourcc ? ((fourcc >> 16) & 0xff) : '-',
  fourcc ? ((fourcc >> 24) & 0xff) : '-',
  dmabuf->mode.width, dmabuf->mode.height, dmabuf->mode.stride,
  dmabuf->mode.offset, dmabuf->mode.size, dmabuf->pagecount);
}
