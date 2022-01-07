; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-mcdt.c_sprd_mcdt_chan_dma_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-mcdt.c_sprd_mcdt_chan_dma_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_mcdt_chan = type { i32, i32, i32, i64, %struct.sprd_mcdt_dev* }
%struct.sprd_mcdt_dev = type { i32, i32 }

@SPRD_MCDT_DMA_CH4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to set DMA mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MCDT_FIFO_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unsupported channel type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sprd_mcdt_chan_dma_enable(%struct.sprd_mcdt_chan* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sprd_mcdt_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sprd_mcdt_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sprd_mcdt_chan* %0, %struct.sprd_mcdt_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %12 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %11, i32 0, i32 4
  %13 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %12, align 8
  store %struct.sprd_mcdt_dev* %13, %struct.sprd_mcdt_dev** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %15 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %19 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %3
  %23 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %24 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @SPRD_MCDT_DMA_CH4, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27, %22, %3
  %32 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %33 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %37 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %127

42:                                               ; preds = %27
  %43 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %44 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %108 [
    i32 129, label %46
    i32 128, label %77
  ]

46:                                               ; preds = %42
  %47 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %48 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %49 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @sprd_mcdt_adc_fifo_clear(%struct.sprd_mcdt_dev* %47, i32 %50)
  %52 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %53 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %54 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @MCDT_FIFO_LENGTH, align 4
  %58 = sub nsw i32 %57, 1
  %59 = call i32 @sprd_mcdt_adc_set_watermark(%struct.sprd_mcdt_dev* %52, i32 %55, i32 %56, i32 %58)
  %60 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %61 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %62 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @sprd_mcdt_adc_dma_enable(%struct.sprd_mcdt_dev* %60, i32 %63, i32 1)
  %65 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %66 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %67 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @sprd_mcdt_adc_dma_chn_select(%struct.sprd_mcdt_dev* %65, i32 %68, i32 %69)
  %71 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %72 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %73 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @sprd_mcdt_adc_dma_ack_select(%struct.sprd_mcdt_dev* %71, i32 %74, i32 %75)
  br label %115

77:                                               ; preds = %42
  %78 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %79 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %80 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @sprd_mcdt_dac_fifo_clear(%struct.sprd_mcdt_dev* %78, i32 %81)
  %83 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %84 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %85 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @MCDT_FIFO_LENGTH, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @sprd_mcdt_dac_set_watermark(%struct.sprd_mcdt_dev* %83, i32 %86, i32 %88, i32 %89)
  %91 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %92 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %93 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @sprd_mcdt_dac_dma_enable(%struct.sprd_mcdt_dev* %91, i32 %94, i32 1)
  %96 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %97 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %98 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @sprd_mcdt_dac_dma_chn_select(%struct.sprd_mcdt_dev* %96, i32 %99, i32 %100)
  %102 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %103 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %104 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @sprd_mcdt_dac_dma_ack_select(%struct.sprd_mcdt_dev* %102, i32 %105, i32 %106)
  br label %115

108:                                              ; preds = %42
  %109 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %110 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @dev_err(i32 %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %108, %77, %46
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %5, align 8
  %120 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %8, align 8
  %123 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %122, i32 0, i32 0
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* %123, i64 %124)
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %121, %31
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sprd_mcdt_adc_fifo_clear(%struct.sprd_mcdt_dev*, i32) #1

declare dso_local i32 @sprd_mcdt_adc_set_watermark(%struct.sprd_mcdt_dev*, i32, i32, i32) #1

declare dso_local i32 @sprd_mcdt_adc_dma_enable(%struct.sprd_mcdt_dev*, i32, i32) #1

declare dso_local i32 @sprd_mcdt_adc_dma_chn_select(%struct.sprd_mcdt_dev*, i32, i32) #1

declare dso_local i32 @sprd_mcdt_adc_dma_ack_select(%struct.sprd_mcdt_dev*, i32, i32) #1

declare dso_local i32 @sprd_mcdt_dac_fifo_clear(%struct.sprd_mcdt_dev*, i32) #1

declare dso_local i32 @sprd_mcdt_dac_set_watermark(%struct.sprd_mcdt_dev*, i32, i32, i32) #1

declare dso_local i32 @sprd_mcdt_dac_dma_enable(%struct.sprd_mcdt_dev*, i32, i32) #1

declare dso_local i32 @sprd_mcdt_dac_dma_chn_select(%struct.sprd_mcdt_dev*, i32, i32) #1

declare dso_local i32 @sprd_mcdt_dac_dma_ack_select(%struct.sprd_mcdt_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
