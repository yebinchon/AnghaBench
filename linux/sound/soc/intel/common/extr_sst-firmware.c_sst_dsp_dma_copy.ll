; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_dsp_dma_copy.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-firmware.c_sst_dsp_dma_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32, %struct.sst_dma* }
%struct.sst_dma = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dma_async_tx_descriptor* (%struct.TYPE_4__*, i64, i64, i64, i32)* }
%struct.dma_async_tx_descriptor = type { i32 (%struct.dma_async_tx_descriptor*)*, %struct.sst_dsp*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"error: no DMA channel\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"DMA: src: 0x%lx dest 0x%lx size %zu\0A\00", align 1
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"error: dma prep memcpy failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@sst_dma_transfer_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*, i64, i64, i64)* @sst_dsp_dma_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_dsp_dma_copy(%struct.sst_dsp* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sst_dsp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dma_async_tx_descriptor*, align 8
  %11 = alloca %struct.sst_dma*, align 8
  store %struct.sst_dsp* %0, %struct.sst_dsp** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %13 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %12, i32 0, i32 1
  %14 = load %struct.sst_dma*, %struct.sst_dma** %13, align 8
  store %struct.sst_dma* %14, %struct.sst_dma** %11, align 8
  %15 = load %struct.sst_dma*, %struct.sst_dma** %11, align 8
  %16 = getelementptr inbounds %struct.sst_dma, %struct.sst_dma* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp eq %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %21 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %72

26:                                               ; preds = %4
  %27 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %28 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %30, i64 %31, i64 %32)
  %34 = load %struct.sst_dma*, %struct.sst_dma** %11, align 8
  %35 = getelementptr inbounds %struct.sst_dma, %struct.sst_dma* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.dma_async_tx_descriptor* (%struct.TYPE_4__*, i64, i64, i64, i32)*, %struct.dma_async_tx_descriptor* (%struct.TYPE_4__*, i64, i64, i64, i32)** %39, align 8
  %41 = load %struct.sst_dma*, %struct.sst_dma** %11, align 8
  %42 = getelementptr inbounds %struct.sst_dma, %struct.sst_dma* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* @DMA_CTRL_ACK, align 4
  %48 = call %struct.dma_async_tx_descriptor* %40(%struct.TYPE_4__* %43, i64 %44, i64 %45, i64 %46, i32 %47)
  store %struct.dma_async_tx_descriptor* %48, %struct.dma_async_tx_descriptor** %10, align 8
  %49 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %50 = icmp ne %struct.dma_async_tx_descriptor* %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %26
  %52 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %53 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %72

58:                                               ; preds = %26
  %59 = load i32, i32* @sst_dma_transfer_complete, align 4
  %60 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %61 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %63 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %64 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %63, i32 0, i32 1
  store %struct.sst_dsp* %62, %struct.sst_dsp** %64, align 8
  %65 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %66 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %65, i32 0, i32 0
  %67 = load i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)** %66, align 8
  %68 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %69 = call i32 %67(%struct.dma_async_tx_descriptor* %68)
  %70 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %71 = call i32 @dma_wait_for_async_tx(%struct.dma_async_tx_descriptor* %70)
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %58, %51, %19
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64) #1

declare dso_local i32 @dma_wait_for_async_tx(%struct.dma_async_tx_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
