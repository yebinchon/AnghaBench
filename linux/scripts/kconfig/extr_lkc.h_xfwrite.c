
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int assert (int) ;
 int fprintf (int ,char*) ;
 size_t fwrite (void const*,size_t,size_t,int *) ;
 int stderr ;

__attribute__((used)) static inline void xfwrite(const void *str, size_t len, size_t count, FILE *out)
{
 assert(len != 0);

 if (fwrite(str, len, count, out) != count)
  fprintf(stderr, "Error in writing or end of file.\n");
}
