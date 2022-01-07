
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_KASAN_SW_TAGS ;
 scalar_t__ IS_ENABLED (int ) ;

__attribute__((used)) static inline unsigned int optimal_redzone(unsigned int object_size)
{
 if (IS_ENABLED(CONFIG_KASAN_SW_TAGS))
  return 0;

 return
  object_size <= 64 - 16 ? 16 :
  object_size <= 128 - 32 ? 32 :
  object_size <= 512 - 64 ? 64 :
  object_size <= 4096 - 128 ? 128 :
  object_size <= (1 << 14) - 256 ? 256 :
  object_size <= (1 << 15) - 512 ? 512 :
  object_size <= (1 << 16) - 1024 ? 1024 : 2048;
}
