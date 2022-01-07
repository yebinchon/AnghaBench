; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c___netdev_adjacent_dev_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c___netdev_adjacent_dev_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.netdev_adjacent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.net_device*, i32)* @__netdev_adjacent_dev_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__netdev_adjacent_dev_set(%struct.net_device* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netdev_adjacent*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = call %struct.netdev_adjacent* @__netdev_find_adj(%struct.net_device* %8, i32* %11)
  store %struct.netdev_adjacent* %12, %struct.netdev_adjacent** %7, align 8
  %13 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %7, align 8
  %14 = icmp ne %struct.netdev_adjacent* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %7, align 8
  %18 = getelementptr inbounds %struct.netdev_adjacent, %struct.netdev_adjacent* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %15, %3
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call %struct.netdev_adjacent* @__netdev_find_adj(%struct.net_device* %20, i32* %23)
  store %struct.netdev_adjacent* %24, %struct.netdev_adjacent** %7, align 8
  %25 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %7, align 8
  %26 = icmp ne %struct.netdev_adjacent* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.netdev_adjacent*, %struct.netdev_adjacent** %7, align 8
  %30 = getelementptr inbounds %struct.netdev_adjacent, %struct.netdev_adjacent* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %19
  ret void
}

declare dso_local %struct.netdev_adjacent* @__netdev_find_adj(%struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
