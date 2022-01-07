
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int NBITS ;
 int bitmap_scnprintf (unsigned long*,int ,char*,int) ;
 int free (unsigned long*) ;
 unsigned long* get_bitmap (char const*,int ) ;
 int pr_debug (char*,char*) ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static int test_bitmap(const char *str)
{
 unsigned long *bm = get_bitmap(str, NBITS);
 char buf[100];
 int ret;

 bitmap_scnprintf(bm, NBITS, buf, sizeof(buf));
 pr_debug("bitmap: %s\n", buf);

 ret = !strcmp(buf, str);
 free(bm);
 return ret;
}
