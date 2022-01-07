
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long NFS4_POLL_RETRY_MAX ;
 long NFS4_POLL_RETRY_MIN ;

__attribute__((used)) static long nfs4_update_delay(long *timeout)
{
 long ret;
 if (!timeout)
  return NFS4_POLL_RETRY_MAX;
 if (*timeout <= 0)
  *timeout = NFS4_POLL_RETRY_MIN;
 if (*timeout > NFS4_POLL_RETRY_MAX)
  *timeout = NFS4_POLL_RETRY_MAX;
 ret = *timeout;
 *timeout <<= 1;
 return ret;
}
