
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct orangefs_khandle {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {struct orangefs_khandle khandle; } ;
struct TYPE_4__ {TYPE_1__ refn; } ;


 TYPE_2__* ORANGEFS_I (struct inode*) ;

__attribute__((used)) static inline struct orangefs_khandle *get_khandle_from_ino(struct inode *inode)
{
 return &(ORANGEFS_I(inode)->refn.khandle);
}
