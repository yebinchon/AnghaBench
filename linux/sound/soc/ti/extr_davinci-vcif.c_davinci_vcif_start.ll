; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-vcif.c_davinci_vcif_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-vcif.c_davinci_vcif_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.davinci_vcif_dev = type { %struct.davinci_vc* }
%struct.davinci_vc = type { i64 }

@DAVINCI_VC_CTRL = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@DAVINCI_VC_CTRL_RSTDAC = common dso_local global i32 0, align 4
@DAVINCI_VC_CTRL_RSTADC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*)* @davinci_vcif_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @davinci_vcif_start(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.davinci_vcif_dev*, align 8
  %5 = alloca %struct.davinci_vc*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 1
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  store %struct.snd_soc_pcm_runtime* %9, %struct.snd_soc_pcm_runtime** %3, align 8
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.davinci_vcif_dev* @snd_soc_dai_get_drvdata(i32 %12)
  store %struct.davinci_vcif_dev* %13, %struct.davinci_vcif_dev** %4, align 8
  %14 = load %struct.davinci_vcif_dev*, %struct.davinci_vcif_dev** %4, align 8
  %15 = getelementptr inbounds %struct.davinci_vcif_dev, %struct.davinci_vcif_dev* %14, i32 0, i32 0
  %16 = load %struct.davinci_vc*, %struct.davinci_vc** %15, align 8
  store %struct.davinci_vc* %16, %struct.davinci_vc** %5, align 8
  %17 = load %struct.davinci_vc*, %struct.davinci_vc** %5, align 8
  %18 = getelementptr inbounds %struct.davinci_vc, %struct.davinci_vc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DAVINCI_VC_CTRL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @DAVINCI_VC_CTRL_RSTDAC, align 4
  %31 = call i32 @MOD_REG_BIT(i32 %29, i32 %30, i32 0)
  br label %36

32:                                               ; preds = %1
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @DAVINCI_VC_CTRL_RSTADC, align 4
  %35 = call i32 @MOD_REG_BIT(i32 %33, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.davinci_vc*, %struct.davinci_vc** %5, align 8
  %39 = getelementptr inbounds %struct.davinci_vc, %struct.davinci_vc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DAVINCI_VC_CTRL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  ret void
}

declare dso_local %struct.davinci_vcif_dev* @snd_soc_dai_get_drvdata(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @MOD_REG_BIT(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
