
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_key_payload {char* data; int datalen; } ;
struct key {int dummy; } ;
struct fscache_objlist_data {unsigned long config; } ;


 unsigned long FSCACHE_OBJLIST_CONFIG_AUX ;
 unsigned long FSCACHE_OBJLIST_CONFIG_BUSY ;
 unsigned long FSCACHE_OBJLIST_CONFIG_COOKIE ;
 unsigned long FSCACHE_OBJLIST_CONFIG_EVENTS ;
 unsigned long FSCACHE_OBJLIST_CONFIG_IDLE ;
 unsigned long FSCACHE_OBJLIST_CONFIG_KEY ;
 unsigned long FSCACHE_OBJLIST_CONFIG_NOCOOKIE ;
 unsigned long FSCACHE_OBJLIST_CONFIG_NOEVENTS ;
 unsigned long FSCACHE_OBJLIST_CONFIG_NOPENDWR ;
 unsigned long FSCACHE_OBJLIST_CONFIG_NOREADS ;
 unsigned long FSCACHE_OBJLIST_CONFIG_NOWORK ;
 unsigned long FSCACHE_OBJLIST_CONFIG_PENDWR ;
 unsigned long FSCACHE_OBJLIST_CONFIG_READS ;
 unsigned long FSCACHE_OBJLIST_CONFIG_WORK ;
 scalar_t__ IS_ERR (struct key*) ;
 unsigned long ULONG_MAX ;
 int key_put (struct key*) ;
 int key_type_user ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct key* request_key (int *,char*,int *) ;
 struct user_key_payload* user_key_payload_rcu (struct key*) ;

__attribute__((used)) static void fscache_objlist_config(struct fscache_objlist_data *data)
{
 data->config = ULONG_MAX;
}
