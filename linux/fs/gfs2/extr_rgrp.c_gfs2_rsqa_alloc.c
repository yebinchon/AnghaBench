
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int dummy; } ;


 int gfs2_qa_alloc (struct gfs2_inode*) ;

int gfs2_rsqa_alloc(struct gfs2_inode *ip)
{
 return gfs2_qa_alloc(ip);
}
