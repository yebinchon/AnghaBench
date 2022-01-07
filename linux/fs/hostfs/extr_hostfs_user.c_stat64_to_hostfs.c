
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat64 {int st_rdev; int st_blocks; int st_blksize; int st_mtime; int st_ctime; int st_atime; int st_size; int st_gid; int st_uid; int st_nlink; int st_mode; int st_ino; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct TYPE_4__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct hostfs_stat {int min; int maj; int blocks; int blksize; TYPE_3__ mtime; TYPE_2__ ctime; TYPE_1__ atime; int size; int gid; int uid; int nlink; int mode; int ino; } ;


 int os_major (int ) ;
 int os_minor (int ) ;

__attribute__((used)) static void stat64_to_hostfs(const struct stat64 *buf, struct hostfs_stat *p)
{
 p->ino = buf->st_ino;
 p->mode = buf->st_mode;
 p->nlink = buf->st_nlink;
 p->uid = buf->st_uid;
 p->gid = buf->st_gid;
 p->size = buf->st_size;
 p->atime.tv_sec = buf->st_atime;
 p->atime.tv_nsec = 0;
 p->ctime.tv_sec = buf->st_ctime;
 p->ctime.tv_nsec = 0;
 p->mtime.tv_sec = buf->st_mtime;
 p->mtime.tv_nsec = 0;
 p->blksize = buf->st_blksize;
 p->blocks = buf->st_blocks;
 p->maj = os_major(buf->st_rdev);
 p->min = os_minor(buf->st_rdev);
}
