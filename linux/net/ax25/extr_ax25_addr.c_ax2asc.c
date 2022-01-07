
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* ax25_call; } ;
typedef TYPE_1__ ax25_address ;



char *ax2asc(char *buf, const ax25_address *a)
{
 char c, *s;
 int n;

 for (n = 0, s = buf; n < 6; n++) {
  c = (a->ax25_call[n] >> 1) & 0x7F;

  if (c != ' ') *s++ = c;
 }

 *s++ = '-';

 if ((n = ((a->ax25_call[6] >> 1) & 0x0F)) > 9) {
  *s++ = '1';
  n -= 10;
 }

 *s++ = n + '0';
 *s++ = '\0';

 if (*buf == '\0' || *buf == '-')
    return "*";

 return buf;

}
