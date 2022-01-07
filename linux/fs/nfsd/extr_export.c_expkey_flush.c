
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* nsproxy; } ;
struct TYPE_3__ {int net_ns; } ;


 TYPE_2__* current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfsd_file_cache_purge (int ) ;
 int nfsd_mutex ;

__attribute__((used)) static void expkey_flush(void)
{




 mutex_lock(&nfsd_mutex);
 nfsd_file_cache_purge(current->nsproxy->net_ns);
 mutex_unlock(&nfsd_mutex);
}
