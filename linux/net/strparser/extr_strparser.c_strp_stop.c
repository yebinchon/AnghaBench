
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strparser {int stopped; } ;



void strp_stop(struct strparser *strp)
{
 strp->stopped = 1;
}
