; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_virtio.c_p9_virtio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_virtio.c_p9_virtio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.virtio_device = type { %struct.TYPE_5__, %struct.TYPE_4__*, %struct.virtio_chan* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)* }
%struct.virtio_chan = type { %struct.virtio_chan*, %struct.virtio_chan*, i64, i32 }

@virtio_9p_lock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"p9_virtio_remove: waiting for device in use.\0A\00", align 1
@dev_attr_mount_tag = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*)* @p9_virtio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p9_virtio_remove(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca %struct.virtio_chan*, align 8
  %4 = alloca i64, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %5 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %6 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %5, i32 0, i32 2
  %7 = load %struct.virtio_chan*, %struct.virtio_chan** %6, align 8
  store %struct.virtio_chan* %7, %struct.virtio_chan** %3, align 8
  %8 = call i32 @mutex_lock(i32* @virtio_9p_lock)
  %9 = load %struct.virtio_chan*, %struct.virtio_chan** %3, align 8
  %10 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %9, i32 0, i32 3
  %11 = call i32 @list_del(i32* %10)
  %12 = load i64, i64* @jiffies, align 8
  store i64 %12, i64* %4, align 8
  br label %13

13:                                               ; preds = %34, %1
  %14 = load %struct.virtio_chan*, %struct.virtio_chan** %3, align 8
  %15 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = call i32 @mutex_unlock(i32* @virtio_9p_lock)
  %20 = call i32 @msleep(i32 250)
  %21 = load i64, i64* @jiffies, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i32, i32* @HZ, align 4
  %24 = mul nsw i32 10, %23
  %25 = sext i32 %24 to i64
  %26 = add i64 %22, %25
  %27 = call i64 @time_after(i64 %21, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %31 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %30, i32 0, i32 0
  %32 = call i32 @dev_emerg(%struct.TYPE_5__* %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* @jiffies, align 8
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %29, %18
  %35 = call i32 @mutex_lock(i32* @virtio_9p_lock)
  br label %13

36:                                               ; preds = %13
  %37 = call i32 @mutex_unlock(i32* @virtio_9p_lock)
  %38 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %39 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %41, align 8
  %43 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %44 = call i32 %42(%struct.virtio_device* %43)
  %45 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %46 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %48, align 8
  %50 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %51 = call i32 %49(%struct.virtio_device* %50)
  %52 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %53 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = call i32 @sysfs_remove_file(i32* %54, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dev_attr_mount_tag, i32 0, i32 0))
  %56 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %57 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* @KOBJ_CHANGE, align 4
  %60 = call i32 @kobject_uevent(i32* %58, i32 %59)
  %61 = load %struct.virtio_chan*, %struct.virtio_chan** %3, align 8
  %62 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %61, i32 0, i32 1
  %63 = load %struct.virtio_chan*, %struct.virtio_chan** %62, align 8
  %64 = call i32 @kfree(%struct.virtio_chan* %63)
  %65 = load %struct.virtio_chan*, %struct.virtio_chan** %3, align 8
  %66 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %65, i32 0, i32 0
  %67 = load %struct.virtio_chan*, %struct.virtio_chan** %66, align 8
  %68 = call i32 @kfree(%struct.virtio_chan* %67)
  %69 = load %struct.virtio_chan*, %struct.virtio_chan** %3, align 8
  %70 = call i32 @kfree(%struct.virtio_chan* %69)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_emerg(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @sysfs_remove_file(i32*, i32*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @kfree(%struct.virtio_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
