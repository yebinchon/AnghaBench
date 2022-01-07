
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ base_seq; int commit_mutex; } ;
struct net {TYPE_1__ nft; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static bool nf_tables_valid_genid(struct net *net, u32 genid)
{
 bool genid_ok;

 mutex_lock(&net->nft.commit_mutex);

 genid_ok = genid == 0 || net->nft.base_seq == genid;
 if (!genid_ok)
  mutex_unlock(&net->nft.commit_mutex);


 return genid_ok;
}
