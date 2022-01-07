; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_tosa.c_tosa_ext_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_tosa.c_tosa_ext_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_context = type { i32 }

@tosa_jack_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Mic (Internal)\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Headphone Jack\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@tosa_spk_func = common dso_local global i64 0, align 8
@TOSA_SPK_ON = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_dapm_context*)* @tosa_ext_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tosa_ext_control(%struct.snd_soc_dapm_context* %0) #0 {
  %2 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_context** %2, align 8
  %3 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %4 = call i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context* %3)
  %5 = load i32, i32* @tosa_jack_func, align 4
  switch i32 %5, label %27 [
    i32 129, label %6
    i32 128, label %13
    i32 130, label %20
  ]

6:                                                ; preds = %1
  %7 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %8 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %10 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %12 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %15 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %17 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %19 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %27

20:                                               ; preds = %1
  %21 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %22 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %24 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %26 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %1, %20, %13, %6
  %28 = load i64, i64* @tosa_spk_func, align 8
  %29 = load i64, i64* @TOSA_SPK_ON, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %33 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %37

34:                                               ; preds = %27
  %35 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %36 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %39 = call i32 @snd_soc_dapm_sync_unlocked(%struct.snd_soc_dapm_context* %38)
  %40 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %41 = call i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context* %40)
  ret void
}

declare dso_local i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync_unlocked(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
