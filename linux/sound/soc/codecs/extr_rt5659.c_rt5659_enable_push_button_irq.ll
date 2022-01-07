; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_enable_push_button_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_enable_push_button_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }

@RT5659_4BTN_IL_CMD_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"MICBIAS1\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Mic Det Power\00", align 1
@RT5659_PWR_ANLG_2 = common dso_local global i32 0, align 4
@RT5659_PWR_MB1 = common dso_local global i32 0, align 4
@RT5659_PWR_VOL = common dso_local global i32 0, align 4
@RT5659_PWR_MIC_DET = common dso_local global i32 0, align 4
@RT5659_IRQ_CTRL_2 = common dso_local global i32 0, align 4
@RT5659_IL_IRQ_MASK = common dso_local global i32 0, align 4
@RT5659_IL_IRQ_EN = common dso_local global i32 0, align 4
@RT5659_4BTN_IL_CMD_2 = common dso_local global i32 0, align 4
@RT5659_4BTN_IL_MASK = common dso_local global i32 0, align 4
@RT5659_4BTN_IL_EN = common dso_local global i32 0, align 4
@RT5659_4BTN_IL_DIS = common dso_local global i32 0, align 4
@RT5659_IL_IRQ_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @rt5659_enable_push_button_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5659_enable_push_button_irq(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_context*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %6)
  store %struct.snd_soc_dapm_context* %7, %struct.snd_soc_dapm_context** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %2
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = load i32, i32* @RT5659_4BTN_IL_CMD_1, align 4
  %13 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %11, i32 %12, i32 11)
  %14 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %15 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %17 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %19 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %18)
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %21 = load i32, i32* @RT5659_PWR_ANLG_2, align 4
  %22 = load i32, i32* @RT5659_PWR_MB1, align 4
  %23 = load i32, i32* @RT5659_PWR_MB1, align 4
  %24 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = load i32, i32* @RT5659_PWR_VOL, align 4
  %27 = load i32, i32* @RT5659_PWR_MIC_DET, align 4
  %28 = load i32, i32* @RT5659_PWR_MIC_DET, align 4
  %29 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %31 = load i32, i32* @RT5659_IRQ_CTRL_2, align 4
  %32 = load i32, i32* @RT5659_IL_IRQ_MASK, align 4
  %33 = load i32, i32* @RT5659_IL_IRQ_EN, align 4
  %34 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %36 = load i32, i32* @RT5659_4BTN_IL_CMD_2, align 4
  %37 = load i32, i32* @RT5659_4BTN_IL_MASK, align 4
  %38 = load i32, i32* @RT5659_4BTN_IL_EN, align 4
  %39 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %35, i32 %36, i32 %37, i32 %38)
  br label %57

40:                                               ; preds = %2
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %42 = load i32, i32* @RT5659_4BTN_IL_CMD_2, align 4
  %43 = load i32, i32* @RT5659_4BTN_IL_MASK, align 4
  %44 = load i32, i32* @RT5659_4BTN_IL_DIS, align 4
  %45 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %47 = load i32, i32* @RT5659_IRQ_CTRL_2, align 4
  %48 = load i32, i32* @RT5659_IL_IRQ_MASK, align 4
  %49 = load i32, i32* @RT5659_IL_IRQ_DIS, align 4
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %52 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %54 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %56 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %55)
  br label %57

57:                                               ; preds = %40, %10
  ret void
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
