
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct orangefs_object_kref {scalar_t__ fs_id; int khandle; } ;
struct TYPE_2__ {scalar_t__ fs_id; int khandle; } ;
struct orangefs_inode_s {TYPE_1__ refn; } ;
struct inode {int dummy; } ;


 struct orangefs_inode_s* ORANGEFS_I (struct inode*) ;
 int ORANGEFS_khandle_cmp (int *,int *) ;

__attribute__((used)) static int orangefs_test_inode(struct inode *inode, void *data)
{
 struct orangefs_object_kref *ref = (struct orangefs_object_kref *) data;
 struct orangefs_inode_s *orangefs_inode = ((void*)0);

 orangefs_inode = ORANGEFS_I(inode);

 return (!ORANGEFS_khandle_cmp(&(orangefs_inode->refn.khandle),
    &(ref->khandle)) &&
   orangefs_inode->refn.fs_id == ref->fs_id);
}
