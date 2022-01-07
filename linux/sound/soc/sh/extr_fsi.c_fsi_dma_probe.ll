; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_dma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_dma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }
%struct.fsi_stream = type { i32*, i64 }
%struct.device = type { i32 }
%struct.dma_slave_config = type { i32, i8*, i64, i8*, i64 }

@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@REG_DODT = common dso_local global i64 0, align 8
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i8* null, align 8
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@REG_DIDT = common dso_local global i64 0, align 8
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@fsi_pio_push_handler = common dso_local global i32 0, align 4
@fsi_pio_pop_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"switch handler (dma => pio)\0A\00", align 1
@DMA_SLAVE = common dso_local global i32 0, align 4
@shdma_chan_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_priv*, %struct.fsi_stream*, %struct.device*)* @fsi_dma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_dma_probe(%struct.fsi_priv* %0, %struct.fsi_stream* %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsi_priv*, align 8
  %6 = alloca %struct.fsi_stream*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_slave_config, align 8
  %10 = alloca i32, align 4
  store %struct.fsi_priv* %0, %struct.fsi_priv** %5, align 8
  store %struct.fsi_stream* %1, %struct.fsi_stream** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  %11 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %12 = load %struct.fsi_stream*, %struct.fsi_stream** %6, align 8
  %13 = call i32 @fsi_stream_is_play(%struct.fsi_priv* %11, %struct.fsi_stream* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %19 = call i32* @dma_request_slave_channel(%struct.device* %14, i8* %18)
  %20 = load %struct.fsi_stream*, %struct.fsi_stream** %6, align 8
  %21 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.fsi_stream*, %struct.fsi_stream** %6, align 8
  %23 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %67

26:                                               ; preds = %3
  %27 = bitcast %struct.dma_slave_config* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 40, i1 false)
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %32 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @REG_DODT, align 8
  %35 = add nsw i64 %33, %34
  %36 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %9, i32 0, i32 4
  store i64 %35, i64* %36, align 8
  %37 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %38 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %9, i32 0, i32 3
  store i8* %37, i8** %38, align 8
  %39 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %40 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %9, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  br label %52

41:                                               ; preds = %26
  %42 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %43 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @REG_DIDT, align 8
  %46 = add nsw i64 %44, %45
  %47 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %9, i32 0, i32 2
  store i64 %46, i64* %47, align 8
  %48 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %49 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %9, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %51 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %9, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  br label %52

52:                                               ; preds = %41, %30
  %53 = load %struct.fsi_stream*, %struct.fsi_stream** %6, align 8
  %54 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @dmaengine_slave_config(i32* %55, %struct.dma_slave_config* %9)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.fsi_stream*, %struct.fsi_stream** %6, align 8
  %61 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @dma_release_channel(i32* %62)
  %64 = load %struct.fsi_stream*, %struct.fsi_stream** %6, align 8
  %65 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %59, %52
  br label %67

67:                                               ; preds = %66, %3
  %68 = load %struct.fsi_stream*, %struct.fsi_stream** %6, align 8
  %69 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %89, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %77 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32* @fsi_pio_push_handler, i32** %78, align 8
  br label %83

79:                                               ; preds = %72
  %80 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %81 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32* @fsi_pio_pop_handler, i32** %82, align 8
  br label %83

83:                                               ; preds = %79, %75
  %84 = load %struct.device*, %struct.device** %7, align 8
  %85 = call i32 @dev_info(%struct.device* %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %86 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %87 = load %struct.device*, %struct.device** %7, align 8
  %88 = call i32 @fsi_stream_probe(%struct.fsi_priv* %86, %struct.device* %87)
  store i32 %88, i32* %4, align 4
  br label %90

89:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %83
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @fsi_stream_is_play(%struct.fsi_priv*, %struct.fsi_stream*) #1

declare dso_local i32* @dma_request_slave_channel(%struct.device*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dmaengine_slave_config(i32*, %struct.dma_slave_config*) #1

declare dso_local i32 @dma_release_channel(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @fsi_stream_probe(%struct.fsi_priv*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
