; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c___dev_set_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c___dev_set_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*, i32)* }
%struct.net_device.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__dev_set_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 1
  %9 = load %struct.net_device_ops*, %struct.net_device_ops** %8, align 8
  store %struct.net_device_ops* %9, %struct.net_device_ops** %6, align 8
  %10 = load %struct.net_device_ops*, %struct.net_device_ops** %6, align 8
  %11 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %10, i32 0, i32 0
  %12 = load i32 (%struct.net_device.0*, i32)*, i32 (%struct.net_device.0*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.net_device.0*, i32)* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.net_device_ops*, %struct.net_device_ops** %6, align 8
  %16 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %15, i32 0, i32 0
  %17 = load i32 (%struct.net_device.0*, i32)*, i32 (%struct.net_device.0*, i32)** %16, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = bitcast %struct.net_device* %18 to %struct.net_device.0*
  %20 = load i32, i32* %5, align 4
  %21 = call i32 %17(%struct.net_device.0* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %14
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
