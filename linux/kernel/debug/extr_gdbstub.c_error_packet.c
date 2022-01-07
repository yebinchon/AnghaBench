
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* hex_asc ;

__attribute__((used)) static void error_packet(char *pkt, int error)
{
 error = -error;
 pkt[0] = 'E';
 pkt[1] = hex_asc[(error / 10)];
 pkt[2] = hex_asc[(error % 10)];
 pkt[3] = '\0';
}
