
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct squashfs_sb_info* s_fs_info; } ;
struct squashfs_super_block {int dummy; } ;
struct squashfs_sb_info {int dummy; } ;
typedef void squashfs_page_actor ;


 int ENOMEM ;
 void* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 scalar_t__ SQUASHFS_COMP_OPTS (unsigned short) ;
 int kfree (void*) ;
 void* kmalloc (int ,int ) ;
 void* squashfs_comp_opts (struct squashfs_sb_info*,void*,int) ;
 void* squashfs_page_actor_init (void**,int,int ) ;
 int squashfs_read_data (struct super_block*,int,int ,int *,void*) ;

__attribute__((used)) static void *get_comp_opts(struct super_block *sb, unsigned short flags)
{
 struct squashfs_sb_info *msblk = sb->s_fs_info;
 void *buffer = ((void*)0), *comp_opts;
 struct squashfs_page_actor *actor = ((void*)0);
 int length = 0;




 if (SQUASHFS_COMP_OPTS(flags)) {
  buffer = kmalloc(PAGE_SIZE, GFP_KERNEL);
  if (buffer == ((void*)0)) {
   comp_opts = ERR_PTR(-ENOMEM);
   goto out;
  }

  actor = squashfs_page_actor_init(&buffer, 1, 0);
  if (actor == ((void*)0)) {
   comp_opts = ERR_PTR(-ENOMEM);
   goto out;
  }

  length = squashfs_read_data(sb,
   sizeof(struct squashfs_super_block), 0, ((void*)0), actor);

  if (length < 0) {
   comp_opts = ERR_PTR(length);
   goto out;
  }
 }

 comp_opts = squashfs_comp_opts(msblk, buffer, length);

out:
 kfree(actor);
 kfree(buffer);
 return comp_opts;
}
