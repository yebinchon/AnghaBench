
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs64 {long f_bsize; long long f_blocks; long long f_bfree; long long f_bavail; long long f_files; long long f_ffree; long f_namelen; int f_fsid; } ;


 int errno ;
 int memcpy (void*,int *,int) ;
 int statfs64 (char*,struct statfs64*) ;

int do_statfs(char *root, long *bsize_out, long long *blocks_out,
       long long *bfree_out, long long *bavail_out,
       long long *files_out, long long *ffree_out,
       void *fsid_out, int fsid_size, long *namelen_out)
{
 struct statfs64 buf;
 int err;

 err = statfs64(root, &buf);
 if (err < 0)
  return -errno;

 *bsize_out = buf.f_bsize;
 *blocks_out = buf.f_blocks;
 *bfree_out = buf.f_bfree;
 *bavail_out = buf.f_bavail;
 *files_out = buf.f_files;
 *ffree_out = buf.f_ffree;
 memcpy(fsid_out, &buf.f_fsid,
        sizeof(buf.f_fsid) > fsid_size ? fsid_size :
        sizeof(buf.f_fsid));
 *namelen_out = buf.f_namelen;

 return 0;
}
