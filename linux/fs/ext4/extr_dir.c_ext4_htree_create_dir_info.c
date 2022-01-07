
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dir_private_info {int curr_minor_hash; int curr_hash; } ;
typedef int loff_t ;


 int GFP_KERNEL ;
 struct dir_private_info* kzalloc (int,int ) ;
 int pos2maj_hash (struct file*,int ) ;
 int pos2min_hash (struct file*,int ) ;

__attribute__((used)) static struct dir_private_info *ext4_htree_create_dir_info(struct file *filp,
          loff_t pos)
{
 struct dir_private_info *p;

 p = kzalloc(sizeof(*p), GFP_KERNEL);
 if (!p)
  return ((void*)0);
 p->curr_hash = pos2maj_hash(filp, pos);
 p->curr_minor_hash = pos2min_hash(filp, pos);
 return p;
}
