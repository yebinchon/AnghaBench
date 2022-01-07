; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_pm860x_mic_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_88pm860x-codec.c_pm860x_mic_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.pm860x_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.snd_soc_jack* }

@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@REG_MIC_DET = common dso_local global i32 0, align 4
@MICDET_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm860x_mic_jack_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_soc_jack*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pm860x_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.pm860x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.pm860x_priv* %9, %struct.pm860x_priv** %7, align 8
  %10 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %5, align 8
  %11 = load %struct.pm860x_priv*, %struct.pm860x_priv** %7, align 8
  %12 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store %struct.snd_soc_jack* %10, %struct.snd_soc_jack** %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.pm860x_priv*, %struct.pm860x_priv** %7, align 8
  %16 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.pm860x_priv*, %struct.pm860x_priv** %7, align 8
  %24 = getelementptr inbounds %struct.pm860x_priv, %struct.pm860x_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @REG_MIC_DET, align 4
  %27 = load i32, i32* @MICDET_MASK, align 4
  %28 = load i32, i32* @MICDET_MASK, align 4
  %29 = call i32 @pm860x_set_bits(i32 %25, i32 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %22, %3
  %31 = load %struct.pm860x_priv*, %struct.pm860x_priv** %7, align 8
  %32 = call i32 @pm860x_component_handler(i32 0, %struct.pm860x_priv* %31)
  ret i32 0
}

declare dso_local %struct.pm860x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @pm860x_set_bits(i32, i32, i32, i32) #1

declare dso_local i32 @pm860x_component_handler(i32, %struct.pm860x_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
