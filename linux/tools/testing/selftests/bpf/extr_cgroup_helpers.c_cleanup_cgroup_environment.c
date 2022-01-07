
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGROUP_MOUNT_PATH ;
 int FTW_DEPTH ;
 int FTW_MOUNT ;
 int PATH_MAX ;
 int WALK_FD_LIMIT ;
 int format_cgroup_path (char*,char*) ;
 int join_cgroup_from_top (int ) ;
 int nftw (char*,int ,int ,int) ;
 int nftwfunc ;

void cleanup_cgroup_environment(void)
{
 char cgroup_workdir[PATH_MAX + 1];

 format_cgroup_path(cgroup_workdir, "");
 join_cgroup_from_top(CGROUP_MOUNT_PATH);
 nftw(cgroup_workdir, nftwfunc, WALK_FD_LIMIT, FTW_DEPTH | FTW_MOUNT);
}
