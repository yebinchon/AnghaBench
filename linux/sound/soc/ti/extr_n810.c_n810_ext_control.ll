; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_n810.c_n810_ext_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_n810.c_n810_ext_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_context = type { i32 }

@n810_jack_func = common dso_local global i32 0, align 4
@n810_spk_func = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"Ext Spk\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Headphone Jack\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"HS Mic\00", align 1
@n810_dmic_func = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"DMic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_dapm_context*)* @n810_ext_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n810_ext_control(%struct.snd_soc_dapm_context* %0) #0 {
  %2 = alloca %struct.snd_soc_dapm_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_context** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @n810_jack_func, align 4
  switch i32 %5, label %9 [
    i32 129, label %6
    i32 130, label %7
    i32 128, label %8
  ]

6:                                                ; preds = %1
  store i32 1, i32* %4, align 4
  br label %7

7:                                                ; preds = %1, %6
  store i32 1, i32* %3, align 4
  br label %9

8:                                                ; preds = %1
  store i32 1, i32* %4, align 4
  br label %9

9:                                                ; preds = %1, %8, %7
  %10 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %11 = call i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context* %10)
  %12 = load i64, i64* @n810_spk_func, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %16 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %20

17:                                               ; preds = %9
  %18 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %19 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %25 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %29

26:                                               ; preds = %20
  %27 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %28 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %34 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %38

35:                                               ; preds = %29
  %36 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %37 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i64, i64* @n810_dmic_func, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %43 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %47

44:                                               ; preds = %38
  %45 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %46 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %49 = call i32 @snd_soc_dapm_sync_unlocked(%struct.snd_soc_dapm_context* %48)
  %50 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %51 = call i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context* %50)
  ret void
}

declare dso_local i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync_unlocked(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
