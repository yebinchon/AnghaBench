; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c___dev_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c___dev_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*)* }
%struct.net_device.0 = type opaque

@IFF_UP = common dso_local global i32 0, align 4
@IFF_UNICAST_FLT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dev_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_device_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 3
  %6 = load %struct.net_device_ops*, %struct.net_device_ops** %5, align 8
  store %struct.net_device_ops* %6, %struct.net_device_ops** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IFF_UP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %68

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @netif_device_present(%struct.net_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %68

19:                                               ; preds = %14
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %19
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = call i64 @netdev_uc_empty(%struct.net_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = call i32 @__dev_set_promiscuity(%struct.net_device* %36, i32 1, i32 0)
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 2
  store i32 1, i32* %39, align 8
  br label %55

40:                                               ; preds = %30, %26
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = call i64 @netdev_uc_empty(%struct.net_device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = call i32 @__dev_set_promiscuity(%struct.net_device* %50, i32 -1, i32 0)
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 2
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %49, %44, %40
  br label %55

55:                                               ; preds = %54, %35
  br label %56

56:                                               ; preds = %55, %19
  %57 = load %struct.net_device_ops*, %struct.net_device_ops** %3, align 8
  %58 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %57, i32 0, i32 0
  %59 = load i32 (%struct.net_device.0*)*, i32 (%struct.net_device.0*)** %58, align 8
  %60 = icmp ne i32 (%struct.net_device.0*)* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.net_device_ops*, %struct.net_device_ops** %3, align 8
  %63 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %62, i32 0, i32 0
  %64 = load i32 (%struct.net_device.0*)*, i32 (%struct.net_device.0*)** %63, align 8
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = bitcast %struct.net_device* %65 to %struct.net_device.0*
  %67 = call i32 %64(%struct.net_device.0* %66)
  br label %68

68:                                               ; preds = %13, %18, %61, %56
  ret void
}

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i64 @netdev_uc_empty(%struct.net_device*) #1

declare dso_local i32 @__dev_set_promiscuity(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
