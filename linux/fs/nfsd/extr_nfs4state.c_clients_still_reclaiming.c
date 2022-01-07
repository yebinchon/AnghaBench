
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int boot_time; int nfsd4_lease; scalar_t__ reclaim_str_hashtbl_size; int somebody_reclaimed; int nr_reclaim_complete; scalar_t__ track_reclaim_completes; } ;


 scalar_t__ atomic_read (int *) ;
 unsigned long get_seconds () ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static bool clients_still_reclaiming(struct nfsd_net *nn)
{
 unsigned long now = get_seconds();
 unsigned long double_grace_period_end = nn->boot_time +
      2 * nn->nfsd4_lease;

 if (nn->track_reclaim_completes &&
   atomic_read(&nn->nr_reclaim_complete) ==
   nn->reclaim_str_hashtbl_size)
  return 0;
 if (!nn->somebody_reclaimed)
  return 0;
 nn->somebody_reclaimed = 0;




 if (time_after(now, double_grace_period_end))
  return 0;
 return 1;
}
