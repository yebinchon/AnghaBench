; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c24xx-i2s.c_s3c24xx_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_s3c24xx-i2s.c_s3c24xx_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32 }

@s3c24xx_i2s = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@S3C2410_IISMOD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"hw_params r: IISMOD: %x\0A\00", align 1
@S3C2410_IISMOD_16BIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"hw_params w: IISMOD: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @s3c24xx_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %12 = call %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai* %10, %struct.snd_pcm_substream* %11)
  store %struct.snd_dmaengine_dai_dma_data* %12, %struct.snd_dmaengine_dai_dma_data** %8, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_i2s, i32 0, i32 0), align 8
  %14 = load i64, i64* @S3C2410_IISMOD, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %20 = call i32 @params_width(%struct.snd_pcm_hw_params* %19)
  switch i32 %20, label %34 [
    i32 8, label %21
    i32 16, label %28
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* @S3C2410_IISMOD_16BIT, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %8, align 8
  %27 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  br label %37

28:                                               ; preds = %3
  %29 = load i32, i32* @S3C2410_IISMOD_16BIT, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %8, align 8
  %33 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data* %32, i32 0, i32 0
  store i32 2, i32* %33, align 4
  br label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %45

37:                                               ; preds = %28, %21
  %38 = load i32, i32* %9, align 4
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_i2s, i32 0, i32 0), align 8
  %40 = load i64, i64* @S3C2410_IISMOD, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %38, i64 %41)
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %37, %34
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
