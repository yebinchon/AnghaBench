
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int handle_t ;


 unsigned long EXT4_NOJOURNAL_MAX_REF_COUNT ;

__attribute__((used)) static inline int ext4_handle_valid(handle_t *handle)
{
 if ((unsigned long)handle < EXT4_NOJOURNAL_MAX_REF_COUNT)
  return 0;
 return 1;
}
