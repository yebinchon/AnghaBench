; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_filter.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtable = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net = type { i32 }

@LINUX_MIB_ARPFILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.net_device*)* @arp_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_filter(i32 %0, i32 %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.rtable*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.net_device*, %struct.net_device** %7, align 8
  %12 = call %struct.net* @dev_net(%struct.net_device* %11)
  store %struct.net* %12, %struct.net** %10, align 8
  %13 = load %struct.net*, %struct.net** %10, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = call i32 @l3mdev_master_ifindex_rcu(%struct.net_device* %16)
  %18 = call %struct.rtable* @ip_route_output(%struct.net* %13, i32 %14, i32 %15, i32 0, i32 %17)
  store %struct.rtable* %18, %struct.rtable** %8, align 8
  %19 = load %struct.rtable*, %struct.rtable** %8, align 8
  %20 = call i64 @IS_ERR(%struct.rtable* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %38

23:                                               ; preds = %3
  %24 = load %struct.rtable*, %struct.rtable** %8, align 8
  %25 = getelementptr inbounds %struct.rtable, %struct.rtable* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = icmp ne %struct.net_device* %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.net*, %struct.net** %10, align 8
  %32 = load i32, i32* @LINUX_MIB_ARPFILTER, align 4
  %33 = call i32 @__NET_INC_STATS(%struct.net* %31, i32 %32)
  store i32 1, i32* %9, align 4
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct.rtable*, %struct.rtable** %8, align 8
  %36 = call i32 @ip_rt_put(%struct.rtable* %35)
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %22
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.rtable* @ip_route_output(%struct.net*, i32, i32, i32, i32) #1

declare dso_local i32 @l3mdev_master_ifindex_rcu(%struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @__NET_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
