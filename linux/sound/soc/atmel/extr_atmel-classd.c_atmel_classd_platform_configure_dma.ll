; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-classd.c_atmel_classd_platform_configure_dma.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-classd.c_atmel_classd_platform_configure_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i64, i32, i32 }
%struct.atmel_classd = type { i64, i32 }

@.str = private unnamed_addr constant [33 x i8] c"only supports 16-bit audio data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@CLASSD_THR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.dma_slave_config*)* @atmel_classd_platform_configure_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_classd_platform_configure_dma(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.dma_slave_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.dma_slave_config*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.atmel_classd*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.dma_slave_config* %2, %struct.dma_slave_config** %7, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  store %struct.snd_soc_pcm_runtime* %12, %struct.snd_soc_pcm_runtime** %8, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.atmel_classd* @snd_soc_card_get_drvdata(i32 %15)
  store %struct.atmel_classd* %16, %struct.atmel_classd** %9, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i32 @params_physical_width(%struct.snd_pcm_hw_params* %17)
  %19 = icmp ne i32 %18, 16
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.atmel_classd*, %struct.atmel_classd** %9, align 8
  %22 = getelementptr inbounds %struct.atmel_classd, %struct.atmel_classd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %56

27:                                               ; preds = %3
  %28 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %29 = call i32 @params_channels(%struct.snd_pcm_hw_params* %28)
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  %33 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %34 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  br label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %37 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %38 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %41 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %42 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.atmel_classd*, %struct.atmel_classd** %9, align 8
  %44 = getelementptr inbounds %struct.atmel_classd, %struct.atmel_classd* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CLASSD_THR, align 8
  %47 = add nsw i64 %45, %46
  %48 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %49 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  %50 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %51 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %53 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %55 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %39, %20
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.atmel_classd* @snd_soc_card_get_drvdata(i32) #1

declare dso_local i32 @params_physical_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
