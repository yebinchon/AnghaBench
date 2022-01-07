
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct wpan_dev {int wpan_phy; scalar_t__ identifier; } ;
struct TYPE_2__ {scalar_t__ wpan_phy_idx; } ;


 TYPE_1__* wpan_phy_to_rdev (int ) ;

__attribute__((used)) static inline u64 wpan_dev_id(struct wpan_dev *wpan_dev)
{
 return (u64)wpan_dev->identifier |
        ((u64)wpan_phy_to_rdev(wpan_dev->wpan_phy)->wpan_phy_idx << 32);
}
