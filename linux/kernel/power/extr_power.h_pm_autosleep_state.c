
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int PM_SUSPEND_ON ;

__attribute__((used)) static inline suspend_state_t pm_autosleep_state(void) { return PM_SUSPEND_ON; }
