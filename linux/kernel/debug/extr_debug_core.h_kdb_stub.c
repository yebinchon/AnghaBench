
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgdb_state {int dummy; } ;


 int DBG_PASS_EVENT ;

__attribute__((used)) static inline int kdb_stub(struct kgdb_state *ks)
{
 return DBG_PASS_EVENT;
}
