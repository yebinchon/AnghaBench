
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int binary__fprintf_t ;


 int binary__fprintf (unsigned char*,size_t,size_t,int ,void*,int ) ;
 int stdout ;

__attribute__((used)) static inline void print_binary(unsigned char *data, size_t len,
    size_t bytes_per_line, binary__fprintf_t printer,
    void *extra)
{
 binary__fprintf(data, len, bytes_per_line, printer, extra, stdout);
}
