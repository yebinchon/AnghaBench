
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int commit_sem; } ;


 int up_read (int *) ;

__attribute__((used)) static void finish_reservation(struct ubifs_info *c)
{
 up_read(&c->commit_sem);
}
