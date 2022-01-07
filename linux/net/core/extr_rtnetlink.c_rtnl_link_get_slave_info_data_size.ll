; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_link_get_slave_info_data_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_link_get_slave_info_data_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.rtnl_link_ops* }
%struct.rtnl_link_ops = type { i64 (%struct.net_device.0*, %struct.net_device.0*)* }
%struct.net_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*)* @rtnl_link_get_slave_info_data_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtnl_link_get_slave_info_data_size(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_ops*, align 8
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i64 0, i64* %5, align 8
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.net_device* @netdev_master_upper_dev_get_rcu(%struct.net_device* %7)
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = icmp ne %struct.net_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %14, align 8
  store %struct.rtnl_link_ops* %15, %struct.rtnl_link_ops** %4, align 8
  %16 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %4, align 8
  %17 = icmp ne %struct.rtnl_link_ops* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %4, align 8
  %20 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %19, i32 0, i32 0
  %21 = load i64 (%struct.net_device.0*, %struct.net_device.0*)*, i64 (%struct.net_device.0*, %struct.net_device.0*)** %20, align 8
  %22 = icmp ne i64 (%struct.net_device.0*, %struct.net_device.0*)* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %12
  br label %35

24:                                               ; preds = %18
  %25 = call i64 @nla_total_size(i32 4)
  %26 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %4, align 8
  %27 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %26, i32 0, i32 0
  %28 = load i64 (%struct.net_device.0*, %struct.net_device.0*)*, i64 (%struct.net_device.0*, %struct.net_device.0*)** %27, align 8
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = bitcast %struct.net_device* %29 to %struct.net_device.0*
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = bitcast %struct.net_device* %31 to %struct.net_device.0*
  %33 = call i64 %28(%struct.net_device.0* %30, %struct.net_device.0* %32)
  %34 = add i64 %25, %33
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %24, %23, %11
  %36 = call i32 (...) @rcu_read_unlock()
  %37 = load i64, i64* %5, align 8
  ret i64 %37
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @netdev_master_upper_dev_get_rcu(%struct.net_device*) #1

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
