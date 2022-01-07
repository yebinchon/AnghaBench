
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_conn_path {int cp_state; } ;


 int atomic_cmpxchg (int *,int,int) ;

__attribute__((used)) static inline int
rds_conn_path_transition(struct rds_conn_path *cp, int old, int new)
{
 return atomic_cmpxchg(&cp->cp_state, old, new) == old;
}
