
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dq_hash; } ;


 int hlist_del_init (int *) ;

__attribute__((used)) static inline void remove_dquot_hash(struct dquot *dquot)
{
 hlist_del_init(&dquot->dq_hash);
}
