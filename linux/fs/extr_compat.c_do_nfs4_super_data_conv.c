
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_mount_data {int version; int flags; int rsize; int wsize; int timeo; int retrans; int acregmin; int acregmax; int acdirmin; int acdirmax; int client_addr; int mnt_path; int hostname; int host_addrlen; void* host_addr; int proto; int auth_flavourlen; void* auth_flavours; } ;
struct compat_nfs4_mount_data_v1 {int version; int flags; int rsize; int wsize; int timeo; int retrans; int acregmin; int acregmax; int acdirmin; int acdirmax; int client_addr; int mnt_path; int hostname; int host_addrlen; int host_addr; int proto; int auth_flavourlen; int auth_flavours; } ;
typedef int compat_uint_t ;


 int compat_nfs_string (int *,int *) ;
 void* compat_ptr (int ) ;

__attribute__((used)) static int do_nfs4_super_data_conv(void *raw_data)
{
 int version = *(compat_uint_t *) raw_data;

 if (version == 1) {
  struct compat_nfs4_mount_data_v1 *raw = raw_data;
  struct nfs4_mount_data *real = raw_data;


  real->auth_flavours = compat_ptr(raw->auth_flavours);
  real->auth_flavourlen = raw->auth_flavourlen;
  real->proto = raw->proto;
  real->host_addr = compat_ptr(raw->host_addr);
  real->host_addrlen = raw->host_addrlen;
  compat_nfs_string(&real->hostname, &raw->hostname);
  compat_nfs_string(&real->mnt_path, &raw->mnt_path);
  compat_nfs_string(&real->client_addr, &raw->client_addr);
  real->acdirmax = raw->acdirmax;
  real->acdirmin = raw->acdirmin;
  real->acregmax = raw->acregmax;
  real->acregmin = raw->acregmin;
  real->retrans = raw->retrans;
  real->timeo = raw->timeo;
  real->wsize = raw->wsize;
  real->rsize = raw->rsize;
  real->flags = raw->flags;
  real->version = raw->version;
 }

 return 0;
}
