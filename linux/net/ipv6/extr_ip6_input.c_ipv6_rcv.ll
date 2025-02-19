; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_input.c_ipv6_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_input.c_ipv6_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i32 }
%struct.net = type { i32 }

@NET_RX_DROP = common dso_local global i32 0, align 4
@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@ip6_rcv_finish = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.net* @dev_net(i32 %13)
  store %struct.net* %14, %struct.net** %10, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = load %struct.net*, %struct.net** %10, align 8
  %18 = call %struct.sk_buff* @ip6_rcv_core(%struct.sk_buff* %15, %struct.net_device* %16, %struct.net* %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = icmp eq %struct.sk_buff* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %22, i32* %5, align 4
  br label %31

23:                                               ; preds = %4
  %24 = load i32, i32* @NFPROTO_IPV6, align 4
  %25 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %26 = load %struct.net*, %struct.net** %10, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = load i32, i32* @ip6_rcv_finish, align 4
  %30 = call i32 @NF_HOOK(i32 %24, i32 %25, %struct.net* %26, i32* null, %struct.sk_buff* %27, %struct.net_device* %28, i32* null, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %23, %21
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.sk_buff* @ip6_rcv_core(%struct.sk_buff*, %struct.net_device*, %struct.net*) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.net*, i32*, %struct.sk_buff*, %struct.net_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
