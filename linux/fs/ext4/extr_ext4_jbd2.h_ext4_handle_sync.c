
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int h_sync; } ;
typedef TYPE_1__ handle_t ;


 scalar_t__ ext4_handle_valid (TYPE_1__*) ;

__attribute__((used)) static inline void ext4_handle_sync(handle_t *handle)
{
 if (ext4_handle_valid(handle))
  handle->h_sync = 1;
}
