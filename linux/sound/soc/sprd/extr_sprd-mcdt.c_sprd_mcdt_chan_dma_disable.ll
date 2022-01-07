; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-mcdt.c_sprd_mcdt_chan_dma_disable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-mcdt.c_sprd_mcdt_chan_dma_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_mcdt_chan = type { i32, i32, i32, %struct.sprd_mcdt_dev* }
%struct.sprd_mcdt_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sprd_mcdt_chan_dma_disable(%struct.sprd_mcdt_chan* %0) #0 {
  %2 = alloca %struct.sprd_mcdt_chan*, align 8
  %3 = alloca %struct.sprd_mcdt_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.sprd_mcdt_chan* %0, %struct.sprd_mcdt_chan** %2, align 8
  %5 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %2, align 8
  %6 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %5, i32 0, i32 3
  %7 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %6, align 8
  store %struct.sprd_mcdt_dev* %7, %struct.sprd_mcdt_dev** %3, align 8
  %8 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %3, align 8
  %9 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %2, align 8
  %13 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %3, align 8
  %18 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  br label %55

21:                                               ; preds = %1
  %22 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %2, align 8
  %23 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %47 [
    i32 129, label %25
    i32 128, label %36
  ]

25:                                               ; preds = %21
  %26 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %3, align 8
  %27 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %2, align 8
  %28 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @sprd_mcdt_adc_dma_enable(%struct.sprd_mcdt_dev* %26, i32 %29, i32 0)
  %31 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %3, align 8
  %32 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %2, align 8
  %33 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @sprd_mcdt_adc_fifo_clear(%struct.sprd_mcdt_dev* %31, i32 %34)
  br label %48

36:                                               ; preds = %21
  %37 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %3, align 8
  %38 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %2, align 8
  %39 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @sprd_mcdt_dac_dma_enable(%struct.sprd_mcdt_dev* %37, i32 %40, i32 0)
  %42 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %3, align 8
  %43 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %2, align 8
  %44 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @sprd_mcdt_dac_fifo_clear(%struct.sprd_mcdt_dev* %42, i32 %45)
  br label %48

47:                                               ; preds = %21
  br label %48

48:                                               ; preds = %47, %36, %25
  %49 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %2, align 8
  %50 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %3, align 8
  %52 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %51, i32 0, i32 0
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  br label %55

55:                                               ; preds = %48, %16
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sprd_mcdt_adc_dma_enable(%struct.sprd_mcdt_dev*, i32, i32) #1

declare dso_local i32 @sprd_mcdt_adc_fifo_clear(%struct.sprd_mcdt_dev*, i32) #1

declare dso_local i32 @sprd_mcdt_dac_dma_enable(%struct.sprd_mcdt_dev*, i32, i32) #1

declare dso_local i32 @sprd_mcdt_dac_fifo_clear(%struct.sprd_mcdt_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
