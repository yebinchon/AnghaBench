
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CONFIG_FANOTIFY_ACCESS_PERMISSIONS ;
 int FANOTIFY_PERM_EVENTS ;
 scalar_t__ IS_ENABLED (int ) ;

__attribute__((used)) static inline bool fanotify_is_perm_event(u32 mask)
{
 return IS_ENABLED(CONFIG_FANOTIFY_ACCESS_PERMISSIONS) &&
  mask & FANOTIFY_PERM_EVENTS;
}
