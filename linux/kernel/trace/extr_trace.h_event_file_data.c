
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_2__ {int i_private; } ;


 void* READ_ONCE (int ) ;
 TYPE_1__* file_inode (struct file*) ;

__attribute__((used)) static inline void *event_file_data(struct file *filp)
{
 return READ_ONCE(file_inode(filp)->i_private);
}
