; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-wm8960.c_mt2701_wm8960_be_ops_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-wm8960.c_mt2701_wm8960_be_ops_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@SND_SOC_CLOCK_OUT = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @mt2701_wm8960_be_ops_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2701_wm8960_be_ops_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %13, align 8
  store %struct.snd_soc_pcm_runtime* %14, %struct.snd_soc_pcm_runtime** %5, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %15, i32 0, i32 1
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %16, align 8
  store %struct.snd_soc_dai* %17, %struct.snd_soc_dai** %6, align 8
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %19 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %19, align 8
  store %struct.snd_soc_dai* %20, %struct.snd_soc_dai** %7, align 8
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ugt i32 %23, 192000
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 2, i32 4
  store i32 %26, i32* %10, align 4
  store i32 64, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %11, align 4
  %29 = mul i32 %27, %28
  %30 = load i32, i32* %10, align 4
  %31 = mul i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SND_SOC_CLOCK_OUT, align 4
  %35 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %32, i32 0, i32 %33, i32 %34)
  %36 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %39 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %36, i32 0, i32 %37, i32 %38)
  ret i32 0
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
