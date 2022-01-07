
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_congestion_ops {int name; } ;


 int TCP_CA_NAME_MAX ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 char* strncpy (char*,int ,int ) ;
 struct tcp_congestion_ops* tcp_ca_find_key (int ) ;

char *tcp_ca_get_name_by_key(u32 key, char *buffer)
{
 const struct tcp_congestion_ops *ca;
 char *ret = ((void*)0);

 rcu_read_lock();
 ca = tcp_ca_find_key(key);
 if (ca)
  ret = strncpy(buffer, ca->name,
         TCP_CA_NAME_MAX);
 rcu_read_unlock();

 return ret;
}
