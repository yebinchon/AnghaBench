; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_dai_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_dai_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32, i32, i32, i32 }
%struct.asoc_simple_priv = type { i32 }
%struct.simple_dai_props = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asoc_simple_dai_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.asoc_simple_priv*, align 8
  %5 = alloca %struct.simple_dai_props*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %7 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.asoc_simple_priv* @snd_soc_card_get_drvdata(i32 %9)
  store %struct.asoc_simple_priv* %10, %struct.asoc_simple_priv** %4, align 8
  %11 = load %struct.asoc_simple_priv*, %struct.asoc_simple_priv** %4, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.simple_dai_props* @simple_priv_to_props(%struct.asoc_simple_priv* %11, i32 %14)
  store %struct.simple_dai_props* %15, %struct.simple_dai_props** %5, align 8
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.simple_dai_props*, %struct.simple_dai_props** %5, align 8
  %20 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @asoc_simple_init_dai(i32 %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %40

27:                                               ; preds = %1
  %28 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %29 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.simple_dai_props*, %struct.simple_dai_props** %5, align 8
  %32 = getelementptr inbounds %struct.simple_dai_props, %struct.simple_dai_props* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @asoc_simple_init_dai(i32 %30, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %37, %25
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.asoc_simple_priv* @snd_soc_card_get_drvdata(i32) #1

declare dso_local %struct.simple_dai_props* @simple_priv_to_props(%struct.asoc_simple_priv*, i32) #1

declare dso_local i32 @asoc_simple_init_dai(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
