; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_corgi.c_corgi_ext_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_corgi.c_corgi_ext_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_context = type { i32 }

@corgi_jack_func = common dso_local global i32 0, align 4
@CORGI_GPIO_MUTE_L = common dso_local global i32 0, align 4
@CORGI_GPIO_MUTE_R = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Mic Jack\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Line Jack\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Headphone Jack\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@corgi_spk_func = common dso_local global i64 0, align 8
@CORGI_SPK_ON = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"Ext Spk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_dapm_context*)* @corgi_ext_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @corgi_ext_control(%struct.snd_soc_dapm_context* %0) #0 {
  %2 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_context** %2, align 8
  %3 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %4 = call i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context* %3)
  %5 = load i32, i32* @corgi_jack_func, align 4
  switch i32 %5, label %58 [
    i32 130, label %6
    i32 128, label %19
    i32 129, label %32
    i32 131, label %45
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @CORGI_GPIO_MUTE_L, align 4
  %8 = call i32 @gpio_set_value(i32 %7, i32 1)
  %9 = load i32, i32* @CORGI_GPIO_MUTE_R, align 4
  %10 = call i32 @gpio_set_value(i32 %9, i32 1)
  %11 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %12 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %14 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %16 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %17 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %18 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %58

19:                                               ; preds = %1
  %20 = load i32, i32* @CORGI_GPIO_MUTE_L, align 4
  %21 = call i32 @gpio_set_value(i32 %20, i32 0)
  %22 = load i32, i32* @CORGI_GPIO_MUTE_R, align 4
  %23 = call i32 @gpio_set_value(i32 %22, i32 0)
  %24 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %25 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %27 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %29 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %31 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %58

32:                                               ; preds = %1
  %33 = load i32, i32* @CORGI_GPIO_MUTE_L, align 4
  %34 = call i32 @gpio_set_value(i32 %33, i32 0)
  %35 = load i32, i32* @CORGI_GPIO_MUTE_R, align 4
  %36 = call i32 @gpio_set_value(i32 %35, i32 0)
  %37 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %38 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %40 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %42 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %44 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %58

45:                                               ; preds = %1
  %46 = load i32, i32* @CORGI_GPIO_MUTE_L, align 4
  %47 = call i32 @gpio_set_value(i32 %46, i32 0)
  %48 = load i32, i32* @CORGI_GPIO_MUTE_R, align 4
  %49 = call i32 @gpio_set_value(i32 %48, i32 1)
  %50 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %51 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %53 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %55 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %57 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %1, %45, %32, %19, %6
  %59 = load i64, i64* @corgi_spk_func, align 8
  %60 = load i64, i64* @CORGI_SPK_ON, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %64 = call i32 @snd_soc_dapm_enable_pin_unlocked(%struct.snd_soc_dapm_context* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %68

65:                                               ; preds = %58
  %66 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %67 = call i32 @snd_soc_dapm_disable_pin_unlocked(%struct.snd_soc_dapm_context* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %70 = call i32 @snd_soc_dapm_sync_unlocked(%struct.snd_soc_dapm_context* %69)
  %71 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %2, align 8
  %72 = call i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context* %71)
  ret void
}

declare dso_local i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

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
