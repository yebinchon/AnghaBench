; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_adjacent_change_abort.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_adjacent_change_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netdev_adjacent_change_abort(%struct.net_device* %0, %struct.net_device* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %25

10:                                               ; preds = %3
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = icmp ne %struct.net_device* %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call i32 @netdev_adjacent_dev_enable(%struct.net_device* %18, %struct.net_device* %19)
  br label %21

21:                                               ; preds = %17, %13, %10
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = call i32 @netdev_upper_dev_unlink(%struct.net_device* %22, %struct.net_device* %23)
  br label %25

25:                                               ; preds = %21, %9
  ret void
}

declare dso_local i32 @netdev_adjacent_dev_enable(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @netdev_upper_dev_unlink(%struct.net_device*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
