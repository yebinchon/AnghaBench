
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jfs_dirent {int name_len; } ;
typedef int loff_t ;



__attribute__((used)) static inline struct jfs_dirent *next_jfs_dirent(struct jfs_dirent *dirent)
{
 return (struct jfs_dirent *)
  ((char *)dirent +
   ((sizeof (struct jfs_dirent) + dirent->name_len + 1 +
     sizeof (loff_t) - 1) &
    ~(sizeof (loff_t) - 1)));
}
