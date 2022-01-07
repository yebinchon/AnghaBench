
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_file {struct file* nf_file; } ;
struct file {int f_mode; struct address_space* f_mapping; } ;
struct address_space {int dummy; } ;


 int FMODE_WRITE ;
 int PAGECACHE_TAG_DIRTY ;
 int PAGECACHE_TAG_WRITEBACK ;
 scalar_t__ mapping_tagged (struct address_space*,int ) ;

__attribute__((used)) static bool
nfsd_file_check_writeback(struct nfsd_file *nf)
{
 struct file *file = nf->nf_file;
 struct address_space *mapping;

 if (!file || !(file->f_mode & FMODE_WRITE))
  return 0;
 mapping = file->f_mapping;
 return mapping_tagged(mapping, PAGECACHE_TAG_DIRTY) ||
  mapping_tagged(mapping, PAGECACHE_TAG_WRITEBACK);
}
