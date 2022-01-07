
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __be32 ;


 int snprintf (char*,unsigned int const,char*,scalar_t__ const*,char,scalar_t__ const*) ;

__attribute__((used)) static void tomoyo_print_ipv4(char *buffer, const unsigned int buffer_len,
         const __be32 *min_ip, const __be32 *max_ip)
{
 snprintf(buffer, buffer_len, "%pI4%c%pI4", min_ip,
   *min_ip == *max_ip ? '\0' : '-', max_ip);
}
