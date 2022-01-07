; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c_udp6_lib_lookup_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c_udp6_lib_lookup_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ipv6hdr = type { i32, i32 }

@udp_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @udp6_lib_lookup_skb(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipv6hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %8)
  store %struct.ipv6hdr* %9, %struct.ipv6hdr** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_net(i32 %12)
  %14 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %15 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %14, i32 0, i32 1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %18 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @inet6_iif(%struct.sk_buff* %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @inet6_sdif(%struct.sk_buff* %22)
  %24 = call %struct.sock* @__udp6_lib_lookup(i32 %13, i32* %15, i32 %16, i32* %18, i32 %19, i32 %21, i32 %23, i32* @udp_table, i32* null)
  ret %struct.sock* %24
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.sock* @__udp6_lib_lookup(i32, i32*, i32, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @inet6_iif(%struct.sk_buff*) #1

declare dso_local i32 @inet6_sdif(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
