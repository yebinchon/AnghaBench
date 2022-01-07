; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx2072x.c_cx2072x_enable_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx2072x.c_cx2072x_enable_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cx2072x_priv = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }

@CX2072X_GPIO_STICKY_MASK = common dso_local global i32 0, align 4
@CX2072X_UM_INTERRUPT_CRTL_E = common dso_local global i32 0, align 4
@CX2072X_PORTA_UNSOLICITED_RESPONSE = common dso_local global i32 0, align 4
@CX2072X_DIGITAL_TEST15 = common dso_local global i32 0, align 4
@CX2072X_ANALOG_TEST12 = common dso_local global i32 0, align 4
@CX2072X_DIGITAL_TEST1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"PORTD\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Headset Bias\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"PortD Mic Bias\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @cx2072x_enable_jack_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx2072x_enable_jack_detect(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.cx2072x_priv*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.cx2072x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.cx2072x_priv* %6, %struct.cx2072x_priv** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %7)
  store %struct.snd_soc_dapm_context* %8, %struct.snd_soc_dapm_context** %4, align 8
  %9 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %10 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CX2072X_GPIO_STICKY_MASK, align 4
  %13 = call i32 @regmap_write(i32 %11, i32 %12, i32 31)
  %14 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %15 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CX2072X_UM_INTERRUPT_CRTL_E, align 4
  %18 = call i32 @regmap_write(i32 %16, i32 %17, i32 301989888)
  %19 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %20 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CX2072X_PORTA_UNSOLICITED_RESPONSE, align 4
  %23 = call i32 @regmap_write(i32 %21, i32 %22, i32 128)
  %24 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %25 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CX2072X_DIGITAL_TEST15, align 4
  %28 = call i32 @regmap_write(i32 %26, i32 %27, i32 115)
  %29 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %30 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CX2072X_ANALOG_TEST12, align 4
  %33 = call i32 @regmap_write(i32 %31, i32 %32, i32 768)
  %34 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %3, align 8
  %35 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CX2072X_DIGITAL_TEST1, align 4
  %38 = call i32 @regmap_write(i32 %36, i32 %37, i32 0)
  %39 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %40 = call i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context* %39)
  %41 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %42 = call i32 @snd_soc_dapm_force_enable_pin_unlocked(%struct.snd_soc_dapm_context* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %44 = call i32 @snd_soc_dapm_force_enable_pin_unlocked(%struct.snd_soc_dapm_context* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %46 = call i32 @snd_soc_dapm_force_enable_pin_unlocked(%struct.snd_soc_dapm_context* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %48 = call i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context* %47)
  ret void
}

declare dso_local %struct.cx2072x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_mutex_lock(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin_unlocked(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_mutex_unlock(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
