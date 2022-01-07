
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_full_dirent {struct jffs2_full_dirent* next; } ;


 int jffs2_free_full_dirent (struct jffs2_full_dirent*) ;

__attribute__((used)) static void jffs2_free_full_dirent_list(struct jffs2_full_dirent *fd)
{
 struct jffs2_full_dirent *next;

 while (fd) {
  next = fd->next;
  jffs2_free_full_dirent(fd);
  fd = next;
 }
}
