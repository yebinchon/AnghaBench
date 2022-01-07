
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_client {int mount_mutex; } ;


 int __ceph_open_session (struct ceph_client*,unsigned long) ;
 int dout (char*) ;
 unsigned long jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ceph_open_session(struct ceph_client *client)
{
 int ret;
 unsigned long started = jiffies;

 dout("open_session start\n");
 mutex_lock(&client->mount_mutex);

 ret = __ceph_open_session(client, started);

 mutex_unlock(&client->mount_mutex);
 return ret;
}
