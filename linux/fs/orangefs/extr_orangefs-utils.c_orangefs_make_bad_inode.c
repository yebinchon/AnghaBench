
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int GOSSIP_UTILS_DEBUG ;
 int get_khandle_from_ino (struct inode*) ;
 int gossip_debug (int ,char*,int ) ;
 scalar_t__ is_root_handle (struct inode*) ;
 int make_bad_inode (struct inode*) ;

__attribute__((used)) static void orangefs_make_bad_inode(struct inode *inode)
{
 if (is_root_handle(inode)) {





  gossip_debug(GOSSIP_UTILS_DEBUG,
        "*** NOT making bad root inode %pU\n",
        get_khandle_from_ino(inode));
 } else {
  gossip_debug(GOSSIP_UTILS_DEBUG,
        "*** making bad inode %pU\n",
        get_khandle_from_ino(inode));
  make_bad_inode(inode);
 }
}
