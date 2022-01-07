
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_saif {size_t master_id; } ;


 struct mxs_saif** mxs_saif ;

__attribute__((used)) static inline struct mxs_saif *mxs_saif_get_master(struct mxs_saif * saif)
{
 return mxs_saif[saif->master_id];
}
