
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ filename__read_str (char*,char**,size_t*) ;
 int free (char*) ;
 int sscanf (char*,char*,int*) ;

__attribute__((used)) static int get_max_num(char *path, int *max)
{
 size_t num;
 char *buf;
 int err = 0;

 if (filename__read_str(path, &buf, &num))
  return -1;

 buf[num] = '\0';


 while (--num) {
  if ((buf[num] == ',') || (buf[num] == '-')) {
   num++;
   break;
  }
 }
 if (sscanf(&buf[num], "%d", max) < 1) {
  err = -1;
  goto out;
 }


 (*max)++;

out:
 free(buf);
 return err;
}
