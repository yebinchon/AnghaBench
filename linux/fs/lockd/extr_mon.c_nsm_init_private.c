
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int data; } ;
struct nsm_handle {TYPE_1__ sm_priv; } ;
typedef unsigned long s64 ;


 unsigned long ktime_get_ns () ;
 int put_unaligned (unsigned long,int *) ;

__attribute__((used)) static void nsm_init_private(struct nsm_handle *nsm)
{
 u64 *p = (u64 *)&nsm->sm_priv.data;
 s64 ns;

 ns = ktime_get_ns();
 put_unaligned(ns, p);
 put_unaligned((unsigned long)nsm, p + 1);
}
