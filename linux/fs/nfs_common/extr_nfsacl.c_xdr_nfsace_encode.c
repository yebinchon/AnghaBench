
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_array2_desc {int dummy; } ;
struct posix_acl_entry {int e_tag; int e_perm; int e_gid; int e_uid; } ;
struct nfsacl_encode_desc {int typeflag; int gid; int uid; int count; TYPE_1__* acl; } ;
typedef int __be32 ;
struct TYPE_2__ {struct posix_acl_entry* a_entries; } ;






 int S_IRWXO ;
 int from_kgid (int *,int ) ;
 int from_kuid (int *,int ) ;
 void* htonl (int) ;
 int init_user_ns ;

__attribute__((used)) static int
xdr_nfsace_encode(struct xdr_array2_desc *desc, void *elem)
{
 struct nfsacl_encode_desc *nfsacl_desc =
  (struct nfsacl_encode_desc *) desc;
 __be32 *p = elem;

 struct posix_acl_entry *entry =
  &nfsacl_desc->acl->a_entries[nfsacl_desc->count++];

 *p++ = htonl(entry->e_tag | nfsacl_desc->typeflag);
 switch(entry->e_tag) {
  case 128:
   *p++ = htonl(from_kuid(&init_user_ns, nfsacl_desc->uid));
   break;
  case 130:
   *p++ = htonl(from_kgid(&init_user_ns, nfsacl_desc->gid));
   break;
  case 129:
   *p++ = htonl(from_kuid(&init_user_ns, entry->e_uid));
   break;
  case 131:
   *p++ = htonl(from_kgid(&init_user_ns, entry->e_gid));
   break;
  default:
   *p++ = 0;
   break;
 }
 *p++ = htonl(entry->e_perm & S_IRWXO);
 return 0;
}
