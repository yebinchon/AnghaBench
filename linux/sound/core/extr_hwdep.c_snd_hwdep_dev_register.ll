; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_hwdep.c_snd_hwdep_dev_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_hwdep.c_snd_hwdep_dev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_device = type { %struct.snd_hwdep* }
%struct.snd_hwdep = type { i32, i64, i32, i64, i32, %struct.snd_card* }
%struct.snd_card = type { i32 }

@register_mutex = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@snd_hwdep_devices = common dso_local global i32 0, align 4
@SNDRV_DEVICE_TYPE_HWDEP = common dso_local global i32 0, align 4
@snd_hwdep_f_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unable to register\0A\00", align 1
@SNDRV_OSS_DEVICE_TYPE_DMFM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_device*)* @snd_hwdep_dev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hwdep_dev_register(%struct.snd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_device*, align 8
  %4 = alloca %struct.snd_hwdep*, align 8
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_device* %0, %struct.snd_device** %3, align 8
  %7 = load %struct.snd_device*, %struct.snd_device** %3, align 8
  %8 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %7, i32 0, i32 0
  %9 = load %struct.snd_hwdep*, %struct.snd_hwdep** %8, align 8
  store %struct.snd_hwdep* %9, %struct.snd_hwdep** %4, align 8
  %10 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %11 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %10, i32 0, i32 5
  %12 = load %struct.snd_card*, %struct.snd_card** %11, align 8
  store %struct.snd_card* %12, %struct.snd_card** %5, align 8
  %13 = call i32 @mutex_lock(i32* @register_mutex)
  %14 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %15 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %16 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @snd_hwdep_search(%struct.snd_card* %14, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = call i32 @mutex_unlock(i32* @register_mutex)
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %52

24:                                               ; preds = %1
  %25 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %26 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %25, i32 0, i32 4
  %27 = call i32 @list_add_tail(i32* %26, i32* @snd_hwdep_devices)
  %28 = load i32, i32* @SNDRV_DEVICE_TYPE_HWDEP, align 4
  %29 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %30 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %29, i32 0, i32 5
  %31 = load %struct.snd_card*, %struct.snd_card** %30, align 8
  %32 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %33 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %36 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %37 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %36, i32 0, i32 2
  %38 = call i32 @snd_register_device(i32 %28, %struct.snd_card* %31, i64 %34, i32* @snd_hwdep_f_ops, %struct.snd_hwdep* %35, i32* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %24
  %42 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %43 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %42, i32 0, i32 2
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %46 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %45, i32 0, i32 4
  %47 = call i32 @list_del(i32* %46)
  %48 = call i32 @mutex_unlock(i32* @register_mutex)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %52

50:                                               ; preds = %24
  %51 = call i32 @mutex_unlock(i32* @register_mutex)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %41, %20
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @snd_hwdep_search(%struct.snd_card*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @snd_register_device(i32, %struct.snd_card*, i64, i32*, %struct.snd_hwdep*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
