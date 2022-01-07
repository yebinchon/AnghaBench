
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_client {scalar_t__ auth_err; int fsid; int auth_wq; int monc; TYPE_1__* options; } ;
struct TYPE_2__ {unsigned long mount_timeout; } ;


 int ETIMEDOUT ;
 int ceph_client_gid (struct ceph_client*) ;
 int ceph_debugfs_client_init (struct ceph_client*) ;
 long ceph_monc_open_session (int *) ;
 int ceph_timeout_jiffies (unsigned long) ;
 int dout (char*) ;
 scalar_t__ have_mon_and_osd_map (struct ceph_client*) ;
 int jiffies ;
 int pr_info (char*,int ,int *) ;
 scalar_t__ time_after_eq (int ,unsigned long) ;
 long wait_event_interruptible_timeout (int ,int,int ) ;

int __ceph_open_session(struct ceph_client *client, unsigned long started)
{
 unsigned long timeout = client->options->mount_timeout;
 long err;


 err = ceph_monc_open_session(&client->monc);
 if (err < 0)
  return err;

 while (!have_mon_and_osd_map(client)) {
  if (timeout && time_after_eq(jiffies, started + timeout))
   return -ETIMEDOUT;


  dout("mount waiting for mon_map\n");
  err = wait_event_interruptible_timeout(client->auth_wq,
   have_mon_and_osd_map(client) || (client->auth_err < 0),
   ceph_timeout_jiffies(timeout));
  if (err < 0)
   return err;
  if (client->auth_err < 0)
   return client->auth_err;
 }

 pr_info("client%llu fsid %pU\n", ceph_client_gid(client),
  &client->fsid);
 ceph_debugfs_client_init(client);

 return 0;
}
