
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nfsd_file_laundrette_ctl { ____Placeholder_nfsd_file_laundrette_ctl } nfsd_file_laundrette_ctl ;


 int NFSD_FILE_LAUNDRETTE_NOFLUSH ;
 long NFSD_FILE_LRU_LIMIT ;
 long NFSD_FILE_LRU_THRESHOLD ;
 int NFSD_FILE_SHUTDOWN ;
 int NFSD_LAUNDRETTE_DELAY ;
 long atomic_long_read (int *) ;
 int flush_delayed_work (int *) ;
 int mod_delayed_work (int ,int *,int ) ;
 int nfsd_file_lru_flags ;
 int nfsd_filecache_count ;
 int nfsd_filecache_laundrette ;
 int schedule_delayed_work (int *,int ) ;
 int system_wq ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
nfsd_file_schedule_laundrette(enum nfsd_file_laundrette_ctl ctl)
{
 long count = atomic_long_read(&nfsd_filecache_count);

 if (count == 0 || test_bit(NFSD_FILE_SHUTDOWN, &nfsd_file_lru_flags))
  return;


 if (count > NFSD_FILE_LRU_THRESHOLD)
  mod_delayed_work(system_wq, &nfsd_filecache_laundrette, 0);
 else
  schedule_delayed_work(&nfsd_filecache_laundrette, NFSD_LAUNDRETTE_DELAY);

 if (ctl == NFSD_FILE_LAUNDRETTE_NOFLUSH)
  return;


 if (count >= NFSD_FILE_LRU_LIMIT)
  flush_delayed_work(&nfsd_filecache_laundrette);
}
