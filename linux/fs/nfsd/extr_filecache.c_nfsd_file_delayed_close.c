
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int LIST_HEAD (int ) ;
 int LONG_MAX ;
 int NFSD_FILE_LAUNDRETTE_NOFLUSH ;
 int NFSD_FILE_LRU_RESCAN ;
 int flush_delayed_fput () ;
 int head ;
 int list_empty (int *) ;
 int list_lru_walk (int *,int ,int *,int ) ;
 int nfsd_file_lru ;
 int nfsd_file_lru_cb ;
 int nfsd_file_lru_dispose (int *) ;
 int nfsd_file_lru_flags ;
 int nfsd_file_schedule_laundrette (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
nfsd_file_delayed_close(struct work_struct *work)
{
 LIST_HEAD(head);

 list_lru_walk(&nfsd_file_lru, nfsd_file_lru_cb, &head, LONG_MAX);

 if (test_and_clear_bit(NFSD_FILE_LRU_RESCAN, &nfsd_file_lru_flags))
  nfsd_file_schedule_laundrette(NFSD_FILE_LAUNDRETTE_NOFLUSH);

 if (!list_empty(&head)) {
  nfsd_file_lru_dispose(&head);
  flush_delayed_fput();
 }
}
