
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;
struct dlm_ctxt {struct hlist_head** lockres_hash; } ;


 unsigned int DLM_BUCKETS_PER_PAGE ;
 unsigned int DLM_HASH_PAGES ;

__attribute__((used)) static inline struct hlist_head *dlm_lockres_hash(struct dlm_ctxt *dlm, unsigned i)
{
 return dlm->lockres_hash[(i / DLM_BUCKETS_PER_PAGE) % DLM_HASH_PAGES] + (i % DLM_BUCKETS_PER_PAGE);
}
