; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4535.c_ak4535_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4535.c_ak4535_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.ak4535_priv = type { i32 }

@AK4535_MODE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @ak4535_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4535_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.ak4535_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %7, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %16 = call %struct.ak4535_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.ak4535_priv* %16, %struct.ak4535_priv** %8, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %18 = load i32, i32* @AK4535_MODE2, align 4
  %19 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %17, i32 %18)
  %20 = and i32 %19, -97
  store i32 %20, i32* %9, align 4
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  store i32 %22, i32* %10, align 4
  store i32 256, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.ak4535_priv*, %struct.ak4535_priv** %8, align 8
  %27 = getelementptr inbounds %struct.ak4535_priv, %struct.ak4535_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %25, %3
  %32 = load i32, i32* %11, align 4
  switch i32 %32, label %40 [
    i32 1024, label %33
    i32 512, label %36
    i32 256, label %39
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, 64
  store i32 %35, i32* %9, align 4
  br label %40

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, 32
  store i32 %38, i32* %9, align 4
  br label %40

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %31, %39, %36, %33
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %42 = load i32, i32* @AK4535_MODE2, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %41, i32 %42, i32 %43)
  ret i32 0
}

declare dso_local %struct.ak4535_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
