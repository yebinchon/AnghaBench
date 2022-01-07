
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int nilfs_truncate_logs (struct list_head*,int *) ;

__attribute__((used)) static inline void nilfs_destroy_logs(struct list_head *logs)
{
 nilfs_truncate_logs(logs, ((void*)0));
}
