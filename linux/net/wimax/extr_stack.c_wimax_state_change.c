
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {scalar_t__ state; int mutex; } ;
typedef enum wimax_st { ____Placeholder_wimax_st } wimax_st ;


 scalar_t__ __WIMAX_ST_NULL ;
 int __wimax_state_change (struct wimax_dev*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void wimax_state_change(struct wimax_dev *wimax_dev, enum wimax_st new_state)
{
 mutex_lock(&wimax_dev->mutex);
 if (wimax_dev->state > __WIMAX_ST_NULL)
  __wimax_state_change(wimax_dev, new_state);
 mutex_unlock(&wimax_dev->mutex);
}
