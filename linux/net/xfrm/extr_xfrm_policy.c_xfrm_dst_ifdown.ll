; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_dst_ifdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_dst_ifdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { %struct.net_device*, i64 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { %struct.net_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfrm_dst_ifdown(%struct.dst_entry* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.dst_entry*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  br label %5

5:                                                ; preds = %22, %2
  %6 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %7 = call %struct.dst_entry* @xfrm_dst_child(%struct.dst_entry* %6)
  store %struct.dst_entry* %7, %struct.dst_entry** %3, align 8
  %8 = icmp ne %struct.dst_entry* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %11 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %16 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = icmp eq %struct.net_device* %17, %18
  br label %20

20:                                               ; preds = %14, %9, %5
  %21 = phi i1 [ false, %9 ], [ false, %5 ], [ %19, %14 ]
  br i1 %21, label %22, label %35

22:                                               ; preds = %20
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call %struct.TYPE_2__* @dev_net(%struct.net_device* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  %27 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %28 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %27, i32 0, i32 0
  store %struct.net_device* %26, %struct.net_device** %28, align 8
  %29 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %30 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %29, i32 0, i32 0
  %31 = load %struct.net_device*, %struct.net_device** %30, align 8
  %32 = call i32 @dev_hold(%struct.net_device* %31)
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call i32 @dev_put(%struct.net_device* %33)
  br label %5

35:                                               ; preds = %20
  ret void
}

declare dso_local %struct.dst_entry* @xfrm_dst_child(%struct.dst_entry*) #1

declare dso_local %struct.TYPE_2__* @dev_net(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
