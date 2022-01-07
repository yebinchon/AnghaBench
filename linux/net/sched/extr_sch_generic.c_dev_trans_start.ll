; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_dev_trans_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_dev_trans_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dev_trans_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i64 @is_vlan_dev(%struct.net_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.net_device* @vlan_dev_real_dev(%struct.net_device* %10)
  store %struct.net_device* %11, %struct.net_device** %2, align 8
  br label %20

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i64 @netif_is_macvlan(%struct.net_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call %struct.net_device* @macvlan_dev_real_dev(%struct.net_device* %17)
  store %struct.net_device* %18, %struct.net_device** %2, align 8
  br label %19

19:                                               ; preds = %16, %12
  br label %20

20:                                               ; preds = %19, %9
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call %struct.TYPE_2__* @netdev_get_tx_queue(%struct.net_device* %21, i32 0)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %4, align 8
  store i32 1, i32* %5, align 4
  br label %25

25:                                               ; preds = %47, %20
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call %struct.TYPE_2__* @netdev_get_tx_queue(%struct.net_device* %32, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %3, align 8
  %37 = load i64, i64* %3, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @time_after(i64 %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i64, i64* %3, align 8
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %44, %39, %31
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %25

50:                                               ; preds = %25
  %51 = load i64, i64* %4, align 8
  ret i64 %51
}

declare dso_local i64 @is_vlan_dev(%struct.net_device*) #1

declare dso_local %struct.net_device* @vlan_dev_real_dev(%struct.net_device*) #1

declare dso_local i64 @netif_is_macvlan(%struct.net_device*) #1

declare dso_local %struct.net_device* @macvlan_dev_real_dev(%struct.net_device*) #1

declare dso_local %struct.TYPE_2__* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
