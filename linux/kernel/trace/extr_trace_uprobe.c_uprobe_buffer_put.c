
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uprobe_cpu_buffer {int mutex; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static void uprobe_buffer_put(struct uprobe_cpu_buffer *ucb)
{
 mutex_unlock(&ucb->mutex);
}
