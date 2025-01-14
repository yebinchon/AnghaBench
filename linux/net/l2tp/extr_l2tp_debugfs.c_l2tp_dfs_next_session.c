
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2tp_dfs_seq_data {scalar_t__ session_idx; int * session; int tunnel; } ;


 int l2tp_dfs_next_tunnel (struct l2tp_dfs_seq_data*) ;
 int l2tp_session_dec_refcount (int *) ;
 int * l2tp_session_get_nth (int ,scalar_t__) ;

__attribute__((used)) static void l2tp_dfs_next_session(struct l2tp_dfs_seq_data *pd)
{

 if (pd->session)
  l2tp_session_dec_refcount(pd->session);

 pd->session = l2tp_session_get_nth(pd->tunnel, pd->session_idx);
 pd->session_idx++;

 if (pd->session == ((void*)0)) {
  pd->session_idx = 0;
  l2tp_dfs_next_tunnel(pd);
 }

}
