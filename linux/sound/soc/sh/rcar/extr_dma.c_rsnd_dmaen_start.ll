; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dmaen_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dmaen_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_dma = type { i32, i32 }
%struct.rsnd_dmaen = type { i64, i32, i32 }
%struct.device = type { i32 }
%struct.dma_async_tx_descriptor = type { i32, i32 }
%struct.dma_slave_config = type { i32, i32, i8*, i8*, i32 }

@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s %pad -> %pad\0A\00", align 1
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"dmaengine_prep_slave_sg() fail\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@rsnd_dmaen_complete = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"dmaengine_submit() fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.rsnd_priv*)* @rsnd_dmaen_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_dmaen_start(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, %struct.rsnd_priv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca %struct.rsnd_dai_stream*, align 8
  %7 = alloca %struct.rsnd_priv*, align 8
  %8 = alloca %struct.rsnd_dma*, align 8
  %9 = alloca %struct.rsnd_dmaen*, align 8
  %10 = alloca %struct.snd_pcm_substream*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.dma_async_tx_descriptor*, align 8
  %13 = alloca %struct.dma_slave_config, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %5, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %6, align 8
  store %struct.rsnd_priv* %2, %struct.rsnd_priv** %7, align 8
  %16 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %17 = call %struct.rsnd_dma* @rsnd_mod_to_dma(%struct.rsnd_mod* %16)
  store %struct.rsnd_dma* %17, %struct.rsnd_dma** %8, align 8
  %18 = load %struct.rsnd_dma*, %struct.rsnd_dma** %8, align 8
  %19 = call %struct.rsnd_dmaen* @rsnd_dma_to_dmaen(%struct.rsnd_dma* %18)
  store %struct.rsnd_dmaen* %19, %struct.rsnd_dmaen** %9, align 8
  %20 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %21 = getelementptr inbounds %struct.rsnd_dai_stream, %struct.rsnd_dai_stream* %20, i32 0, i32 0
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %21, align 8
  store %struct.snd_pcm_substream* %22, %struct.snd_pcm_substream** %10, align 8
  %23 = load %struct.rsnd_priv*, %struct.rsnd_priv** %7, align 8
  %24 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %23)
  store %struct.device* %24, %struct.device** %11, align 8
  %25 = bitcast %struct.dma_slave_config* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 32, i1 false)
  %26 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %27 = call i32 @rsnd_io_is_play(%struct.rsnd_dai_stream* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  br label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %13, i32 0, i32 4
  store i32 %35, i32* %36, align 8
  %37 = load %struct.rsnd_dma*, %struct.rsnd_dma** %8, align 8
  %38 = getelementptr inbounds %struct.rsnd_dma, %struct.rsnd_dma* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %13, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.rsnd_dma*, %struct.rsnd_dma** %8, align 8
  %42 = getelementptr inbounds %struct.rsnd_dma, %struct.rsnd_dma* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %13, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %46 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %13, i32 0, i32 3
  store i8* %45, i8** %46, align 8
  %47 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %48 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %13, i32 0, i32 2
  store i8* %47, i8** %48, align 8
  %49 = load %struct.device*, %struct.device** %11, align 8
  %50 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %51 = call i32 @rsnd_mod_name(%struct.rsnd_mod* %50)
  %52 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %13, i32 0, i32 1
  %53 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %13, i32 0, i32 0
  %54 = call i32 @dev_dbg(%struct.device* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %51, i32* %52, i32* %53)
  %55 = load %struct.rsnd_dmaen*, %struct.rsnd_dmaen** %9, align 8
  %56 = getelementptr inbounds %struct.rsnd_dmaen, %struct.rsnd_dmaen* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dmaengine_slave_config(i32 %57, %struct.dma_slave_config* %13)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %34
  %62 = load i32, i32* %15, align 4
  store i32 %62, i32* %4, align 4
  br label %125

63:                                               ; preds = %34
  %64 = load %struct.rsnd_dmaen*, %struct.rsnd_dmaen** %9, align 8
  %65 = getelementptr inbounds %struct.rsnd_dmaen, %struct.rsnd_dmaen* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %73 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %72)
  %74 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %75 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %74)
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %63
  %79 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  br label %82

80:                                               ; preds = %63
  %81 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %85 = load i32, i32* @DMA_CTRL_ACK, align 4
  %86 = or i32 %84, %85
  %87 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_dma_cyclic(i32 %66, i32 %71, i32 %73, i32 %75, i32 %83, i32 %86)
  store %struct.dma_async_tx_descriptor* %87, %struct.dma_async_tx_descriptor** %12, align 8
  %88 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %89 = icmp ne %struct.dma_async_tx_descriptor* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %82
  %91 = load %struct.device*, %struct.device** %11, align 8
  %92 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %125

95:                                               ; preds = %82
  %96 = load i32, i32* @rsnd_dmaen_complete, align 4
  %97 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %98 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.rsnd_dma*, %struct.rsnd_dma** %8, align 8
  %100 = call i32 @rsnd_mod_get(%struct.rsnd_dma* %99)
  %101 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %102 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %104 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %103)
  %105 = load %struct.rsnd_dmaen*, %struct.rsnd_dmaen** %9, align 8
  %106 = getelementptr inbounds %struct.rsnd_dmaen, %struct.rsnd_dmaen* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %108 = call i64 @dmaengine_submit(%struct.dma_async_tx_descriptor* %107)
  %109 = load %struct.rsnd_dmaen*, %struct.rsnd_dmaen** %9, align 8
  %110 = getelementptr inbounds %struct.rsnd_dmaen, %struct.rsnd_dmaen* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.rsnd_dmaen*, %struct.rsnd_dmaen** %9, align 8
  %112 = getelementptr inbounds %struct.rsnd_dmaen, %struct.rsnd_dmaen* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %95
  %116 = load %struct.device*, %struct.device** %11, align 8
  %117 = call i32 @dev_err(%struct.device* %116, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %118 = load i32, i32* @EIO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %125

120:                                              ; preds = %95
  %121 = load %struct.rsnd_dmaen*, %struct.rsnd_dmaen** %9, align 8
  %122 = getelementptr inbounds %struct.rsnd_dmaen, %struct.rsnd_dmaen* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @dma_async_issue_pending(i32 %123)
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %120, %115, %90, %61
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.rsnd_dma* @rsnd_mod_to_dma(%struct.rsnd_mod*) #1

declare dso_local %struct.rsnd_dmaen* @rsnd_dma_to_dmaen(%struct.rsnd_dma*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @rsnd_io_is_play(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @rsnd_mod_name(%struct.rsnd_mod*) #1

declare dso_local i32 @dmaengine_slave_config(i32, %struct.dma_slave_config*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_dma_cyclic(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @rsnd_mod_get(%struct.rsnd_dma*) #1

declare dso_local i64 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
