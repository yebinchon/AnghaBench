; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pdmic.c_atmel_pdmic_platform_configure_dma.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pdmic.c_atmel_pdmic_platform_configure_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.dma_slave_config = type { i32, i32, i64 }
%struct.atmel_pdmic = type { i64, i32 }

@.str = private unnamed_addr constant [41 x i8] c"hw params to dma slave configure failed\0A\00", align 1
@PDMIC_CDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.dma_slave_config*)* @atmel_pdmic_platform_configure_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pdmic_platform_configure_dma(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.dma_slave_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.dma_slave_config*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.atmel_pdmic*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.dma_slave_config* %2, %struct.dma_slave_config** %7, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %8, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.atmel_pdmic* @snd_soc_card_get_drvdata(i32 %16)
  store %struct.atmel_pdmic* %17, %struct.atmel_pdmic** %9, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %20 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %21 = call i32 @snd_hwparams_to_dma_slave_config(%struct.snd_pcm_substream* %18, %struct.snd_pcm_hw_params* %19, %struct.dma_slave_config* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.atmel_pdmic*, %struct.atmel_pdmic** %9, align 8
  %26 = getelementptr inbounds %struct.atmel_pdmic, %struct.atmel_pdmic* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %42

30:                                               ; preds = %3
  %31 = load %struct.atmel_pdmic*, %struct.atmel_pdmic** %9, align 8
  %32 = getelementptr inbounds %struct.atmel_pdmic, %struct.atmel_pdmic* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PDMIC_CDR, align 8
  %35 = add nsw i64 %33, %34
  %36 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %37 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %39 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %41 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %30, %24
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.atmel_pdmic* @snd_soc_card_get_drvdata(i32) #1

declare dso_local i32 @snd_hwparams_to_dma_slave_config(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.dma_slave_config*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
