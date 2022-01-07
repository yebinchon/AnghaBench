; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32* (%struct.net_device.0*)*, i32 (%struct.net_device.1*, %struct.rtnl_link_stats64*)* }
%struct.net_device.0 = type opaque
%struct.net_device.1 = type opaque
%struct.rtnl_link_stats64 = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rtnl_link_stats64* @dev_get_stats(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.net_device_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 4
  %8 = load %struct.net_device_ops*, %struct.net_device_ops** %7, align 8
  store %struct.net_device_ops* %8, %struct.net_device_ops** %5, align 8
  %9 = load %struct.net_device_ops*, %struct.net_device_ops** %5, align 8
  %10 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %9, i32 0, i32 1
  %11 = load i32 (%struct.net_device.1*, %struct.rtnl_link_stats64*)*, i32 (%struct.net_device.1*, %struct.rtnl_link_stats64*)** %10, align 8
  %12 = icmp ne i32 (%struct.net_device.1*, %struct.rtnl_link_stats64*)* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %15 = call i32 @memset(%struct.rtnl_link_stats64* %14, i32 0, i32 24)
  %16 = load %struct.net_device_ops*, %struct.net_device_ops** %5, align 8
  %17 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %16, i32 0, i32 1
  %18 = load i32 (%struct.net_device.1*, %struct.rtnl_link_stats64*)*, i32 (%struct.net_device.1*, %struct.rtnl_link_stats64*)** %17, align 8
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = bitcast %struct.net_device* %19 to %struct.net_device.1*
  %21 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %22 = call i32 %18(%struct.net_device.1* %20, %struct.rtnl_link_stats64* %21)
  br label %43

23:                                               ; preds = %2
  %24 = load %struct.net_device_ops*, %struct.net_device_ops** %5, align 8
  %25 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %24, i32 0, i32 0
  %26 = load i32* (%struct.net_device.0*)*, i32* (%struct.net_device.0*)** %25, align 8
  %27 = icmp ne i32* (%struct.net_device.0*)* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %30 = load %struct.net_device_ops*, %struct.net_device_ops** %5, align 8
  %31 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %30, i32 0, i32 0
  %32 = load i32* (%struct.net_device.0*)*, i32* (%struct.net_device.0*)** %31, align 8
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = bitcast %struct.net_device* %33 to %struct.net_device.0*
  %35 = call i32* %32(%struct.net_device.0* %34)
  %36 = call i32 @netdev_stats_to_stats64(%struct.rtnl_link_stats64* %29, i32* %35)
  br label %42

37:                                               ; preds = %23
  %38 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 3
  %41 = call i32 @netdev_stats_to_stats64(%struct.rtnl_link_stats64* %38, i32* %40)
  br label %42

42:                                               ; preds = %37, %28
  br label %43

43:                                               ; preds = %42, %13
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 2
  %46 = call i64 @atomic_long_read(i32* %45)
  %47 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %48 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  %53 = call i64 @atomic_long_read(i32* %52)
  %54 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %55 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = call i64 @atomic_long_read(i32* %59)
  %61 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %62 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  ret %struct.rtnl_link_stats64* %65
}

declare dso_local i32 @memset(%struct.rtnl_link_stats64*, i32, i32) #1

declare dso_local i32 @netdev_stats_to_stats64(%struct.rtnl_link_stats64*, i32*) #1

declare dso_local i64 @atomic_long_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
