
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int pr_crit_once (char*) ;

__attribute__((used)) static void err_broadcast(const struct cpumask *mask)
{
 pr_crit_once("Failed to broadcast timer tick. Some CPUs may be unresponsive.\n");
}
