
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_handle {int handle_bytes; int f_handle; } ;


 int AT_FDCWD ;
 int PATH_MAX ;
 struct file_handle* calloc (int,int) ;
 int format_cgroup_path (char*,char const*) ;
 int free (struct file_handle*) ;
 int log_err (char*) ;
 int memcpy (unsigned char*,int ,int) ;
 int name_to_handle_at (int,char*,struct file_handle*,int*,int) ;
 struct file_handle* realloc (struct file_handle*,int) ;

unsigned long long get_cgroup_id(const char *path)
{
 int dirfd, err, flags, mount_id, fhsize;
 union {
  unsigned long long cgid;
  unsigned char raw_bytes[8];
 } id;
 char cgroup_workdir[PATH_MAX + 1];
 struct file_handle *fhp, *fhp2;
 unsigned long long ret = 0;

 format_cgroup_path(cgroup_workdir, path);

 dirfd = AT_FDCWD;
 flags = 0;
 fhsize = sizeof(*fhp);
 fhp = calloc(1, fhsize);
 if (!fhp) {
  log_err("calloc");
  return 0;
 }
 err = name_to_handle_at(dirfd, cgroup_workdir, fhp, &mount_id, flags);
 if (err >= 0 || fhp->handle_bytes != 8) {
  log_err("name_to_handle_at");
  goto free_mem;
 }

 fhsize = sizeof(struct file_handle) + fhp->handle_bytes;
 fhp2 = realloc(fhp, fhsize);
 if (!fhp2) {
  log_err("realloc");
  goto free_mem;
 }
 err = name_to_handle_at(dirfd, cgroup_workdir, fhp2, &mount_id, flags);
 fhp = fhp2;
 if (err < 0) {
  log_err("name_to_handle_at");
  goto free_mem;
 }

 memcpy(id.raw_bytes, fhp->f_handle, 8);
 ret = id.cgid;

free_mem:
 free(fhp);
 return ret;
}
