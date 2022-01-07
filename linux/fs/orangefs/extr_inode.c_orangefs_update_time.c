
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
struct inode {int dummy; } ;
struct iattr {int ia_valid; } ;


 int ATTR_ATIME ;
 int ATTR_CTIME ;
 int ATTR_MTIME ;
 int GOSSIP_INODE_DEBUG ;
 int S_ATIME ;
 int S_CTIME ;
 int S_MTIME ;
 int __orangefs_setattr (struct inode*,struct iattr*) ;
 int generic_update_time (struct inode*,struct timespec64*,int) ;
 int get_khandle_from_ino (struct inode*) ;
 int gossip_debug (int ,char*,int ) ;
 int memset (struct iattr*,int ,int) ;

int orangefs_update_time(struct inode *inode, struct timespec64 *time, int flags)
{
 struct iattr iattr;
 gossip_debug(GOSSIP_INODE_DEBUG, "orangefs_update_time: %pU\n",
     get_khandle_from_ino(inode));
 generic_update_time(inode, time, flags);
 memset(&iattr, 0, sizeof iattr);
        if (flags & S_ATIME)
  iattr.ia_valid |= ATTR_ATIME;
 if (flags & S_CTIME)
  iattr.ia_valid |= ATTR_CTIME;
 if (flags & S_MTIME)
  iattr.ia_valid |= ATTR_MTIME;
 return __orangefs_setattr(inode, &iattr);
}
