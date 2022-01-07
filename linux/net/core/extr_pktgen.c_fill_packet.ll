; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_fill_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_fill_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.pktgen_dev = type { i32 }

@F_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, %struct.pktgen_dev*)* @fill_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @fill_packet(%struct.net_device* %0, %struct.pktgen_dev* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.pktgen_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.pktgen_dev* %1, %struct.pktgen_dev** %5, align 8
  %6 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %7 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @F_IPV6, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %15 = call %struct.sk_buff* @fill_packet_ipv6(%struct.net_device* %13, %struct.pktgen_dev* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %3, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %19 = call %struct.sk_buff* @fill_packet_ipv4(%struct.net_device* %17, %struct.pktgen_dev* %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %3, align 8
  br label %20

20:                                               ; preds = %16, %12
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %21
}

declare dso_local %struct.sk_buff* @fill_packet_ipv6(%struct.net_device*, %struct.pktgen_dev*) #1

declare dso_local %struct.sk_buff* @fill_packet_ipv4(%struct.net_device*, %struct.pktgen_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
