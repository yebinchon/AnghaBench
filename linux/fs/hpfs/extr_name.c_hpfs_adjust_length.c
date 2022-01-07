
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void hpfs_adjust_length(const unsigned char *name, unsigned *len)
{
 if (!*len) return;
 if (*len == 1 && name[0] == '.') return;
 if (*len == 2 && name[0] == '.' && name[1] == '.') return;
 while (*len && (name[*len - 1] == '.' || name[*len - 1] == ' '))
  (*len)--;
}
