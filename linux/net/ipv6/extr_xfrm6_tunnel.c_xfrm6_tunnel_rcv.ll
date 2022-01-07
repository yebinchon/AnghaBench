; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_tunnel.c_xfrm6_tunnel_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_tunnel.c_xfrm6_tunnel_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.ipv6hdr = type { i32 }

@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @xfrm6_tunnel_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm6_tunnel_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.ipv6hdr*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.net* @dev_net(i32 %8)
  store %struct.net* %9, %struct.net** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %10)
  store %struct.ipv6hdr* %11, %struct.ipv6hdr** %4, align 8
  %12 = load %struct.net*, %struct.net** %3, align 8
  %13 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %14 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %13, i32 0, i32 0
  %15 = call i32 @xfrm6_tunnel_spi_lookup(%struct.net* %12, i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %17 = load i32, i32* @IPPROTO_IPV6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @xfrm6_rcv_spi(%struct.sk_buff* %16, i32 %17, i32 %18, i32* null)
  ret i32 %19
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @xfrm6_tunnel_spi_lookup(%struct.net*, i32*) #1

declare dso_local i32 @xfrm6_rcv_spi(%struct.sk_buff*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
