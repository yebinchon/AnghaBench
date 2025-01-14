
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (char*) ;
 int PAGE_SIZE ;
 int PTR_ERR (char*) ;
 scalar_t__ __get_free_page (int ) ;
 int free_page (unsigned long) ;
 char* nfs_path (char**,struct dentry*,char*,int ,int ) ;
 int seq_escape (struct seq_file*,char*,char*) ;

int nfs_show_devname(struct seq_file *m, struct dentry *root)
{
 char *page = (char *) __get_free_page(GFP_KERNEL);
 char *devname, *dummy;
 int err = 0;
 if (!page)
  return -ENOMEM;
 devname = nfs_path(&dummy, root, page, PAGE_SIZE, 0);
 if (IS_ERR(devname))
  err = PTR_ERR(devname);
 else
  seq_escape(m, devname, " \t\n\\");
 free_page((unsigned long)page);
 return err;
}
