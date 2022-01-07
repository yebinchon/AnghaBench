
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,int) ;
 int get (int *) ;
 int rewind (int *) ;

__attribute__((used)) static inline int try_set(FILE *stream, int value)
{
 int new_value;

 rewind(stream);
 fprintf(stream, "%d", value);
 new_value = get(stream);
 return new_value == value;
}
