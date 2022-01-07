; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_enable_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_enable_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.rt5640_priv = type { i32, i32, i32, i32, i32, %struct.snd_soc_jack*, i64 }

@RT5640_JD_CTRL = common dso_local global i32 0, align 4
@RT5640_JD_MASK = common dso_local global i32 0, align 4
@RT5640_GPIO_CTRL1 = common dso_local global i32 0, align 4
@RT5640_GP1_PIN_MASK = common dso_local global i32 0, align 4
@RT5640_GP1_PIN_IRQ = common dso_local global i32 0, align 4
@RT5640_GPIO_CTRL3 = common dso_local global i32 0, align 4
@RT5640_GP1_PF_MASK = common dso_local global i32 0, align 4
@RT5640_GP1_PF_OUT = common dso_local global i32 0, align 4
@RT5640_DUMMY1 = common dso_local global i64 0, align 8
@RT5640_DUMMY2 = common dso_local global i64 0, align 8
@RT5640_PR_BASE = common dso_local global i64 0, align 8
@RT5640_BIAS_CUR4 = common dso_local global i64 0, align 8
@RT5640_MICBIAS = common dso_local global i32 0, align 4
@RT5640_MIC1_OVTH_MASK = common dso_local global i32 0, align 4
@RT5640_MIC1_OVCD_MASK = common dso_local global i32 0, align 4
@RT5640_MIC1_OVCD_EN = common dso_local global i32 0, align 4
@RT5640_IRQ_CTRL2 = common dso_local global i32 0, align 4
@RT5640_MB1_OC_STKY_MASK = common dso_local global i32 0, align 4
@RT5640_MB1_OC_STKY_EN = common dso_local global i32 0, align 4
@RT5640_IRQ_CTRL1 = common dso_local global i64 0, align 8
@RT5640_IRQ_JD_NOR = common dso_local global i32 0, align 4
@RT5640_JD_P_INV = common dso_local global i32 0, align 4
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@system_long_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, %struct.snd_soc_jack*)* @rt5640_enable_jack_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5640_enable_jack_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_jack*, align 8
  %5 = alloca %struct.rt5640_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %4, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.rt5640_priv* %7, %struct.rt5640_priv** %5, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = load i32, i32* @RT5640_JD_CTRL, align 4
  %10 = load i32, i32* @RT5640_JD_MASK, align 4
  %11 = load %struct.rt5640_priv*, %struct.rt5640_priv** %5, align 8
  %12 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %8, i32 %9, i32 %10, i32 %13)
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %16 = load i32, i32* @RT5640_GPIO_CTRL1, align 4
  %17 = load i32, i32* @RT5640_GP1_PIN_MASK, align 4
  %18 = load i32, i32* @RT5640_GP1_PIN_IRQ, align 4
  %19 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %21 = load i32, i32* @RT5640_GPIO_CTRL3, align 4
  %22 = load i32, i32* @RT5640_GP1_PF_MASK, align 4
  %23 = load i32, i32* @RT5640_GP1_PF_OUT, align 4
  %24 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = load i64, i64* @RT5640_DUMMY1, align 8
  %27 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %25, i64 %26, i32 16193)
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %29 = load i64, i64* @RT5640_DUMMY2, align 8
  %30 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %28, i64 %29, i32 16385)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %32 = load i64, i64* @RT5640_PR_BASE, align 8
  %33 = load i64, i64* @RT5640_BIAS_CUR4, align 8
  %34 = add nsw i64 %32, %33
  %35 = load %struct.rt5640_priv*, %struct.rt5640_priv** %5, align 8
  %36 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 43008, %37
  %39 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %31, i64 %34, i32 %38)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %41 = load i32, i32* @RT5640_MICBIAS, align 4
  %42 = load i32, i32* @RT5640_MIC1_OVTH_MASK, align 4
  %43 = load i32, i32* @RT5640_MIC1_OVCD_MASK, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.rt5640_priv*, %struct.rt5640_priv** %5, align 8
  %46 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @RT5640_MIC1_OVCD_EN, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %40, i32 %41, i32 %44, i32 %49)
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %52 = load i32, i32* @RT5640_IRQ_CTRL2, align 4
  %53 = load i32, i32* @RT5640_MB1_OC_STKY_MASK, align 4
  %54 = load i32, i32* @RT5640_MB1_OC_STKY_EN, align 4
  %55 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.rt5640_priv*, %struct.rt5640_priv** %5, align 8
  %57 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %2
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %62 = load i64, i64* @RT5640_IRQ_CTRL1, align 8
  %63 = load i32, i32* @RT5640_IRQ_JD_NOR, align 4
  %64 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %61, i64 %62, i32 %63)
  br label %72

65:                                               ; preds = %2
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %67 = load i64, i64* @RT5640_IRQ_CTRL1, align 8
  %68 = load i32, i32* @RT5640_IRQ_JD_NOR, align 4
  %69 = load i32, i32* @RT5640_JD_P_INV, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %66, i64 %67, i32 %70)
  br label %72

72:                                               ; preds = %65, %60
  %73 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %4, align 8
  %74 = load %struct.rt5640_priv*, %struct.rt5640_priv** %5, align 8
  %75 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %74, i32 0, i32 5
  store %struct.snd_soc_jack* %73, %struct.snd_soc_jack** %75, align 8
  %76 = load %struct.rt5640_priv*, %struct.rt5640_priv** %5, align 8
  %77 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %76, i32 0, i32 5
  %78 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %77, align 8
  %79 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %72
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %86 = call i32 @rt5640_enable_micbias1_for_ovcd(%struct.snd_soc_component* %85)
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %88 = call i32 @rt5640_enable_micbias1_ovcd_irq(%struct.snd_soc_component* %87)
  br label %89

89:                                               ; preds = %84, %72
  %90 = load %struct.rt5640_priv*, %struct.rt5640_priv** %5, align 8
  %91 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @enable_irq(i32 %92)
  %94 = load i32, i32* @system_long_wq, align 4
  %95 = load %struct.rt5640_priv*, %struct.rt5640_priv** %5, align 8
  %96 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %95, i32 0, i32 3
  %97 = call i32 @queue_work(i32 %94, i32* %96)
  ret void
}

declare dso_local %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i64, i32) #1

declare dso_local i32 @rt5640_enable_micbias1_for_ovcd(%struct.snd_soc_component*) #1

declare dso_local i32 @rt5640_enable_micbias1_ovcd_irq(%struct.snd_soc_component*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
