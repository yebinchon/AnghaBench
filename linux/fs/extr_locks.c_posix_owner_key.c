
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {scalar_t__ fl_owner; } ;



__attribute__((used)) static unsigned long
posix_owner_key(struct file_lock *fl)
{
 return (unsigned long)fl->fl_owner;
}
