
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {void* data; } ;


 TYPE_1__* PDE (struct inode const*) ;

__attribute__((used)) static inline void *__PDE_DATA(const struct inode *inode)
{
 return PDE(inode)->data;
}
