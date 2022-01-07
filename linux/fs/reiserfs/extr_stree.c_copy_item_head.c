
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item_head {int dummy; } ;


 int IH_SIZE ;
 int memcpy (struct item_head*,struct item_head const*,int ) ;

inline void copy_item_head(struct item_head *to,
      const struct item_head *from)
{
 memcpy(to, from, IH_SIZE);
}
