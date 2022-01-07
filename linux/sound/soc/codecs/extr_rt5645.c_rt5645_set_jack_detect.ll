; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_set_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_set_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.rt5645_priv = type { i64, i32, i32, %struct.snd_soc_jack*, %struct.snd_soc_jack*, %struct.snd_soc_jack* }

@CODEC_TYPE_RT5650 = common dso_local global i64 0, align 8
@RT5645_GPIO_CTRL1 = common dso_local global i32 0, align 4
@RT5645_GP1_PIN_IRQ = common dso_local global i32 0, align 4
@RT5645_GEN_CTRL1 = common dso_local global i32 0, align 4
@RT5645_DIG_GATE_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt5645_set_jack_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1, %struct.snd_soc_jack* %2, %struct.snd_soc_jack* %3) #0 {
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_jack*, align 8
  %7 = alloca %struct.snd_soc_jack*, align 8
  %8 = alloca %struct.snd_soc_jack*, align 8
  %9 = alloca %struct.rt5645_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %6, align 8
  store %struct.snd_soc_jack* %2, %struct.snd_soc_jack** %7, align 8
  store %struct.snd_soc_jack* %3, %struct.snd_soc_jack** %8, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %11 = call %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.rt5645_priv* %11, %struct.rt5645_priv** %9, align 8
  %12 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %13 = load %struct.rt5645_priv*, %struct.rt5645_priv** %9, align 8
  %14 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %13, i32 0, i32 5
  store %struct.snd_soc_jack* %12, %struct.snd_soc_jack** %14, align 8
  %15 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %7, align 8
  %16 = load %struct.rt5645_priv*, %struct.rt5645_priv** %9, align 8
  %17 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %16, i32 0, i32 4
  store %struct.snd_soc_jack* %15, %struct.snd_soc_jack** %17, align 8
  %18 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %8, align 8
  %19 = load %struct.rt5645_priv*, %struct.rt5645_priv** %9, align 8
  %20 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %19, i32 0, i32 3
  store %struct.snd_soc_jack* %18, %struct.snd_soc_jack** %20, align 8
  %21 = load %struct.rt5645_priv*, %struct.rt5645_priv** %9, align 8
  %22 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %21, i32 0, i32 3
  %23 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %22, align 8
  %24 = icmp ne %struct.snd_soc_jack* %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %4
  %26 = load %struct.rt5645_priv*, %struct.rt5645_priv** %9, align 8
  %27 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CODEC_TYPE_RT5650, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load %struct.rt5645_priv*, %struct.rt5645_priv** %9, align 8
  %33 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %32, i32 0, i32 1
  store i32 1, i32* %33, align 8
  %34 = load %struct.rt5645_priv*, %struct.rt5645_priv** %9, align 8
  %35 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @RT5645_GPIO_CTRL1, align 4
  %38 = load i32, i32* @RT5645_GP1_PIN_IRQ, align 4
  %39 = load i32, i32* @RT5645_GP1_PIN_IRQ, align 4
  %40 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.rt5645_priv*, %struct.rt5645_priv** %9, align 8
  %42 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RT5645_GEN_CTRL1, align 4
  %45 = load i32, i32* @RT5645_DIG_GATE_CTRL, align 4
  %46 = load i32, i32* @RT5645_DIG_GATE_CTRL, align 4
  %47 = call i32 @regmap_update_bits(i32 %43, i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %31, %25, %4
  %49 = load %struct.rt5645_priv*, %struct.rt5645_priv** %9, align 8
  %50 = call i32 @rt5645_irq(i32 0, %struct.rt5645_priv* %49)
  ret i32 0
}

declare dso_local %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @rt5645_irq(i32, %struct.rt5645_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
