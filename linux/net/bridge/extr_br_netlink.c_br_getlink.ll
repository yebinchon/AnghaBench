; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_getlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_getlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.net_bridge_port = type { i32 }

@RTEXT_FILTER_BRVLAN = common dso_local global i32 0, align 4
@RTEXT_FILTER_BRVLAN_COMPRESSED = common dso_local global i32 0, align 4
@RTM_NEWLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_getlink(%struct.sk_buff* %0, i32 %1, i32 %2, %struct.net_device* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_bridge_port*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.net_device* %3, %struct.net_device** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.net_device*, %struct.net_device** %11, align 8
  %16 = call %struct.net_bridge_port* @br_port_get_rtnl(%struct.net_device* %15)
  store %struct.net_bridge_port* %16, %struct.net_bridge_port** %14, align 8
  %17 = load %struct.net_bridge_port*, %struct.net_bridge_port** %14, align 8
  %18 = icmp ne %struct.net_bridge_port* %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @RTEXT_FILTER_BRVLAN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @RTEXT_FILTER_BRVLAN_COMPRESSED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %40

30:                                               ; preds = %24, %19, %6
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = load %struct.net_bridge_port*, %struct.net_bridge_port** %14, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @RTM_NEWLINK, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.net_device*, %struct.net_device** %11, align 8
  %39 = call i32 @br_fill_ifinfo(%struct.sk_buff* %31, %struct.net_bridge_port* %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, %struct.net_device* %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %30, %29
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local %struct.net_bridge_port* @br_port_get_rtnl(%struct.net_device*) #1

declare dso_local i32 @br_fill_ifinfo(%struct.sk_buff*, %struct.net_bridge_port*, i32, i32, i32, i32, i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
