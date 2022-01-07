
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct nlmsg_perm {scalar_t__ nlmsg_type; int perm; } ;


 int EINVAL ;

__attribute__((used)) static int nlmsg_perm(u16 nlmsg_type, u32 *perm, const struct nlmsg_perm *tab, size_t tabsize)
{
 int i, err = -EINVAL;

 for (i = 0; i < tabsize/sizeof(struct nlmsg_perm); i++)
  if (nlmsg_type == tab[i].nlmsg_type) {
   *perm = tab[i].perm;
   err = 0;
   break;
  }

 return err;
}
