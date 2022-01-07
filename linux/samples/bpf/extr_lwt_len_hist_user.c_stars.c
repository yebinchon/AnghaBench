
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void stars(char *str, long val, long max, int width)
{
 int i;

 for (i = 0; i < (width * val / max) - 1 && i < width - 1; i++)
  str[i] = '*';
 if (val > max)
  str[i - 1] = '+';
 str[i] = '\0';
}
