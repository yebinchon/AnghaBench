; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto.c_ip_vs_tcpudp_debug_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto.c_ip_vs_tcpudp_debug_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_protocol = type { i32 }
%struct.sk_buff = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_vs_tcpudp_debug_packet(i32 %0, %struct.ip_vs_protocol* %1, %struct.sk_buff* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_vs_protocol*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.ip_vs_protocol* %1, %struct.ip_vs_protocol** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i8*, i8** %10, align 8
  %15 = call i32 @ip_vs_tcpudp_debug_packet_v4(%struct.ip_vs_protocol* %11, %struct.sk_buff* %12, i32 %13, i8* %14)
  ret void
}

declare dso_local i32 @ip_vs_tcpudp_debug_packet_v4(%struct.ip_vs_protocol*, %struct.sk_buff*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
