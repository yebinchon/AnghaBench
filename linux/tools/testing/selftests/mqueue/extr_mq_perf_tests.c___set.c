
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ fprintf (int *,char*,int) ;
 int perror (char*) ;
 int rewind (int *) ;

__attribute__((used)) static inline void __set(FILE *stream, int value, char *err_msg)
{
 rewind(stream);
 if (fprintf(stream, "%d", value) < 0)
  perror(err_msg);
}
