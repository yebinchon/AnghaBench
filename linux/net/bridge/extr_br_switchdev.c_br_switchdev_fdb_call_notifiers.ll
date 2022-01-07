; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_switchdev.c_br_switchdev_fdb_call_notifiers.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_switchdev.c_br_switchdev_fdb_call_notifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_notifier_fdb_info = type { i8*, i32, i32, i32, i32 }

@SWITCHDEV_FDB_ADD_TO_DEVICE = common dso_local global i64 0, align 8
@SWITCHDEV_FDB_DEL_TO_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, %struct.net_device*, i32, i32)* @br_switchdev_fdb_call_notifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_switchdev_fdb_call_notifiers(i32 %0, i8* %1, i32 %2, %struct.net_device* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.switchdev_notifier_fdb_info, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %13, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %13, i32 0, i32 4
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %11, align 4
  %20 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %13, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* %12, align 4
  %22 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %13, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i64, i64* @SWITCHDEV_FDB_ADD_TO_DEVICE, align 8
  br label %29

27:                                               ; preds = %6
  %28 = load i64, i64* @SWITCHDEV_FDB_DEL_TO_DEVICE, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i64 [ %26, %25 ], [ %28, %27 ]
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load %struct.net_device*, %struct.net_device** %10, align 8
  %33 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %13, i32 0, i32 3
  %34 = call i32 @call_switchdev_notifiers(i64 %31, %struct.net_device* %32, i32* %33, i32* null)
  ret void
}

declare dso_local i32 @call_switchdev_notifiers(i64, %struct.net_device*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
