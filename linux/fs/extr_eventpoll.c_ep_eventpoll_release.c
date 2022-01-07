
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct eventpoll* private_data; } ;
struct eventpoll {int dummy; } ;


 int ep_free (struct eventpoll*) ;

__attribute__((used)) static int ep_eventpoll_release(struct inode *inode, struct file *file)
{
 struct eventpoll *ep = file->private_data;

 if (ep)
  ep_free(ep);

 return 0;
}
