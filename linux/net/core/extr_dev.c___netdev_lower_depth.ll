; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c___netdev_lower_depth.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c___netdev_lower_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.list_head }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*)* @__netdev_lower_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__netdev_lower_depth(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.list_head* %9, %struct.list_head** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.net_device* @__netdev_next_lower_dev(%struct.net_device* %10, %struct.list_head** %4, i32* %6)
  store %struct.net_device* %11, %struct.net_device** %3, align 8
  br label %12

12:                                               ; preds = %30, %1
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %30

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %25, %19
  br label %30

30:                                               ; preds = %29, %18
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call %struct.net_device* @__netdev_next_lower_dev(%struct.net_device* %31, %struct.list_head** %4, i32* %6)
  store %struct.net_device* %32, %struct.net_device** %3, align 8
  br label %12

33:                                               ; preds = %12
  %34 = load i64, i64* %5, align 8
  ret i64 %34
}

declare dso_local %struct.net_device* @__netdev_next_lower_dev(%struct.net_device*, %struct.list_head**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
