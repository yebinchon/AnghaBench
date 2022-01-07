
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_segctor_sem; int ns_dat; } ;
struct nilfs_bmap {int dummy; } ;
struct nilfs_bdesc {scalar_t__ bd_blocknr; scalar_t__ bd_level; int bd_offset; } ;
typedef int ssize_t ;
typedef int __u64 ;
struct TYPE_2__ {struct nilfs_bmap* i_bmap; } ;


 int ENOENT ;
 TYPE_1__* NILFS_I (int ) ;
 int down_read (int *) ;
 int nilfs_bmap_lookup_at_level (struct nilfs_bmap*,int ,scalar_t__,scalar_t__*) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t
nilfs_ioctl_do_get_bdescs(struct the_nilfs *nilfs, __u64 *posp, int flags,
     void *buf, size_t size, size_t nmembs)
{
 struct nilfs_bmap *bmap = NILFS_I(nilfs->ns_dat)->i_bmap;
 struct nilfs_bdesc *bdescs = buf;
 int ret, i;

 down_read(&nilfs->ns_segctor_sem);
 for (i = 0; i < nmembs; i++) {
  ret = nilfs_bmap_lookup_at_level(bmap,
       bdescs[i].bd_offset,
       bdescs[i].bd_level + 1,
       &bdescs[i].bd_blocknr);
  if (ret < 0) {
   if (ret != -ENOENT) {
    up_read(&nilfs->ns_segctor_sem);
    return ret;
   }
   bdescs[i].bd_blocknr = 0;
  }
 }
 up_read(&nilfs->ns_segctor_sem);
 return nmembs;
}
