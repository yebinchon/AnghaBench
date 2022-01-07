; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_unregister_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_unregister_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"dev_name=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"The userspace won't be notified that the device %s was removed\0A\00", align 1
@nfc_devlist_mutex = common dso_local global i32 0, align 4
@nfc_devlist_generation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfc_unregister_device(%struct.nfc_dev* %0) #0 {
  %2 = alloca %struct.nfc_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %2, align 8
  %4 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %5 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %4, i32 0, i32 1
  %6 = call i32 @dev_name(i32* %5)
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %9 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %14 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @rfkill_unregister(i64 %15)
  %17 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %18 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @rfkill_destroy(i64 %19)
  br label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %23 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %30 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %29, i32 0, i32 1
  %31 = call i32 @device_lock(i32* %30)
  %32 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %33 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %35 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %34, i32 0, i32 1
  %36 = call i32 @device_unlock(i32* %35)
  %37 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %38 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %37, i32 0, i32 3
  %39 = call i32 @del_timer_sync(i32* %38)
  %40 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %41 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %40, i32 0, i32 2
  %42 = call i32 @cancel_work_sync(i32* %41)
  br label %43

43:                                               ; preds = %28, %21
  %44 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %45 = call i32 @nfc_genl_device_removed(%struct.nfc_dev* %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %50 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %49, i32 0, i32 1
  %51 = call i32 @dev_name(i32* %50)
  %52 = call i32 @pr_debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %55 = call i32 @nfc_llcp_unregister_device(%struct.nfc_dev* %54)
  %56 = call i32 @mutex_lock(i32* @nfc_devlist_mutex)
  %57 = load i32, i32* @nfc_devlist_generation, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @nfc_devlist_generation, align 4
  %59 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  %60 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %59, i32 0, i32 1
  %61 = call i32 @device_del(i32* %60)
  %62 = call i32 @mutex_unlock(i32* @nfc_devlist_mutex)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @rfkill_unregister(i64) #1

declare dso_local i32 @rfkill_destroy(i64) #1

declare dso_local i32 @device_lock(i32*) #1

declare dso_local i32 @device_unlock(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @nfc_genl_device_removed(%struct.nfc_dev*) #1

declare dso_local i32 @nfc_llcp_unregister_device(%struct.nfc_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
