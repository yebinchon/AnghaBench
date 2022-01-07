
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct jffs2_inode_info {TYPE_1__* inocache; } ;
struct dentry {int d_sb; } ;
struct TYPE_2__ {int ino; int pino_nlink; } ;


 int BUG_ON (int) ;
 int JFFS2_DEBUG (char*,int ,int ) ;
 struct jffs2_inode_info* JFFS2_INODE_INFO (int ) ;
 int d_inode (struct dentry*) ;
 int d_is_dir (struct dentry*) ;
 struct dentry* d_obtain_alias (int ) ;
 int jffs2_iget (int ,int ) ;

__attribute__((used)) static struct dentry *jffs2_get_parent(struct dentry *child)
{
 struct jffs2_inode_info *f;
 uint32_t pino;

 BUG_ON(!d_is_dir(child));

 f = JFFS2_INODE_INFO(d_inode(child));

 pino = f->inocache->pino_nlink;

 JFFS2_DEBUG("Parent of directory ino #%u is #%u\n",
      f->inocache->ino, pino);

 return d_obtain_alias(jffs2_iget(child->d_sb, pino));
}
