
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct jffs2_inode_info {int sem; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int host; } ;


 struct jffs2_inode_info* JFFS2_INODE_INFO (int ) ;
 int jffs2_do_readpage_unlock (int ,struct page*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int jffs2_readpage (struct file *filp, struct page *pg)
{
 struct jffs2_inode_info *f = JFFS2_INODE_INFO(pg->mapping->host);
 int ret;

 mutex_lock(&f->sem);
 ret = jffs2_do_readpage_unlock(pg->mapping->host, pg);
 mutex_unlock(&f->sem);
 return ret;
}
