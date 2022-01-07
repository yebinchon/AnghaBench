; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_change_tx_queue_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_change_tx_queue_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@NETDEV_CHANGE_TX_QUEUE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"refused to change device tx_queue_len\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_change_tx_queue_len(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = trunc i64 %12 to i32
  %14 = zext i32 %13 to i64
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ERANGE, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = icmp ne i64 %20, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  %26 = trunc i64 %25 to i32
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @NETDEV_CHANGE_TX_QUEUE_LEN, align 4
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call i32 @call_netdevice_notifiers(i32 %29, %struct.net_device* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @notifier_to_errno(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %45

37:                                               ; preds = %24
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = call i32 @dev_qdisc_change_tx_queue_len(%struct.net_device* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %45

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %19
  store i32 0, i32* %3, align 4
  br label %52

45:                                               ; preds = %42, %36
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = call i32 @netdev_err(%struct.net_device* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %45, %44, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #1

declare dso_local i32 @notifier_to_errno(i32) #1

declare dso_local i32 @dev_qdisc_change_tx_queue_len(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
