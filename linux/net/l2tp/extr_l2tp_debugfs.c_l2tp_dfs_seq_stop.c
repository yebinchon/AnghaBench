
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct l2tp_dfs_seq_data {int * tunnel; int * session; } ;


 struct l2tp_dfs_seq_data* SEQ_START_TOKEN ;
 int l2tp_session_dec_refcount (int *) ;
 int l2tp_tunnel_dec_refcount (int *) ;

__attribute__((used)) static void l2tp_dfs_seq_stop(struct seq_file *p, void *v)
{
 struct l2tp_dfs_seq_data *pd = v;

 if (!pd || pd == SEQ_START_TOKEN)
  return;




 if (pd->session) {
  l2tp_session_dec_refcount(pd->session);
  pd->session = ((void*)0);
 }
 if (pd->tunnel) {
  l2tp_tunnel_dec_refcount(pd->tunnel);
  pd->tunnel = ((void*)0);
 }
}
