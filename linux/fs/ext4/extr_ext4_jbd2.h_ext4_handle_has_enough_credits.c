
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int h_buffer_credits; } ;
typedef TYPE_1__ handle_t ;


 scalar_t__ ext4_handle_valid (TYPE_1__*) ;

__attribute__((used)) static inline int ext4_handle_has_enough_credits(handle_t *handle, int needed)
{
 if (ext4_handle_valid(handle) && handle->h_buffer_credits < needed)
  return 0;
 return 1;
}
