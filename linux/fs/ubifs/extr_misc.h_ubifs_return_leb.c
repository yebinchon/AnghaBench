
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;


 int LPROPS_NC ;
 int LPROPS_TAKEN ;
 int ubifs_change_one_lp (struct ubifs_info*,int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline int ubifs_return_leb(struct ubifs_info *c, int lnum)
{
 return ubifs_change_one_lp(c, lnum, LPROPS_NC, LPROPS_NC, 0,
       LPROPS_TAKEN, 0);
}
