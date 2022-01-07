; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_dma_ctrl_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_dma_ctrl_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spdifrx_data = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.stm32_spdifrx_data*, i32 }
%struct.TYPE_4__ = type { i32 }

@SPDIFRX_CSR_BUF_LENGTH = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@stm32_spdifrx_dma_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_spdifrx_data*)* @stm32_spdifrx_dma_ctrl_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_spdifrx_dma_ctrl_start(%struct.stm32_spdifrx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_spdifrx_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stm32_spdifrx_data* %0, %struct.stm32_spdifrx_data** %3, align 8
  %6 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %7 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %10 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SPDIFRX_CSR_BUF_LENGTH, align 4
  %15 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %16 = load i32, i32* @DMA_CTRL_ACK, align 4
  %17 = call %struct.TYPE_5__* @dmaengine_prep_slave_single(i32 %8, i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %19 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %18, i32 0, i32 1
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %19, align 8
  %20 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %21 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %54

27:                                               ; preds = %1
  %28 = load i32, i32* @stm32_spdifrx_dma_complete, align 4
  %29 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %30 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 8
  %33 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %34 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %35 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store %struct.stm32_spdifrx_data* %33, %struct.stm32_spdifrx_data** %37, align 8
  %38 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %39 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i32 @dmaengine_submit(%struct.TYPE_5__* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @dma_submit_error(i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %27
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %54

49:                                               ; preds = %27
  %50 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %51 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dma_async_issue_pending(i32 %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %49, %46, %24
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_5__* @dmaengine_prep_slave_single(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.TYPE_5__*) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
