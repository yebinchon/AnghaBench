
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct orangefs_object_kref {int khandle; int fs_id; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {int khandle; int fs_id; } ;
struct TYPE_4__ {scalar_t__ bitlock; scalar_t__ mapping_time; int xattr_cache; scalar_t__ attr_valid; TYPE_1__ refn; } ;


 TYPE_2__* ORANGEFS_I (struct inode*) ;
 int hash_init (int ) ;
 scalar_t__ jiffies ;

__attribute__((used)) static int orangefs_set_inode(struct inode *inode, void *data)
{
 struct orangefs_object_kref *ref = (struct orangefs_object_kref *) data;
 ORANGEFS_I(inode)->refn.fs_id = ref->fs_id;
 ORANGEFS_I(inode)->refn.khandle = ref->khandle;
 ORANGEFS_I(inode)->attr_valid = 0;
 hash_init(ORANGEFS_I(inode)->xattr_cache);
 ORANGEFS_I(inode)->mapping_time = jiffies - 1;
 ORANGEFS_I(inode)->bitlock = 0;
 return 0;
}
