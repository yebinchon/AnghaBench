
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nfs4_delay_interruptible (long*) ;
 int nfs4_delay_killable (long*) ;

__attribute__((used)) static int nfs4_delay(long *timeout, bool interruptible)
{
 if (interruptible)
  return nfs4_delay_interruptible(timeout);
 return nfs4_delay_killable(timeout);
}
