; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-pcm.c_ep93xx_pcm_dma_filter.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/cirrus/extr_ep93xx-pcm.c_ep93xx_pcm_dma_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.ep93xx_dma_data* }
%struct.ep93xx_dma_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i8*)* @ep93xx_pcm_dma_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_pcm_dma_filter(%struct.dma_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ep93xx_dma_data*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.ep93xx_dma_data*
  store %struct.ep93xx_dma_data* %8, %struct.ep93xx_dma_data** %6, align 8
  %9 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %6, align 8
  %10 = getelementptr inbounds %struct.ep93xx_dma_data, %struct.ep93xx_dma_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %13 = call i64 @ep93xx_dma_chan_direction(%struct.dma_chan* %12)
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %6, align 8
  %17 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %18 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %17, i32 0, i32 0
  store %struct.ep93xx_dma_data* %16, %struct.ep93xx_dma_data** %18, align 8
  store i32 1, i32* %3, align 4
  br label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %15
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i64 @ep93xx_dma_chan_direction(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
