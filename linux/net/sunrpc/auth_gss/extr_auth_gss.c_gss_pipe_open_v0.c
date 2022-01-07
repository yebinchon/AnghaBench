
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int gss_pipe_open (struct inode*,int ) ;

__attribute__((used)) static int gss_pipe_open_v0(struct inode *inode)
{
 return gss_pipe_open(inode, 0);
}
