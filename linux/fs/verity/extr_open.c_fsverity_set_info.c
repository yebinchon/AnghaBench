
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_verity_info; } ;
struct fsverity_info {int dummy; } ;


 int * cmpxchg (int *,int *,struct fsverity_info*) ;
 int fsverity_free_info (struct fsverity_info*) ;

void fsverity_set_info(struct inode *inode, struct fsverity_info *vi)
{




 if (cmpxchg(&inode->i_verity_info, ((void*)0), vi) != ((void*)0))
  fsverity_free_info(vi);
}
