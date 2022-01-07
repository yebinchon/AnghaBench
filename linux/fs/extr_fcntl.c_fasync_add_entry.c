
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct fasync_struct {int dummy; } ;


 int ENOMEM ;
 struct fasync_struct* fasync_alloc () ;
 int fasync_free (struct fasync_struct*) ;
 scalar_t__ fasync_insert_entry (int,struct file*,struct fasync_struct**,struct fasync_struct*) ;

__attribute__((used)) static int fasync_add_entry(int fd, struct file *filp, struct fasync_struct **fapp)
{
 struct fasync_struct *new;

 new = fasync_alloc();
 if (!new)
  return -ENOMEM;
 if (fasync_insert_entry(fd, filp, fapp, new)) {
  fasync_free(new);
  return 0;
 }

 return 1;
}
