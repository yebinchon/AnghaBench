
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int state; int mutex; } ;
typedef enum wimax_st { ____Placeholder_wimax_st } wimax_st ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

enum wimax_st wimax_state_get(struct wimax_dev *wimax_dev)
{
 enum wimax_st state;
 mutex_lock(&wimax_dev->mutex);
 state = wimax_dev->state;
 mutex_unlock(&wimax_dev->mutex);
 return state;
}
