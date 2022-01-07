
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct nfsd_fault_inject_op {int file; } ;


 unsigned int ARRAY_SIZE (struct nfsd_fault_inject_op*) ;
 int S_IFREG ;
 int S_IRUSR ;
 int S_IWUSR ;
 int debug_dir ;
 int debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (int ,int,int ,struct nfsd_fault_inject_op*,int *) ;
 int fops_nfsd ;
 struct nfsd_fault_inject_op* inject_ops ;

void nfsd_fault_inject_init(void)
{
 unsigned int i;
 struct nfsd_fault_inject_op *op;
 umode_t mode = S_IFREG | S_IRUSR | S_IWUSR;

 debug_dir = debugfs_create_dir("nfsd", ((void*)0));

 for (i = 0; i < ARRAY_SIZE(inject_ops); i++) {
  op = &inject_ops[i];
  debugfs_create_file(op->file, mode, debug_dir, op, &fops_nfsd);
 }
}
