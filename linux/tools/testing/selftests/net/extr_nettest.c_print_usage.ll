; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_print_usage.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_print_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1311 x i8] c"usage: %s OPTS\0ARequired:\0A    -r addr       remote address to connect to (client mode only)\0A    -p port       port to connect to (client mode)/listen on (server mode)\0A                  (default: %d)\0A    -s            server mode (default: client mode)\0A    -t            timeout seconds (default: none)\0A\0AOptional:\0A    -F            Restart server loop\0A    -6            IPv6 (default is IPv4)\0A    -P proto      protocol for socket: icmp, ospf (default: none)\0A    -D|R          datagram (D) / raw (R) socket (default stream)\0A    -l addr       local address to bind to\0A\0A    -d dev        bind socket to given device name\0A    -S            use setsockopt (IP_UNICAST_IF or IP_MULTICAST_IF)\0A                  to set device binding\0A    -C            use cmsg and IP_PKTINFO to specify device binding\0A\0A    -L len        send random message of given length\0A    -n num        number of times to send message\0A\0A    -M password   use MD5 sum protection\0A    -g grp        multicast group (e.g., 239.1.1.1)\0A    -i            interactive mode (default is echo and terminate)\0A\0A    -0 addr       Expected local address\0A    -1 addr       Expected remote address\0A    -2 dev        Expected device name (or index) to receive packet\0A\0A    -b            Bind test only.\0A    -q            Be quiet. Run test without printing anything.\0A\00", align 1
@DEFAULT_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @print_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i32, i32* @DEFAULT_PORT, align 4
  %5 = call i32 @printf(i8* getelementptr inbounds ([1311 x i8], [1311 x i8]* @.str, i64 0, i64 0), i8* %3, i32 %4)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
