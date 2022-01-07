; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_snd_hdac_sync_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_snd_hdac_sync_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@AC_VERB_GET_POWER_STATE = common dso_local global i32 0, align 4
@AC_PWRST_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_sync_power_state(%struct.hdac_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hdac_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* @jiffies, align 8
  %12 = call i64 @msecs_to_jiffies(i32 500)
  %13 = add i64 %11, %12
  store i64 %13, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %44, %3
  %15 = load i32, i32* %10, align 4
  %16 = icmp ult i32 %15, 500
  br i1 %16, label %17, label %47

17:                                               ; preds = %14
  %18 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @AC_VERB_GET_POWER_STATE, align 4
  %21 = call i32 @snd_hdac_codec_read(%struct.hdac_device* %18, i32 %19, i32 0, i32 %20, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @AC_PWRST_ERROR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = call i32 @msleep(i32 20)
  br label %47

28:                                               ; preds = %17
  %29 = load i32, i32* %8, align 4
  %30 = lshr i32 %29, 4
  %31 = and i32 %30, 15
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %47

36:                                               ; preds = %28
  %37 = load i64, i64* @jiffies, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @time_after_eq(i64 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %47

42:                                               ; preds = %36
  %43 = call i32 @msleep(i32 1)
  br label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %10, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %14

47:                                               ; preds = %41, %35, %26, %14
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @snd_hdac_codec_read(%struct.hdac_device*, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
