; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dst.c_dst_dev_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dst.c_dst_dev_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dst_entry = type { %struct.net_device*, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.dst_entry*, %struct.net_device*, i32)* }

@DST_OBSOLETE_DEAD = common dso_local global i32 0, align 4
@dst_discard = common dso_local global i32 0, align 4
@dst_discard_out = common dso_local global i32 0, align 4
@blackhole_netdev = common dso_local global %struct.net_device* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dst_dev_put(%struct.dst_entry* %0) #0 {
  %2 = alloca %struct.dst_entry*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %2, align 8
  %4 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %5 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %4, i32 0, i32 0
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load i32, i32* @DST_OBSOLETE_DEAD, align 4
  %8 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %9 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 8
  %10 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %11 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.dst_entry*, %struct.net_device*, i32)*, i32 (%struct.dst_entry*, %struct.net_device*, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.dst_entry*, %struct.net_device*, i32)* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %18 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.dst_entry*, %struct.net_device*, i32)*, i32 (%struct.dst_entry*, %struct.net_device*, i32)** %20, align 8
  %22 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 %21(%struct.dst_entry* %22, %struct.net_device* %23, i32 1)
  br label %25

25:                                               ; preds = %16, %1
  %26 = load i32, i32* @dst_discard, align 4
  %27 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %28 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @dst_discard_out, align 4
  %30 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %31 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.net_device*, %struct.net_device** @blackhole_netdev, align 8
  %33 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %34 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %33, i32 0, i32 0
  store %struct.net_device* %32, %struct.net_device** %34, align 8
  %35 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %36 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %35, i32 0, i32 0
  %37 = load %struct.net_device*, %struct.net_device** %36, align 8
  %38 = call i32 @dev_hold(%struct.net_device* %37)
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = call i32 @dev_put(%struct.net_device* %39)
  ret void
}

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
