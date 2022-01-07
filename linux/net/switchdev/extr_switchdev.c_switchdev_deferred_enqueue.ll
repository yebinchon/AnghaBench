; ModuleID = '/home/carl/AnghaBench/linux/net/switchdev/extr_switchdev.c_switchdev_deferred_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/switchdev/extr_switchdev.c_switchdev_deferred_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_deferred_item = type { i32, i32, i32*, %struct.net_device* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@deferred_lock = common dso_local global i32 0, align 4
@deferred = common dso_local global i32 0, align 4
@deferred_process_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*, i64, i32*)* @switchdev_deferred_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switchdev_deferred_enqueue(%struct.net_device* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.switchdev_deferred_item*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = add i64 24, %11
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.switchdev_deferred_item* @kmalloc(i32 %13, i32 %14)
  store %struct.switchdev_deferred_item* %15, %struct.switchdev_deferred_item** %10, align 8
  %16 = load %struct.switchdev_deferred_item*, %struct.switchdev_deferred_item** %10, align 8
  %17 = icmp ne %struct.switchdev_deferred_item* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %42

21:                                               ; preds = %4
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = load %struct.switchdev_deferred_item*, %struct.switchdev_deferred_item** %10, align 8
  %24 = getelementptr inbounds %struct.switchdev_deferred_item, %struct.switchdev_deferred_item* %23, i32 0, i32 3
  store %struct.net_device* %22, %struct.net_device** %24, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.switchdev_deferred_item*, %struct.switchdev_deferred_item** %10, align 8
  %27 = getelementptr inbounds %struct.switchdev_deferred_item, %struct.switchdev_deferred_item* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  %28 = load %struct.switchdev_deferred_item*, %struct.switchdev_deferred_item** %10, align 8
  %29 = getelementptr inbounds %struct.switchdev_deferred_item, %struct.switchdev_deferred_item* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @memcpy(i32 %30, i8* %31, i64 %32)
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = call i32 @dev_hold(%struct.net_device* %34)
  %36 = call i32 @spin_lock_bh(i32* @deferred_lock)
  %37 = load %struct.switchdev_deferred_item*, %struct.switchdev_deferred_item** %10, align 8
  %38 = getelementptr inbounds %struct.switchdev_deferred_item, %struct.switchdev_deferred_item* %37, i32 0, i32 0
  %39 = call i32 @list_add_tail(i32* %38, i32* @deferred)
  %40 = call i32 @spin_unlock_bh(i32* @deferred_lock)
  %41 = call i32 @schedule_work(i32* @deferred_process_work)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %21, %18
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.switchdev_deferred_item* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
