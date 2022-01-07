
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_file {struct file* nf_file; } ;
struct file {int f_mode; int f_wb_err; int f_mapping; } ;


 int FMODE_WRITE ;
 int READ_ONCE (int ) ;
 int filemap_check_wb_err (int ,int ) ;

__attribute__((used)) static int
nfsd_file_check_write_error(struct nfsd_file *nf)
{
 struct file *file = nf->nf_file;

 if (!file || !(file->f_mode & FMODE_WRITE))
  return 0;
 return filemap_check_wb_err(file->f_mapping, READ_ONCE(file->f_wb_err));
}
