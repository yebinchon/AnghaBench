
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int mutex_reset; int mutex; int id_table_node; } ;


 int INIT_LIST_HEAD (int *) ;
 int __WIMAX_ST_NULL ;
 int __wimax_state_set (struct wimax_dev*,int ) ;
 int mutex_init (int *) ;

void wimax_dev_init(struct wimax_dev *wimax_dev)
{
 INIT_LIST_HEAD(&wimax_dev->id_table_node);
 __wimax_state_set(wimax_dev, __WIMAX_ST_NULL);
 mutex_init(&wimax_dev->mutex);
 mutex_init(&wimax_dev->mutex_reset);
}
