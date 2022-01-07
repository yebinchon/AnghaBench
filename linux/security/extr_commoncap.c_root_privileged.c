
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SECURE_NOROOT ;
 int issecure (int ) ;

__attribute__((used)) static inline bool root_privileged(void) { return !issecure(SECURE_NOROOT); }
