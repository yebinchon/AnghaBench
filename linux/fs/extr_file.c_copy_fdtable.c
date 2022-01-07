
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct fdtable {int max_fds; scalar_t__ fd; } ;


 int BUG_ON (int) ;
 int copy_fd_bitmaps (struct fdtable*,struct fdtable*,int) ;
 int memcpy (scalar_t__,scalar_t__,unsigned int) ;
 int memset (char*,int ,unsigned int) ;

__attribute__((used)) static void copy_fdtable(struct fdtable *nfdt, struct fdtable *ofdt)
{
 unsigned int cpy, set;

 BUG_ON(nfdt->max_fds < ofdt->max_fds);

 cpy = ofdt->max_fds * sizeof(struct file *);
 set = (nfdt->max_fds - ofdt->max_fds) * sizeof(struct file *);
 memcpy(nfdt->fd, ofdt->fd, cpy);
 memset((char *)nfdt->fd + cpy, 0, set);

 copy_fd_bitmaps(nfdt, ofdt, ofdt->max_fds);
}
