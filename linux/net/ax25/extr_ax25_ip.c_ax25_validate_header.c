
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ax25_digi ;


 int ax25_addr_parse (char const*,unsigned int,int *,int *,int *,int *,int *) ;

__attribute__((used)) static bool ax25_validate_header(const char *header, unsigned int len)
{
 ax25_digi digi;

 if (!len)
  return 0;

 if (header[0])
  return 1;

 return ax25_addr_parse(header + 1, len - 1, ((void*)0), ((void*)0), &digi, ((void*)0),
          ((void*)0));
}
