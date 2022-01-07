; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32, i32, %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.asoc_simple_priv = type { i32 }
%struct.simple_dai_props = type { i32, i32, i64 }

@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asoc_simple_shutdown(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.asoc_simple_priv*, align 8
  %7 = alloca %struct.simple_dai_props*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  store %struct.snd_soc_pcm_runtime* %10, %struct.snd_soc_pcm_runtime** %3, align 8
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %11, i32 0, i32 3
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %12, align 8
  store %struct.snd_soc_dai* %13, %struct.snd_soc_dai** %4, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 2
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %15, align 8
  store %struct.snd_soc_dai* %16, %struct.snd_soc_dai** %5, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.asoc_simple_priv* @snd_soc_card_get_drvdata(i32 %19)
  store %struct.asoc_simple_priv* %20, %struct.asoc_simple_priv** %6, align 8
  %21 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %6, align 8
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %23 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.simple_dai_props* @simple_priv_to_props(%struct.asoc_simple_priv* %21, i32 %24)
  store %struct.simple_dai_props* %25, %struct.simple_dai_props** %7, align 8
  %26 = load %struct.simple_dai_props*, %struct.simple_dai_props** %7, align 8
  %27 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %32 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %33 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %31, i32 0, i32 0, i32 %32)
  %34 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %35 = load i32, i32* @SND_SOC_CLOCK_OUT, align 4
  %36 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %34, i32 0, i32 0, i32 %35)
  br label %37

37:                                               ; preds = %30, %1
  %38 = load %struct.simple_dai_props*, %struct.simple_dai_props** %7, align 8
  %39 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @asoc_simple_clk_disable(i32 %40)
  %42 = load %struct.simple_dai_props*, %struct.simple_dai_props** %7, align 8
  %43 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @asoc_simple_clk_disable(i32 %44)
  ret void
}

declare dso_local %struct.asoc_simple_priv* @snd_soc_card_get_drvdata(i32) #1

declare dso_local %struct.simple_dai_props* @simple_priv_to_props(%struct.asoc_simple_priv*, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @asoc_simple_clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
