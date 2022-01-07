
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {scalar_t__ mnt_group_id; } ;



__attribute__((used)) static inline bool peers(struct mount *m1, struct mount *m2)
{
 return m1->mnt_group_id == m2->mnt_group_id && m1->mnt_group_id;
}
