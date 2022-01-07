; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_txq_to_tc.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_txq_to_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.netdev_tc_txq*, i64 }
%struct.netdev_tc_txq = type { i32, i32 }

@TC_MAX_QUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netdev_txq_to_tc(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netdev_tc_txq*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.netdev_tc_txq*, %struct.netdev_tc_txq** %14, align 8
  %16 = getelementptr inbounds %struct.netdev_tc_txq, %struct.netdev_tc_txq* %15, i64 0
  store %struct.netdev_tc_txq* %16, %struct.netdev_tc_txq** %6, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %34, %12
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @TC_MAX_QUEUE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.netdev_tc_txq*, %struct.netdev_tc_txq** %6, align 8
  %24 = getelementptr inbounds %struct.netdev_tc_txq, %struct.netdev_tc_txq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub i32 %22, %25
  %27 = load %struct.netdev_tc_txq*, %struct.netdev_tc_txq** %6, align 8
  %28 = getelementptr inbounds %struct.netdev_tc_txq, %struct.netdev_tc_txq* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %41

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  %37 = load %struct.netdev_tc_txq*, %struct.netdev_tc_txq** %6, align 8
  %38 = getelementptr inbounds %struct.netdev_tc_txq, %struct.netdev_tc_txq* %37, i32 1
  store %struct.netdev_tc_txq* %38, %struct.netdev_tc_txq** %6, align 8
  br label %17

39:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %41

40:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %39, %31
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
