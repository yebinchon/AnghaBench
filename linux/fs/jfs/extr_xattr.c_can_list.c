
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jfs_ea {int name; } ;


 int CAP_SYS_ADMIN ;
 int XATTR_TRUSTED_PREFIX ;
 int XATTR_TRUSTED_PREFIX_LEN ;
 scalar_t__ capable (int ) ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static inline int can_list(struct jfs_ea *ea)
{
 return (strncmp(ea->name, XATTR_TRUSTED_PREFIX,
       XATTR_TRUSTED_PREFIX_LEN) ||
  capable(CAP_SYS_ADMIN));
}
