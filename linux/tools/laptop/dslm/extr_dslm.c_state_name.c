
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *state_name(int i)
{
    if (i == -1) return "unknown";
    if (i == 0) return "sleeping";
    if (i == 1) return "active";

    return "internal error";
}
