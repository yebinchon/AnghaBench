; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netif_setup_tc.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netif_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.netdev_tc_txq*, i64 }
%struct.netdev_tc_txq = type { i32, i32 }

@.str = private unnamed_addr constant [104 x i8] c"Number of in use tx queues changed invalidating tc mappings. Priority traffic classification disabled!\0A\00", align 1
@TC_BITMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [103 x i8] c"Number of in use tx queues changed. Priority %i to tc mapping %i is no longer valid. Setting map to 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @netif_setup_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netif_setup_tc(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.netdev_tc_txq*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.netdev_tc_txq*, %struct.netdev_tc_txq** %9, align 8
  %11 = getelementptr inbounds %struct.netdev_tc_txq, %struct.netdev_tc_txq* %10, i64 0
  store %struct.netdev_tc_txq* %11, %struct.netdev_tc_txq** %6, align 8
  %12 = load %struct.netdev_tc_txq*, %struct.netdev_tc_txq** %6, align 8
  %13 = getelementptr inbounds %struct.netdev_tc_txq, %struct.netdev_tc_txq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.netdev_tc_txq*, %struct.netdev_tc_txq** %6, align 8
  %16 = getelementptr inbounds %struct.netdev_tc_txq, %struct.netdev_tc_txq* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add i32 %14, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  br label %61

25:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %26

26:                                               ; preds = %58, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @TC_BITMASK, align 4
  %29 = add nsw i32 %28, 1
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %26
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @netdev_get_prio_tc_map(%struct.net_device* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load %struct.netdev_tc_txq*, %struct.netdev_tc_txq** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.netdev_tc_txq, %struct.netdev_tc_txq* %37, i64 %39
  store %struct.netdev_tc_txq* %40, %struct.netdev_tc_txq** %6, align 8
  %41 = load %struct.netdev_tc_txq*, %struct.netdev_tc_txq** %6, align 8
  %42 = getelementptr inbounds %struct.netdev_tc_txq, %struct.netdev_tc_txq* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.netdev_tc_txq*, %struct.netdev_tc_txq** %6, align 8
  %45 = getelementptr inbounds %struct.netdev_tc_txq, %struct.netdev_tc_txq* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %43, %46
  %48 = load i32, i32* %4, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %31
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @netdev_set_prio_tc_map(%struct.net_device* %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %50, %31
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %26

61:                                               ; preds = %21, %26
  ret void
}

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @netdev_get_prio_tc_map(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_set_prio_tc_map(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
