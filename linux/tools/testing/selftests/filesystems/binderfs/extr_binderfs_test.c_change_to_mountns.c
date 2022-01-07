
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLONE_NEWNS ;
 int MS_PRIVATE ;
 int MS_REC ;
 int errno ;
 int ksft_exit_fail_msg (char*,int ) ;
 int mount (int *,char*,int *,int,int ) ;
 int strerror (int ) ;
 int unshare (int ) ;

__attribute__((used)) static void change_to_mountns(void)
{
 int ret;

 ret = unshare(CLONE_NEWNS);
 if (ret < 0)
  ksft_exit_fail_msg("%s - Failed to unshare mount namespace\n",
       strerror(errno));

 ret = mount(((void*)0), "/", ((void*)0), MS_REC | MS_PRIVATE, 0);
 if (ret < 0)
  ksft_exit_fail_msg("%s - Failed to mount / as private\n",
       strerror(errno));
}
