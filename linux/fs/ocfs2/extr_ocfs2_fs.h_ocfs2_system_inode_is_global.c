
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCFS2_LAST_GLOBAL_SYSTEM_INODE ;

__attribute__((used)) static inline int ocfs2_system_inode_is_global(int type)
{
 return ((type >= 0) &&
  (type <= OCFS2_LAST_GLOBAL_SYSTEM_INODE));
}
