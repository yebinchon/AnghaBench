
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mempolicy {int flags; } ;


 int MPOL_MODE_FLAGS ;

__attribute__((used)) static inline int mpol_store_user_nodemask(const struct mempolicy *pol)
{
 return pol->flags & MPOL_MODE_FLAGS;
}
