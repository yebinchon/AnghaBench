
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int p9_fd_trans ;
 int p9_tcp_trans ;
 int p9_unix_trans ;
 int v9fs_register_trans (int *) ;

int p9_trans_fd_init(void)
{
 v9fs_register_trans(&p9_tcp_trans);
 v9fs_register_trans(&p9_unix_trans);
 v9fs_register_trans(&p9_fd_trans);

 return 0;
}
