
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_flags; } ;


 int O_DIRECT ;

__attribute__((used)) static inline int is_packetized(struct file *file)
{
 return (file->f_flags & O_DIRECT) != 0;
}
