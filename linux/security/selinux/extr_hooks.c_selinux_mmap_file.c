
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_3__ {struct file* file; } ;
struct common_audit_data {TYPE_1__ u; int type; } ;
struct TYPE_4__ {scalar_t__ checkreqprot; } ;


 int FILE__MAP ;
 int LSM_AUDIT_DATA_FILE ;
 unsigned long MAP_SHARED ;
 unsigned long MAP_TYPE ;
 int current_cred () ;
 int file_inode (struct file*) ;
 int file_map_prot_check (struct file*,unsigned long,int) ;
 int inode_has_perm (int ,int ,int ,struct common_audit_data*) ;
 TYPE_2__ selinux_state ;

__attribute__((used)) static int selinux_mmap_file(struct file *file, unsigned long reqprot,
        unsigned long prot, unsigned long flags)
{
 struct common_audit_data ad;
 int rc;

 if (file) {
  ad.type = LSM_AUDIT_DATA_FILE;
  ad.u.file = file;
  rc = inode_has_perm(current_cred(), file_inode(file),
        FILE__MAP, &ad);
  if (rc)
   return rc;
 }

 if (selinux_state.checkreqprot)
  prot = reqprot;

 return file_map_prot_check(file, prot,
       (flags & MAP_TYPE) == MAP_SHARED);
}
