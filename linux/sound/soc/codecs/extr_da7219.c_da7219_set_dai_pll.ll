; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219.c_da7219_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.da7219_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @da7219_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7219_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_soc_component*, align 8
  %12 = alloca %struct.da7219_priv*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %11, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %18 = call %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.da7219_priv* %18, %struct.da7219_priv** %12, align 8
  %19 = load %struct.da7219_priv*, %struct.da7219_priv** %12, align 8
  %20 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @da7219_set_pll(%struct.snd_soc_component* %22, i32 %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load %struct.da7219_priv*, %struct.da7219_priv** %12, align 8
  %27 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* %13, align 4
  ret i32 %29
}

declare dso_local %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @da7219_set_pll(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
