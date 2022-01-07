; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nf_log_bridge.c_nf_log_bridge_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nf_log_bridge.c_nf_log_bridge_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.nf_loginfo = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, i32, i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, %struct.nf_loginfo*, i8*)* @nf_log_bridge_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_log_bridge_packet(%struct.net* %0, i32 %1, i32 %2, %struct.sk_buff* %3, %struct.net_device* %4, %struct.net_device* %5, %struct.nf_loginfo* %6, i8* %7) #0 {
  %9 = alloca %struct.net*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.nf_loginfo*, align 8
  %16 = alloca i8*, align 8
  store %struct.net* %0, %struct.net** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %12, align 8
  store %struct.net_device* %4, %struct.net_device** %13, align 8
  store %struct.net_device* %5, %struct.net_device** %14, align 8
  store %struct.nf_loginfo* %6, %struct.nf_loginfo** %15, align 8
  store i8* %7, i8** %16, align 8
  %17 = load %struct.net*, %struct.net** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %20 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %25 = load %struct.net_device*, %struct.net_device** %13, align 8
  %26 = load %struct.net_device*, %struct.net_device** %14, align 8
  %27 = load %struct.nf_loginfo*, %struct.nf_loginfo** %15, align 8
  %28 = load i8*, i8** %16, align 8
  %29 = call i32 @nf_log_l2packet(%struct.net* %17, i32 %18, i32 %22, i32 %23, %struct.sk_buff* %24, %struct.net_device* %25, %struct.net_device* %26, %struct.nf_loginfo* %27, i8* %28)
  ret void
}

declare dso_local i32 @nf_log_l2packet(%struct.net*, i32, i32, i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, %struct.nf_loginfo*, i8*) #1

declare dso_local %struct.TYPE_2__* @eth_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
