; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_bd28623.c_bd28623_codec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_bd28623.c_bd28623_codec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.bd28623_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @bd28623_codec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd28623_codec_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.bd28623_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.bd28623_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.bd28623_priv* %7, %struct.bd28623_priv** %4, align 8
  %8 = load %struct.bd28623_priv*, %struct.bd28623_priv** %4, align 8
  %9 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.bd28623_priv*, %struct.bd28623_priv** %4, align 8
  %11 = call i32 @bd28623_power_on(%struct.bd28623_priv* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %27

16:                                               ; preds = %1
  %17 = load %struct.bd28623_priv*, %struct.bd28623_priv** %4, align 8
  %18 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bd28623_priv*, %struct.bd28623_priv** %4, align 8
  %21 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 0, i32 1
  %26 = call i32 @gpiod_set_value_cansleep(i32 %19, i32 %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %16, %14
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.bd28623_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @bd28623_power_on(%struct.bd28623_priv*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
