; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_magician.c_magician_ext_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_magician.c_magician_ext_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_context = type { i32 }

@magician_spk_switch = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@magician_hp_switch = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Headphone Jack\00", align 1
@magician_in_sel = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Headset Mic\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Call Mic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_dapm_context*)* @magician_ext_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @magician_ext_control(%struct.snd_soc_dapm_context* %0) #0 {
  %2 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_context** %2, align 8
  %3 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %4 = call i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context* %3)
  %5 = load i64, i64* @magician_spk_switch, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %9 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %13

10:                                               ; preds = %1
  %11 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %12 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i64, i64* @magician_hp_switch, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %18 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %22

19:                                               ; preds = %13
  %20 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %21 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* @magician_in_sel, align 4
  switch i32 %23, label %34 [
    i32 129, label %24
    i32 128, label %29
  ]

24:                                               ; preds = %22
  %25 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %26 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %28 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %34

29:                                               ; preds = %22
  %30 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %31 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %32 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %33 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %22, %29, %24
  %35 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %36 = call i32 @snd_soc_dapm_sync_unlocked(%struct.snd_soc_dapm_context* %35)
  %37 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %38 = call i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context* %37)
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
