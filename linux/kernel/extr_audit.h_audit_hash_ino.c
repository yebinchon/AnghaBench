
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AUDIT_INODE_BUCKETS ;

__attribute__((used)) static inline int audit_hash_ino(u32 ino)
{
 return (ino & (AUDIT_INODE_BUCKETS-1));
}
