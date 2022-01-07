; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_switchdev_blocking_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_switchdev_blocking_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }

@dsa_slave_dev_check = common dso_local global i32 0, align 4
@dsa_slave_port_obj_add = common dso_local global i32 0, align 4
@dsa_slave_port_obj_del = common dso_local global i32 0, align 4
@dsa_slave_port_attr_set = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @dsa_slave_switchdev_blocking_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_switchdev_blocking_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call %struct.net_device* @switchdev_notifier_info_to_dev(i8* %10)
  store %struct.net_device* %11, %struct.net_device** %8, align 8
  %12 = load i64, i64* %6, align 8
  switch i64 %12, label %37 [
    i64 129, label %13
    i64 128, label %21
    i64 130, label %29
  ]

13:                                               ; preds = %3
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* @dsa_slave_dev_check, align 4
  %17 = load i32, i32* @dsa_slave_port_obj_add, align 4
  %18 = call i32 @switchdev_handle_port_obj_add(%struct.net_device* %14, i8* %15, i32 %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @notifier_from_errno(i32 %19)
  store i32 %20, i32* %4, align 4
  br label %39

21:                                               ; preds = %3
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @dsa_slave_dev_check, align 4
  %25 = load i32, i32* @dsa_slave_port_obj_del, align 4
  %26 = call i32 @switchdev_handle_port_obj_del(%struct.net_device* %22, i8* %23, i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @notifier_from_errno(i32 %27)
  store i32 %28, i32* %4, align 4
  br label %39

29:                                               ; preds = %3
  %30 = load %struct.net_device*, %struct.net_device** %8, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* @dsa_slave_dev_check, align 4
  %33 = load i32, i32* @dsa_slave_port_attr_set, align 4
  %34 = call i32 @switchdev_handle_port_attr_set(%struct.net_device* %30, i8* %31, i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @notifier_from_errno(i32 %35)
  store i32 %36, i32* %4, align 4
  br label %39

37:                                               ; preds = %3
  %38 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %29, %21, %13
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.net_device* @switchdev_notifier_info_to_dev(i8*) #1

declare dso_local i32 @switchdev_handle_port_obj_add(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @notifier_from_errno(i32) #1

declare dso_local i32 @switchdev_handle_port_obj_del(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @switchdev_handle_port_attr_set(%struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
