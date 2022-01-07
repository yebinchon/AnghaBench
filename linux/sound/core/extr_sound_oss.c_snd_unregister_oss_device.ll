; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_sound_oss.c_snd_unregister_oss_device.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_sound_oss.c_snd_unregister_oss_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_minor = type { i32 }
%struct.snd_card = type { i64 }

@SNDRV_MINOR_OSS_DEVICES = common dso_local global i64 0, align 8
@sound_oss_mutex = common dso_local global i32 0, align 4
@snd_oss_minors = common dso_local global %struct.snd_minor** null, align 8
@ENOENT = common dso_local global i32 0, align 4
@SNDRV_MINOR_OSS_AUDIO = common dso_local global i32 0, align 4
@SNDRV_MINOR_OSS_DMMIDI = common dso_local global i32 0, align 4
@SNDRV_MINOR_OSS_DMMIDI1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_unregister_oss_device(i32 %0, %struct.snd_card* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_minor*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.snd_card* %1, %struct.snd_card** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @snd_oss_kernel_minor(i32 %12, %struct.snd_card* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @SNDRV_MINOR_OSS_CARD(i32 %16)
  store i32 %17, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %18 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %19 = icmp ne %struct.snd_card* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %22 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SNDRV_MINOR_OSS_DEVICES, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %80

27:                                               ; preds = %20, %3
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %80

32:                                               ; preds = %27
  %33 = call i32 @mutex_lock(i32* @sound_oss_mutex)
  %34 = load %struct.snd_minor**, %struct.snd_minor*** @snd_oss_minors, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.snd_minor*, %struct.snd_minor** %34, i64 %36
  %38 = load %struct.snd_minor*, %struct.snd_minor** %37, align 8
  store %struct.snd_minor* %38, %struct.snd_minor** %11, align 8
  %39 = load %struct.snd_minor*, %struct.snd_minor** %11, align 8
  %40 = icmp eq %struct.snd_minor* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = call i32 @mutex_unlock(i32* @sound_oss_mutex)
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %80

45:                                               ; preds = %32
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @unregister_sound_special(i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @SNDRV_MINOR_OSS_DEVICE(i32 %48)
  switch i32 %49, label %62 [
    i32 128, label %50
    i32 130, label %54
    i32 129, label %58
  ]

50:                                               ; preds = %45
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @SNDRV_MINOR_OSS_AUDIO, align 4
  %53 = call i32 @SNDRV_MINOR_OSS(i32 %51, i32 %52)
  store i32 %53, i32* %10, align 4
  br label %62

54:                                               ; preds = %45
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @SNDRV_MINOR_OSS_DMMIDI, align 4
  %57 = call i32 @SNDRV_MINOR_OSS(i32 %55, i32 %56)
  store i32 %57, i32* %10, align 4
  br label %62

58:                                               ; preds = %45
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @SNDRV_MINOR_OSS_DMMIDI1, align 4
  %61 = call i32 @SNDRV_MINOR_OSS(i32 %59, i32 %60)
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %45, %58, %54, %50
  %63 = load i32, i32* %10, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @unregister_sound_special(i32 %66)
  %68 = load %struct.snd_minor**, %struct.snd_minor*** @snd_oss_minors, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.snd_minor*, %struct.snd_minor** %68, i64 %70
  store %struct.snd_minor* null, %struct.snd_minor** %71, align 8
  br label %72

72:                                               ; preds = %65, %62
  %73 = load %struct.snd_minor**, %struct.snd_minor*** @snd_oss_minors, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.snd_minor*, %struct.snd_minor** %73, i64 %75
  store %struct.snd_minor* null, %struct.snd_minor** %76, align 8
  %77 = call i32 @mutex_unlock(i32* @sound_oss_mutex)
  %78 = load %struct.snd_minor*, %struct.snd_minor** %11, align 8
  %79 = call i32 @kfree(%struct.snd_minor* %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %72, %41, %30, %26
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @snd_oss_kernel_minor(i32, %struct.snd_card*, i32) #1

declare dso_local i32 @SNDRV_MINOR_OSS_CARD(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @unregister_sound_special(i32) #1

declare dso_local i32 @SNDRV_MINOR_OSS_DEVICE(i32) #1

declare dso_local i32 @SNDRV_MINOR_OSS(i32, i32) #1

declare dso_local i32 @kfree(%struct.snd_minor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
