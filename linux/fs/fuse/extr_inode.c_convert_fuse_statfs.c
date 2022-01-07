
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kstatfs {int f_namelen; int f_ffree; int f_files; int f_bavail; int f_bfree; int f_blocks; int f_frsize; int f_bsize; int f_type; } ;
struct fuse_kstatfs {int namelen; int ffree; int files; int bavail; int bfree; int blocks; int frsize; int bsize; } ;


 int FUSE_SUPER_MAGIC ;

__attribute__((used)) static void convert_fuse_statfs(struct kstatfs *stbuf, struct fuse_kstatfs *attr)
{
 stbuf->f_type = FUSE_SUPER_MAGIC;
 stbuf->f_bsize = attr->bsize;
 stbuf->f_frsize = attr->frsize;
 stbuf->f_blocks = attr->blocks;
 stbuf->f_bfree = attr->bfree;
 stbuf->f_bavail = attr->bavail;
 stbuf->f_files = attr->files;
 stbuf->f_ffree = attr->ffree;
 stbuf->f_namelen = attr->namelen;

}
