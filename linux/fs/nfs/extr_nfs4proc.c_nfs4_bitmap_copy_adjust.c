
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef int __u32 ;
struct TYPE_2__ {int cache_validity; } ;


 int FATTR4_WORD0_CHANGE ;
 int FATTR4_WORD0_SIZE ;
 int FMODE_READ ;
 int NFS4_BITMASK_SZ ;
 TYPE_1__* NFS_I (struct inode*) ;
 unsigned long NFS_INO_INVALID_CHANGE ;
 unsigned long NFS_INO_INVALID_SIZE ;
 unsigned long NFS_INO_REVAL_FORCED ;
 unsigned long READ_ONCE (int ) ;
 int memcpy (int *,int const*,int) ;
 int nfs4_have_delegation (struct inode*,int ) ;

__attribute__((used)) static void nfs4_bitmap_copy_adjust(__u32 *dst, const __u32 *src,
  struct inode *inode)
{
 unsigned long cache_validity;

 memcpy(dst, src, NFS4_BITMASK_SZ*sizeof(*dst));
 if (!inode || !nfs4_have_delegation(inode, FMODE_READ))
  return;

 cache_validity = READ_ONCE(NFS_I(inode)->cache_validity);
 if (!(cache_validity & NFS_INO_REVAL_FORCED))
  cache_validity &= ~(NFS_INO_INVALID_CHANGE
    | NFS_INO_INVALID_SIZE);

 if (!(cache_validity & NFS_INO_INVALID_SIZE))
  dst[0] &= ~FATTR4_WORD0_SIZE;

 if (!(cache_validity & NFS_INO_INVALID_CHANGE))
  dst[0] &= ~FATTR4_WORD0_CHANGE;
}
