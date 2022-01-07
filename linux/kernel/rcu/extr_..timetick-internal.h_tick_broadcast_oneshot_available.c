
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tick_oneshot_possible () ;

__attribute__((used)) static inline bool tick_broadcast_oneshot_available(void) { return tick_oneshot_possible(); }
