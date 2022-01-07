; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_switchdev_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_switchdev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }
%struct.dsa_switchdev_event_work = type { i64, i32, %struct.net_device* }

@SWITCHDEV_PORT_ATTR_SET = common dso_local global i64 0, align 8
@dsa_slave_port_attr_set = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NOTIFY_BAD = common dso_local global i32 0, align 4
@dsa_slave_switchdev_event_work = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @dsa_slave_switchdev_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_switchdev_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.dsa_switchdev_event_work*, align 8
  %10 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call %struct.net_device* @switchdev_notifier_info_to_dev(i8* %11)
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @SWITCHDEV_PORT_ATTR_SET, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.net_device*, %struct.net_device** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* @dsa_slave_port_attr_set, align 4
  %20 = call i32 @switchdev_handle_port_attr_set(%struct.net_device* %17, i8* %18, i32 (%struct.net_device*)* @dsa_slave_dev_check, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @notifier_from_errno(i32 %21)
  store i32 %22, i32* %4, align 4
  br label %70

23:                                               ; preds = %3
  %24 = load %struct.net_device*, %struct.net_device** %8, align 8
  %25 = call i32 @dsa_slave_dev_check(%struct.net_device* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %28, i32* %4, align 4
  br label %70

29:                                               ; preds = %23
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call %struct.dsa_switchdev_event_work* @kzalloc(i32 24, i32 %30)
  store %struct.dsa_switchdev_event_work* %31, %struct.dsa_switchdev_event_work** %9, align 8
  %32 = load %struct.dsa_switchdev_event_work*, %struct.dsa_switchdev_event_work** %9, align 8
  %33 = icmp ne %struct.dsa_switchdev_event_work* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %35, i32* %4, align 4
  br label %70

36:                                               ; preds = %29
  %37 = load %struct.dsa_switchdev_event_work*, %struct.dsa_switchdev_event_work** %9, align 8
  %38 = getelementptr inbounds %struct.dsa_switchdev_event_work, %struct.dsa_switchdev_event_work* %37, i32 0, i32 1
  %39 = load i32, i32* @dsa_slave_switchdev_event_work, align 4
  %40 = call i32 @INIT_WORK(i32* %38, i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %8, align 8
  %42 = load %struct.dsa_switchdev_event_work*, %struct.dsa_switchdev_event_work** %9, align 8
  %43 = getelementptr inbounds %struct.dsa_switchdev_event_work, %struct.dsa_switchdev_event_work* %42, i32 0, i32 2
  store %struct.net_device* %41, %struct.net_device** %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.dsa_switchdev_event_work*, %struct.dsa_switchdev_event_work** %9, align 8
  %46 = getelementptr inbounds %struct.dsa_switchdev_event_work, %struct.dsa_switchdev_event_work* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %6, align 8
  switch i64 %47, label %57 [
    i64 129, label %48
    i64 128, label %48
  ]

48:                                               ; preds = %36, %36
  %49 = load %struct.dsa_switchdev_event_work*, %struct.dsa_switchdev_event_work** %9, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @dsa_slave_switchdev_fdb_work_init(%struct.dsa_switchdev_event_work* %49, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %66

54:                                               ; preds = %48
  %55 = load %struct.net_device*, %struct.net_device** %8, align 8
  %56 = call i32 @dev_hold(%struct.net_device* %55)
  br label %61

57:                                               ; preds = %36
  %58 = load %struct.dsa_switchdev_event_work*, %struct.dsa_switchdev_event_work** %9, align 8
  %59 = call i32 @kfree(%struct.dsa_switchdev_event_work* %58)
  %60 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %60, i32* %4, align 4
  br label %70

61:                                               ; preds = %54
  %62 = load %struct.dsa_switchdev_event_work*, %struct.dsa_switchdev_event_work** %9, align 8
  %63 = getelementptr inbounds %struct.dsa_switchdev_event_work, %struct.dsa_switchdev_event_work* %62, i32 0, i32 1
  %64 = call i32 @dsa_schedule_work(i32* %63)
  %65 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %65, i32* %4, align 4
  br label %70

66:                                               ; preds = %53
  %67 = load %struct.dsa_switchdev_event_work*, %struct.dsa_switchdev_event_work** %9, align 8
  %68 = call i32 @kfree(%struct.dsa_switchdev_event_work* %67)
  %69 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %61, %57, %34, %27, %16
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.net_device* @switchdev_notifier_info_to_dev(i8*) #1

declare dso_local i32 @switchdev_handle_port_attr_set(%struct.net_device*, i8*, i32 (%struct.net_device*)*, i32) #1

declare dso_local i32 @dsa_slave_dev_check(%struct.net_device*) #1

declare dso_local i32 @notifier_from_errno(i32) #1

declare dso_local %struct.dsa_switchdev_event_work* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @dsa_slave_switchdev_fdb_work_init(%struct.dsa_switchdev_event_work*, i8*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.dsa_switchdev_event_work*) #1

declare dso_local i32 @dsa_schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
