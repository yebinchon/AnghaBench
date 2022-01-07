; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_rx51.c_rx51_ext_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_rx51.c_rx51_ext_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_context = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.rx51_audio_pdata = type { i32 }

@rx51_jack_func = common dso_local global i32 0, align 4
@rx51_spk_func = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"Ext Spk\00", align 1
@rx51_dmic_func = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"DMic\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Headphone Jack\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"HS Mic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_dapm_context*)* @rx51_ext_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx51_ext_control(%struct.snd_soc_dapm_context* %0) #0 {
  %2 = alloca %struct.snd_soc_dapm_context*, align 8
  %3 = alloca %struct.snd_soc_card*, align 8
  %4 = alloca %struct.rx51_audio_pdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_context** %2, align 8
  %8 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  store %struct.snd_soc_card* %10, %struct.snd_soc_card** %3, align 8
  %11 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %12 = call %struct.rx51_audio_pdata* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %11)
  store %struct.rx51_audio_pdata* %12, %struct.rx51_audio_pdata** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @rx51_jack_func, align 4
  switch i32 %13, label %17 [
    i32 128, label %14
    i32 129, label %15
    i32 130, label %16
  ]

14:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  store i32 1, i32* %5, align 4
  br label %17

15:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %16

16:                                               ; preds = %1, %15
  store i32 1, i32* %5, align 4
  br label %17

17:                                               ; preds = %1, %16, %14
  %18 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %19 = call i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context* %18)
  %20 = load i64, i64* @rx51_spk_func, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %24 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %28

25:                                               ; preds = %17
  %26 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %27 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i64, i64* @rx51_dmic_func, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %33 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %37

34:                                               ; preds = %28
  %35 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %36 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %42 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %46

43:                                               ; preds = %37
  %44 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %45 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %51 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %55

52:                                               ; preds = %46
  %53 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %54 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.rx51_audio_pdata*, %struct.rx51_audio_pdata** %4, align 8
  %57 = getelementptr inbounds %struct.rx51_audio_pdata, %struct.rx51_audio_pdata* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @gpiod_set_value(i32 %58, i32 %59)
  %61 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %62 = call i32 @snd_soc_dapm_sync_unlocked(%struct.snd_soc_dapm_context* %61)
  %63 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %64 = call i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context* %63)
  ret void
}

declare dso_local %struct.rx51_audio_pdata* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @snd_soc_dapm_sync_unlocked(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
