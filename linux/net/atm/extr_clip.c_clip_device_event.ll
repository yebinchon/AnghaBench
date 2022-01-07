; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_clip.c_clip_device_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_clip.c_clip_device_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i64, i32* }
%struct.TYPE_2__ = type { i32 }

@init_net = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@NETDEV_UNREGISTER = common dso_local global i64 0, align 8
@ARPHRD_ATM = common dso_local global i64 0, align 8
@clip_netdev_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"NETDEV_UP\0A\00", align 1
@act_up = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"NETDEV_DOWN\0A\00", align 1
@act_down = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"NETDEV_CHANGE*\0A\00", align 1
@act_change = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @clip_device_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clip_device_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %9)
  store %struct.net_device* %10, %struct.net_device** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %8, align 8
  %12 = call i32 @dev_net(%struct.net_device* %11)
  %13 = call i32 @net_eq(i32 %12, i32* @init_net)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %16, i32* %4, align 4
  br label %64

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @NETDEV_UNREGISTER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %22, i32* %4, align 4
  br label %64

23:                                               ; preds = %17
  %24 = load %struct.net_device*, %struct.net_device** %8, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ARPHRD_ATM, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load %struct.net_device*, %struct.net_device** %8, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, @clip_netdev_ops
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %23
  %35 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %35, i32* %4, align 4
  br label %64

36:                                               ; preds = %29
  %37 = load i64, i64* %6, align 8
  switch i64 %37, label %62 [
    i64 128, label %38
    i64 129, label %46
    i64 131, label %54
    i64 130, label %54
  ]

38:                                               ; preds = %36
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @act_up, align 4
  %41 = load %struct.net_device*, %struct.net_device** %8, align 8
  %42 = call %struct.TYPE_2__* @PRIV(%struct.net_device* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @to_atmarpd(i32 %40, i32 %44, i32 0)
  br label %62

46:                                               ; preds = %36
  %47 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @act_down, align 4
  %49 = load %struct.net_device*, %struct.net_device** %8, align 8
  %50 = call %struct.TYPE_2__* @PRIV(%struct.net_device* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @to_atmarpd(i32 %48, i32 %52, i32 0)
  br label %62

54:                                               ; preds = %36, %36
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @act_change, align 4
  %57 = load %struct.net_device*, %struct.net_device** %8, align 8
  %58 = call %struct.TYPE_2__* @PRIV(%struct.net_device* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @to_atmarpd(i32 %56, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %36, %54, %46, %38
  %63 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %34, %21, %15
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @to_atmarpd(i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @PRIV(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
