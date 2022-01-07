
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 int seekdir (int *,unsigned long long) ;

void seek_dir(void *stream, unsigned long long pos)
{
 DIR *dir = stream;

 seekdir(dir, pos);
}
