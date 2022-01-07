
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mnt_flags; } ;
struct mount {TYPE_1__ mnt; } ;


 int MNT_SHARED ;
 int MNT_SHARED_MASK ;

__attribute__((used)) static inline void set_mnt_shared(struct mount *mnt)
{
 mnt->mnt.mnt_flags &= ~MNT_SHARED_MASK;
 mnt->mnt.mnt_flags |= MNT_SHARED;
}
