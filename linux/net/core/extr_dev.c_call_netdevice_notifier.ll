; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_call_netdevice_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_call_netdevice_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, %struct.netdev_notifier_info*)* }
%struct.netdev_notifier_info = type opaque
%struct.net_device = type { i32 }
%struct.netdev_notifier_info.0 = type { %struct.net_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, %struct.net_device*)* @call_netdevice_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call_netdevice_notifier(%struct.notifier_block* %0, i64 %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netdev_notifier_info.0, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %8 = getelementptr inbounds %struct.netdev_notifier_info.0, %struct.netdev_notifier_info.0* %7, i32 0, i32 0
  %9 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %9, %struct.net_device** %8, align 8
  %10 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %11 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %10, i32 0, i32 0
  %12 = load i32 (%struct.notifier_block*, i64, %struct.netdev_notifier_info*)*, i32 (%struct.notifier_block*, i64, %struct.netdev_notifier_info*)** %11, align 8
  %13 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = bitcast %struct.netdev_notifier_info.0* %7 to %struct.netdev_notifier_info*
  %16 = call i32 %12(%struct.notifier_block* %13, i64 %14, %struct.netdev_notifier_info* %15)
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
