
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void usage(const char *cmd)
{
 printf("Start a XDP prog which encapsulates incoming packets\n"
        "in an IPv4/v6 header and XDP_TX it out.  The dst <VIP:PORT>\n"
        "is used to select packets to encapsulate\n\n");
 printf("Usage: %s [...]\n", cmd);
 printf("    -i <ifname|ifindex> Interface\n");
 printf("    -a <vip-service-address> IPv4 or IPv6\n");
 printf("    -p <vip-service-port> A port range (e.g. 433-444) is also allowed\n");
 printf("    -s <source-ip> Used in the IPTunnel header\n");
 printf("    -d <dest-ip> Used in the IPTunnel header\n");
 printf("    -m <dest-MAC> Used in sending the IP Tunneled pkt\n");
 printf("    -T <stop-after-X-seconds> Default: 0 (forever)\n");
 printf("    -P <IP-Protocol> Default is TCP\n");
 printf("    -S use skb-mode\n");
 printf("    -N enforce native mode\n");
 printf("    -F Force loading the XDP prog\n");
 printf("    -h Display this help\n");
}
