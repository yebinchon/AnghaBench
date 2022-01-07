
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned short ACL_EXECUTE ;
 unsigned short ACL_READ ;
 unsigned short ACL_WRITE ;
 int NFS4_ACE_DELETE_CHILD ;
 unsigned int NFS4_ACL_DIR ;
 unsigned int NFS4_ACL_OWNER ;
 int NFS4_ANYONE_MODE ;
 int NFS4_EXECUTE_MODE ;
 int NFS4_OWNER_MODE ;
 int NFS4_READ_MODE ;
 int NFS4_WRITE_MODE ;

__attribute__((used)) static u32
mask_from_posix(unsigned short perm, unsigned int flags)
{
 int mask = NFS4_ANYONE_MODE;

 if (flags & NFS4_ACL_OWNER)
  mask |= NFS4_OWNER_MODE;
 if (perm & ACL_READ)
  mask |= NFS4_READ_MODE;
 if (perm & ACL_WRITE)
  mask |= NFS4_WRITE_MODE;
 if ((perm & ACL_WRITE) && (flags & NFS4_ACL_DIR))
  mask |= NFS4_ACE_DELETE_CHILD;
 if (perm & ACL_EXECUTE)
  mask |= NFS4_EXECUTE_MODE;
 return mask;
}
