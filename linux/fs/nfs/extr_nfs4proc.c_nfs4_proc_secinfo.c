
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qstr {int dummy; } ;
struct nfs4_secinfo_flavors {int dummy; } ;
struct nfs4_exception {int interruptible; scalar_t__ retry; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {int nfs_client; } ;


 int NFS4ERR_WRONGSEC ;
 TYPE_1__* NFS_SERVER (struct inode*) ;
 scalar_t__ _nfs4_is_integrity_protected (int ) ;
 int _nfs4_proc_secinfo (struct inode*,struct qstr const*,struct nfs4_secinfo_flavors*,int) ;
 int nfs4_handle_exception (TYPE_1__*,int,struct nfs4_exception*) ;
 int trace_nfs4_secinfo (struct inode*,struct qstr const*,int) ;

int nfs4_proc_secinfo(struct inode *dir, const struct qstr *name,
        struct nfs4_secinfo_flavors *flavors)
{
 struct nfs4_exception exception = {
  .interruptible = 1,
 };
 int err;
 do {
  err = -NFS4ERR_WRONGSEC;


  if (_nfs4_is_integrity_protected(NFS_SERVER(dir)->nfs_client))
   err = _nfs4_proc_secinfo(dir, name, flavors, 1);







  if (err == -NFS4ERR_WRONGSEC)
   err = _nfs4_proc_secinfo(dir, name, flavors, 0);

  trace_nfs4_secinfo(dir, name, err);
  err = nfs4_handle_exception(NFS_SERVER(dir), err,
    &exception);
 } while (exception.retry);
 return err;
}
