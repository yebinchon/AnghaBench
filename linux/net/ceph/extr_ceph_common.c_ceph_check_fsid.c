
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_fsid {int dummy; } ;
struct ceph_client {int fsid; scalar_t__ have_fsid; } ;


 scalar_t__ ceph_fsid_compare (int *,struct ceph_fsid*) ;
 int memcpy (int *,struct ceph_fsid*,int) ;
 int pr_err (char*,int *,struct ceph_fsid*) ;

int ceph_check_fsid(struct ceph_client *client, struct ceph_fsid *fsid)
{
 if (client->have_fsid) {
  if (ceph_fsid_compare(&client->fsid, fsid)) {
   pr_err("bad fsid, had %pU got %pU",
          &client->fsid, fsid);
   return -1;
  }
 } else {
  memcpy(&client->fsid, fsid, sizeof(*fsid));
 }
 return 0;
}
