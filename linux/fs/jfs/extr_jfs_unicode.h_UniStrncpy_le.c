
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __le16 ;



__attribute__((used)) static inline __le16 *UniStrncpy_le(__le16 * ucs1, const __le16 * ucs2,
      size_t n)
{
 __le16 *anchor = ucs1;

 while (n-- && *ucs2)
  *ucs1++ = *ucs2++;

 n++;
 while (n--)
  *ucs1++ = 0;
 return anchor;
}
