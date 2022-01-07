; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_input.c_ip_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_input.c_ip_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i32 }
%struct.net = type { i32 }

@NET_RX_DROP = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@ip_rcv_finish = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
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
  %11 = load %struct.net_device*, %struct.net_device** %7, align 8
  %12 = call %struct.net* @dev_net(%struct.net_device* %11)
  store %struct.net* %12, %struct.net** %10, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = load %struct.net*, %struct.net** %10, align 8
  %15 = call %struct.sk_buff* @ip_rcv_core(%struct.sk_buff* %13, %struct.net* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = icmp eq %struct.sk_buff* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %19, i32* %5, align 4
  br label %28

20:                                               ; preds = %4
  %21 = load i32, i32* @NFPROTO_IPV4, align 4
  %22 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %23 = load %struct.net*, %struct.net** %10, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = load i32, i32* @ip_rcv_finish, align 4
  %27 = call i32 @NF_HOOK(i32 %21, i32 %22, %struct.net* %23, i32* null, %struct.sk_buff* %24, %struct.net_device* %25, i32* null, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %20, %18
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @ip_rcv_core(%struct.sk_buff*, %struct.net*) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.net*, i32*, %struct.sk_buff*, %struct.net_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
