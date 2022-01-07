
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {int debug_dir; } ;


 int BATADV_ICMP_SOCKET ;
 int batadv_fops ;
 int debugfs_create_file (int ,int,int ,struct batadv_priv*,int *) ;

void batadv_socket_setup(struct batadv_priv *bat_priv)
{
 debugfs_create_file(BATADV_ICMP_SOCKET, 0600, bat_priv->debug_dir,
       bat_priv, &batadv_fops);
}
