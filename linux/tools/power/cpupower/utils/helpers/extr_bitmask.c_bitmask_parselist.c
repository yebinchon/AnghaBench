
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmask {unsigned int size; } ;


 int _setbit (struct bitmask*,unsigned int,int) ;
 int bitmask_clearall (struct bitmask*) ;
 char* nexttoken (char const*,char) ;
 int scan_was_ok (int,char,char*) ;
 int sscanf (char const*,char*,unsigned int*,char*) ;

int bitmask_parselist(const char *buf, struct bitmask *bmp)
{
 const char *p, *q;

 bitmask_clearall(bmp);

 q = buf;
 while (p = q, q = nexttoken(q, ','), p) {
  unsigned int a;
  unsigned int b;
  unsigned int s;
  const char *c1, *c2;
  char nextc;
  int sret;

  sret = sscanf(p, "%u%c", &a, &nextc);
  if (!scan_was_ok(sret, nextc, ",-"))
   goto err;
  b = a;
  s = 1;
  c1 = nexttoken(p, '-');
  c2 = nexttoken(p, ',');
  if (c1 != ((void*)0) && (c2 == ((void*)0) || c1 < c2)) {
   sret = sscanf(c1, "%u%c", &b, &nextc);
   if (!scan_was_ok(sret, nextc, ",:"))
    goto err;
   c1 = nexttoken(c1, ':');
   if (c1 != ((void*)0) && (c2 == ((void*)0) || c1 < c2)) {
    sret = sscanf(c1, "%u%c", &s, &nextc);
    if (!scan_was_ok(sret, nextc, ","))
     goto err;
   }
  }
  if (!(a <= b))
   goto err;
  if (b >= bmp->size)
   goto err;
  while (a <= b) {
   _setbit(bmp, a, 1);
   a += s;
  }
 }
 return 0;
err:
 bitmask_clearall(bmp);
 return -1;
}
