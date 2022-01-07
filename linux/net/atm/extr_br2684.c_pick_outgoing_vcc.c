
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct br2684_vcc {int dummy; } ;
struct TYPE_2__ {int next; } ;
struct br2684_dev {TYPE_1__ brvccs; } ;


 scalar_t__ list_empty (TYPE_1__*) ;
 struct br2684_vcc* list_entry_brvcc (int ) ;

__attribute__((used)) static inline struct br2684_vcc *pick_outgoing_vcc(const struct sk_buff *skb,
         const struct br2684_dev *brdev)
{
 return list_empty(&brdev->brvccs) ? ((void*)0) : list_entry_brvcc(brdev->brvccs.next);
}
