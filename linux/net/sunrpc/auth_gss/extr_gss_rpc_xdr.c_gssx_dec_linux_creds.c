
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct svc_cred {TYPE_1__* cr_group_info; void* cr_gid; int cr_uid; } ;
typedef void* kgid_t ;
typedef int __be32 ;
struct TYPE_4__ {void** gid; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 int NGROUPS_MAX ;
 int be32_to_cpup (int *) ;
 int get_host_u32 (struct xdr_stream*,int*) ;
 int gid_valid (void*) ;
 TYPE_1__* groups_alloc (int) ;
 int groups_free (TYPE_1__*) ;
 int groups_sort (TYPE_1__*) ;
 int init_user_ns ;
 void* make_kgid (int *,int) ;
 int make_kuid (int *,int) ;
 scalar_t__ unlikely (int ) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int gssx_dec_linux_creds(struct xdr_stream *xdr,
    struct svc_cred *creds)
{
 u32 length;
 __be32 *p;
 u32 tmp;
 u32 N;
 int i, err;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(p == ((void*)0)))
  return -ENOSPC;

 length = be32_to_cpup(p);

 if (length > (3 + NGROUPS_MAX) * sizeof(u32))
  return -ENOSPC;


 err = get_host_u32(xdr, &tmp);
 if (err)
  return err;
 creds->cr_uid = make_kuid(&init_user_ns, tmp);


 err = get_host_u32(xdr, &tmp);
 if (err)
  return err;
 creds->cr_gid = make_kgid(&init_user_ns, tmp);


 err = get_host_u32(xdr, &tmp);
 if (err)
  return err;
 N = tmp;
 if ((3 + N) * sizeof(u32) != length)
  return -EINVAL;
 creds->cr_group_info = groups_alloc(N);
 if (creds->cr_group_info == ((void*)0))
  return -ENOMEM;


 for (i = 0; i < N; i++) {
  kgid_t kgid;
  err = get_host_u32(xdr, &tmp);
  if (err)
   goto out_free_groups;
  err = -EINVAL;
  kgid = make_kgid(&init_user_ns, tmp);
  if (!gid_valid(kgid))
   goto out_free_groups;
  creds->cr_group_info->gid[i] = kgid;
 }
 groups_sort(creds->cr_group_info);

 return 0;
out_free_groups:
 groups_free(creds->cr_group_info);
 return err;
}
