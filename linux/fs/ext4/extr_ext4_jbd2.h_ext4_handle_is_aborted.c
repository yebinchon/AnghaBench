
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int handle_t ;


 scalar_t__ ext4_handle_valid (int *) ;
 int is_handle_aborted (int *) ;

__attribute__((used)) static inline int ext4_handle_is_aborted(handle_t *handle)
{
 if (ext4_handle_valid(handle))
  return is_handle_aborted(handle);
 return 0;
}
