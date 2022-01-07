; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_tx_iptunnel_user.c_usage.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_tx_iptunnel_user.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [156 x i8] c"Start a XDP prog which encapsulates incoming packets\0Ain an IPv4/v6 header and XDP_TX it out.  The dst <VIP:PORT>\0Ais used to select packets to encapsulate\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Usage: %s [...]\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"    -i <ifname|ifindex> Interface\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"    -a <vip-service-address> IPv4 or IPv6\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"    -p <vip-service-port> A port range (e.g. 433-444) is also allowed\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"    -s <source-ip> Used in the IPTunnel header\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"    -d <dest-ip> Used in the IPTunnel header\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"    -m <dest-MAC> Used in sending the IP Tunneled pkt\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"    -T <stop-after-X-seconds> Default: 0 (forever)\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"    -P <IP-Protocol> Default is TCP\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"    -S use skb-mode\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"    -N enforce native mode\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"    -F Force loading the XDP prog\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"    -h Display this help\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str, i64 0, i64 0))
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %4)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
