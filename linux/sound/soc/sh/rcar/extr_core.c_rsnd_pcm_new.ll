; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.rsnd_dai = type { i32, i32 }

@pcm_new = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*, %struct.snd_soc_dai*)* @rsnd_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_pcm_new(%struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.rsnd_dai*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %9 = call %struct.rsnd_dai* @rsnd_dai_to_rdai(%struct.snd_soc_dai* %8)
  store %struct.rsnd_dai* %9, %struct.rsnd_dai** %6, align 8
  %10 = load i32, i32* @pcm_new, align 4
  %11 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %12 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %14 = call i32 @rsnd_dai_call(i32 %10, i32* %12, %struct.snd_soc_pcm_runtime* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %50

19:                                               ; preds = %2
  %20 = load i32, i32* @pcm_new, align 4
  %21 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %22 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %21, i32 0, i32 0
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %24 = call i32 @rsnd_dai_call(i32 %20, i32* %22, %struct.snd_soc_pcm_runtime* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %50

29:                                               ; preds = %19
  %30 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %31 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %32 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %31, i32 0, i32 1
  %33 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %34 = call i32 @rsnd_preallocate_pages(%struct.snd_soc_pcm_runtime* %30, i32* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %50

39:                                               ; preds = %29
  %40 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %41 = load %struct.rsnd_dai*, %struct.rsnd_dai** %6, align 8
  %42 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %41, i32 0, i32 0
  %43 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %44 = call i32 @rsnd_preallocate_pages(%struct.snd_soc_pcm_runtime* %40, i32* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %47, %37, %27, %17
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.rsnd_dai* @rsnd_dai_to_rdai(%struct.snd_soc_dai*) #1

declare dso_local i32 @rsnd_dai_call(i32, i32*, %struct.snd_soc_pcm_runtime*) #1

declare dso_local i32 @rsnd_preallocate_pages(%struct.snd_soc_pcm_runtime*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
