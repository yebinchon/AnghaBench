
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nfs4_state_start () ;
 int nfsd_file_cache_init () ;
 int nfsd_file_cache_shutdown () ;
 int nfsd_users ;

__attribute__((used)) static int nfsd_startup_generic(int nrservs)
{
 int ret;

 if (nfsd_users++)
  return 0;

 ret = nfsd_file_cache_init();
 if (ret)
  goto dec_users;

 ret = nfs4_state_start();
 if (ret)
  goto out_file_cache;
 return 0;

out_file_cache:
 nfsd_file_cache_shutdown();
dec_users:
 nfsd_users--;
 return ret;
}
