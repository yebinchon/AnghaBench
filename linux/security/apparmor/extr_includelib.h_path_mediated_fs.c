
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {int s_flags; } ;


 int SB_NOUSER ;

__attribute__((used)) static inline bool path_mediated_fs(struct dentry *dentry)
{
 return !(dentry->d_sb->s_flags & SB_NOUSER);
}
