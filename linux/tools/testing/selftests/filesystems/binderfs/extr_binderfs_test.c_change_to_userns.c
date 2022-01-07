
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int idmap ;
typedef int gid_t ;


 int CLONE_NEWUSER ;
 int ENOENT ;
 int errno ;
 int getgid () ;
 int getuid () ;
 int ksft_exit_fail_msg (char*,int ) ;
 int setgid (int ) ;
 int setuid (int ) ;
 int snprintf (char*,int,char*,int) ;
 int strerror (int ) ;
 int strlen (char*) ;
 int unshare (int ) ;
 int write_to_file (char*,char*,int ,int ) ;

__attribute__((used)) static void change_to_userns(void)
{
 int ret;
 uid_t uid;
 gid_t gid;

 char idmap[4096];

 uid = getuid();
 gid = getgid();

 ret = unshare(CLONE_NEWUSER);
 if (ret < 0)
  ksft_exit_fail_msg("%s - Failed to unshare user namespace\n",
       strerror(errno));

 write_to_file("/proc/self/setgroups", "deny", strlen("deny"), ENOENT);

 ret = snprintf(idmap, sizeof(idmap), "0 %d 1", uid);
 if (ret < 0 || (size_t)ret >= sizeof(idmap))
  ksft_exit_fail_msg("%s - Failed to prepare uid mapping\n",
       strerror(errno));

 write_to_file("/proc/self/uid_map", idmap, strlen(idmap), 0);

 ret = snprintf(idmap, sizeof(idmap), "0 %d 1", gid);
 if (ret < 0 || (size_t)ret >= sizeof(idmap))
  ksft_exit_fail_msg("%s - Failed to prepare uid mapping\n",
       strerror(errno));

 write_to_file("/proc/self/gid_map", idmap, strlen(idmap), 0);

 ret = setgid(0);
 if (ret)
  ksft_exit_fail_msg("%s - Failed to setgid(0)\n",
       strerror(errno));

 ret = setuid(0);
 if (ret)
  ksft_exit_fail_msg("%s - Failed to setgid(0)\n",
       strerror(errno));
}
