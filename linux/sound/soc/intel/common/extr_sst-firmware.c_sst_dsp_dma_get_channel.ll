; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_dsp_dma_get_channel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_dsp_dma_get_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32, %struct.sst_dma* }
%struct.sst_dma = type { i32* }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32 }

@DMA_SLAVE = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i32 0, align 4
@dma_chan_filter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"error: DMA request channel failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@SST_DSP_DMA_MAX_BURST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"error: unable to set DMA slave config %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_dsp_dma_get_channel(%struct.sst_dsp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_dsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sst_dma*, align 8
  %7 = alloca %struct.dma_slave_config, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %11 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %10, i32 0, i32 1
  %12 = load %struct.sst_dma*, %struct.sst_dma** %11, align 8
  store %struct.sst_dma* %12, %struct.sst_dma** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @dma_cap_zero(i32 %13)
  %15 = load i32, i32* @DMA_SLAVE, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @dma_cap_set(i32 %15, i32 %16)
  %18 = load i32, i32* @DMA_MEMCPY, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @dma_cap_set(i32 %18, i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @dma_chan_filter, align 4
  %23 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %24 = call i32* @dma_request_channel(i32 %21, i32 %22, %struct.sst_dsp* %23)
  %25 = load %struct.sst_dma*, %struct.sst_dma** %6, align 8
  %26 = getelementptr inbounds %struct.sst_dma, %struct.sst_dma* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load %struct.sst_dma*, %struct.sst_dma** %6, align 8
  %28 = getelementptr inbounds %struct.sst_dma, %struct.sst_dma* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %33 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %68

38:                                               ; preds = %2
  %39 = call i32 @memset(%struct.dma_slave_config* %7, i32 0, i32 20)
  %40 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %41 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 4
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %43 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @SST_DSP_DMA_MAX_BURST, align 4
  %46 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.sst_dma*, %struct.sst_dma** %6, align 8
  %49 = getelementptr inbounds %struct.sst_dma, %struct.sst_dma* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @dmaengine_slave_config(i32* %50, %struct.dma_slave_config* %7)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %38
  %55 = load %struct.sst_dsp*, %struct.sst_dsp** %4, align 8
  %56 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 (i32, i8*, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.sst_dma*, %struct.sst_dma** %6, align 8
  %61 = getelementptr inbounds %struct.sst_dma, %struct.sst_dma* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @dma_release_channel(i32* %62)
  %64 = load %struct.sst_dma*, %struct.sst_dma** %6, align 8
  %65 = getelementptr inbounds %struct.sst_dma, %struct.sst_dma* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %54, %38
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %31
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32* @dma_request_channel(i32, i32, %struct.sst_dsp*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.dma_slave_config*, i32, i32) #1

declare dso_local i32 @dmaengine_slave_config(i32*, %struct.dma_slave_config*) #1

declare dso_local i32 @dma_release_channel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
