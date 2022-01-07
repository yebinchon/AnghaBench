
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nfs4_state_shutdown () ;
 int nfsd_file_cache_shutdown () ;
 scalar_t__ nfsd_users ;

__attribute__((used)) static void nfsd_shutdown_generic(void)
{
 if (--nfsd_users)
  return;

 nfs4_state_shutdown();
 nfsd_file_cache_shutdown();
}
