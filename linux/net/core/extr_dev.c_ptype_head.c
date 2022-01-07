
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packet_type {scalar_t__ type; TYPE_1__* dev; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {struct list_head ptype_specific; struct list_head ptype_all; } ;


 int ETH_P_ALL ;
 size_t PTYPE_HASH_MASK ;
 scalar_t__ htons (int ) ;
 size_t ntohs (scalar_t__) ;
 struct list_head ptype_all ;
 struct list_head* ptype_base ;

__attribute__((used)) static inline struct list_head *ptype_head(const struct packet_type *pt)
{
 if (pt->type == htons(ETH_P_ALL))
  return pt->dev ? &pt->dev->ptype_all : &ptype_all;
 else
  return pt->dev ? &pt->dev->ptype_specific :
     &ptype_base[ntohs(pt->type) & PTYPE_HASH_MASK];
}
