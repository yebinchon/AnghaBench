
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int suspend_state_t ;
struct TYPE_2__ {scalar_t__ (* valid ) (int ) ;} ;


 scalar_t__ stub1 (int ) ;
 TYPE_1__* suspend_ops ;

__attribute__((used)) static bool valid_state(suspend_state_t state)
{





 return suspend_ops && suspend_ops->valid && suspend_ops->valid(state);
}
