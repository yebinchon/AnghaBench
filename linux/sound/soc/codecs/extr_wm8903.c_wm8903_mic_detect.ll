; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8903.c_wm8903_mic_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8903.c_wm8903_mic_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.wm8903_priv = type { i32, i32, %struct.snd_soc_jack* }

@WM8903_MICDET_EINT = common dso_local global i32 0, align 4
@WM8903_MICSHRT_EINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Enabling microphone detection: %x %x\0A\00", align 1
@WM8903_INTERRUPT_STATUS_1_MASK = common dso_local global i32 0, align 4
@WM8903_WRITE_SEQUENCER_0 = common dso_local global i32 0, align 4
@WM8903_WSEQ_ENA = common dso_local global i32 0, align 4
@WM8903_MIC_BIAS_CONTROL_0 = common dso_local global i32 0, align 4
@WM8903_MICDET_ENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm8903_mic_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_jack*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wm8903_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %12 = call %struct.wm8903_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.wm8903_priv* %12, %struct.wm8903_priv** %9, align 8
  %13 = load i32, i32* @WM8903_MICDET_EINT, align 4
  %14 = load i32, i32* @WM8903_MICSHRT_EINT, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %17 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %23 = load %struct.wm8903_priv*, %struct.wm8903_priv** %9, align 8
  %24 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %23, i32 0, i32 2
  store %struct.snd_soc_jack* %22, %struct.snd_soc_jack** %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.wm8903_priv*, %struct.wm8903_priv** %9, align 8
  %27 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.wm8903_priv*, %struct.wm8903_priv** %9, align 8
  %30 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %4
  %34 = load i32, i32* @WM8903_MICDET_EINT, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %33, %4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* @WM8903_MICSHRT_EINT, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %41, %38
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %48 = load i32, i32* @WM8903_INTERRUPT_STATUS_1_MASK, align 4
  %49 = load i32, i32* @WM8903_MICDET_EINT, align 4
  %50 = load i32, i32* @WM8903_MICSHRT_EINT, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %47, i32 %48, i32 %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %46
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %56, %46
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %61 = load i32, i32* @WM8903_WRITE_SEQUENCER_0, align 4
  %62 = load i32, i32* @WM8903_WSEQ_ENA, align 4
  %63 = load i32, i32* @WM8903_WSEQ_ENA, align 4
  %64 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %60, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %66 = load i32, i32* @WM8903_MIC_BIAS_CONTROL_0, align 4
  %67 = load i32, i32* @WM8903_MICDET_ENA, align 4
  %68 = load i32, i32* @WM8903_MICDET_ENA, align 4
  %69 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %65, i32 %66, i32 %67, i32 %68)
  br label %75

70:                                               ; preds = %56
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %72 = load i32, i32* @WM8903_MIC_BIAS_CONTROL_0, align 4
  %73 = load i32, i32* @WM8903_MICDET_ENA, align 4
  %74 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 %73, i32 0)
  br label %75

75:                                               ; preds = %70, %59
  ret i32 0
}

declare dso_local %struct.wm8903_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
