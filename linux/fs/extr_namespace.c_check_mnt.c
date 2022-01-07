
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mount {scalar_t__ mnt_ns; } ;
struct TYPE_4__ {TYPE_1__* nsproxy; } ;
struct TYPE_3__ {scalar_t__ mnt_ns; } ;


 TYPE_2__* current ;

__attribute__((used)) static inline int check_mnt(struct mount *mnt)
{
 return mnt->mnt_ns == current->nsproxy->mnt_ns;
}
