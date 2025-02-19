
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ quantum; scalar_t__ memory_limit; scalar_t__ limit; } ;
struct TYPE_5__ {TYPE_1__* wiphy; } ;
struct ieee80211_local {TYPE_3__ fq; TYPE_2__ hw; } ;
struct TYPE_4__ {scalar_t__ txq_quantum; scalar_t__ txq_memory_limit; scalar_t__ txq_limit; } ;



void ieee80211_txq_set_params(struct ieee80211_local *local)
{
 if (local->hw.wiphy->txq_limit)
  local->fq.limit = local->hw.wiphy->txq_limit;
 else
  local->hw.wiphy->txq_limit = local->fq.limit;

 if (local->hw.wiphy->txq_memory_limit)
  local->fq.memory_limit = local->hw.wiphy->txq_memory_limit;
 else
  local->hw.wiphy->txq_memory_limit = local->fq.memory_limit;

 if (local->hw.wiphy->txq_quantum)
  local->fq.quantum = local->hw.wiphy->txq_quantum;
 else
  local->hw.wiphy->txq_quantum = local->fq.quantum;
}
