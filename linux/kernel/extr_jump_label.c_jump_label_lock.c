
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jump_label_mutex ;
 int mutex_lock (int *) ;

void jump_label_lock(void)
{
 mutex_lock(&jump_label_mutex);
}
