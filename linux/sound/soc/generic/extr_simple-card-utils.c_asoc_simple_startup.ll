; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32, i32 }
%struct.asoc_simple_priv = type { i32 }
%struct.simple_dai_props = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asoc_simple_startup(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.asoc_simple_priv*, align 8
  %6 = alloca %struct.simple_dai_props*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  store %struct.snd_soc_pcm_runtime* %10, %struct.snd_soc_pcm_runtime** %4, align 8
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.asoc_simple_priv* @snd_soc_card_get_drvdata(i32 %13)
  store %struct.asoc_simple_priv* %14, %struct.asoc_simple_priv** %5, align 8
  %15 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %5, align 8
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %17 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.simple_dai_props* @simple_priv_to_props(%struct.asoc_simple_priv* %15, i32 %18)
  store %struct.simple_dai_props* %19, %struct.simple_dai_props** %6, align 8
  %20 = load %struct.simple_dai_props*, %struct.simple_dai_props** %6, align 8
  %21 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @asoc_simple_clk_enable(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %42

28:                                               ; preds = %1
  %29 = load %struct.simple_dai_props*, %struct.simple_dai_props** %6, align 8
  %30 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @asoc_simple_clk_enable(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.simple_dai_props*, %struct.simple_dai_props** %6, align 8
  %37 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @asoc_simple_clk_disable(i32 %38)
  br label %40

40:                                               ; preds = %35, %28
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %26
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.asoc_simple_priv* @snd_soc_card_get_drvdata(i32) #1

declare dso_local %struct.simple_dai_props* @simple_priv_to_props(%struct.asoc_simple_priv*, i32) #1

declare dso_local i32 @asoc_simple_clk_enable(i32) #1

declare dso_local i32 @asoc_simple_clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
