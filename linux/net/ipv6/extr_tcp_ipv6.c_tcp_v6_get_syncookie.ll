; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_get_syncookie.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_get_syncookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ipv6hdr = type { i32 }
%struct.tcphdr = type { i32 }

@tcp6_request_sock_ops = common dso_local global i32 0, align 4
@tcp_request_sock_ipv6_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tcp_v6_get_syncookie(%struct.sock* %0, %struct.ipv6hdr* %1, %struct.tcphdr* %2, i32* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.ipv6hdr* %1, %struct.ipv6hdr** %6, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  ret i64 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
