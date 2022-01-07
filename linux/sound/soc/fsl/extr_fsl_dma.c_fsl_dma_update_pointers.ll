; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_dma.c_fsl_dma_update_pointers.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_dma.c_fsl_dma_update_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dma_private = type { i64, i32, i32, i32, i64, %struct.TYPE_2__*, %struct.fsl_dma_link_descriptor* }
%struct.TYPE_2__ = type { i64 }
%struct.fsl_dma_link_descriptor = type { i8*, i8*, i8*, i8* }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@NUM_DMA_LINKS = common dso_local global i64 0, align 8
@CCSR_DMA_ATR_SNOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_dma_private*)* @fsl_dma_update_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_dma_update_pointers(%struct.fsl_dma_private* %0) #0 {
  %2 = alloca %struct.fsl_dma_private*, align 8
  %3 = alloca %struct.fsl_dma_link_descriptor*, align 8
  store %struct.fsl_dma_private* %0, %struct.fsl_dma_private** %2, align 8
  %4 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %4, i32 0, i32 6
  %6 = load %struct.fsl_dma_link_descriptor*, %struct.fsl_dma_link_descriptor** %5, align 8
  %7 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %8 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.fsl_dma_link_descriptor, %struct.fsl_dma_link_descriptor* %6, i64 %9
  store %struct.fsl_dma_link_descriptor* %10, %struct.fsl_dma_link_descriptor** %3, align 8
  %11 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %12 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %11, i32 0, i32 5
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %20 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = load %struct.fsl_dma_link_descriptor*, %struct.fsl_dma_link_descriptor** %3, align 8
  %24 = getelementptr inbounds %struct.fsl_dma_link_descriptor, %struct.fsl_dma_link_descriptor* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  br label %32

25:                                               ; preds = %1
  %26 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %27 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @cpu_to_be32(i32 %28)
  %30 = load %struct.fsl_dma_link_descriptor*, %struct.fsl_dma_link_descriptor** %3, align 8
  %31 = getelementptr inbounds %struct.fsl_dma_link_descriptor, %struct.fsl_dma_link_descriptor* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %25, %18
  %33 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %34 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %37 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 8
  %42 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %43 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %46 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %32
  %50 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %51 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %54 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %49, %32
  %56 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %57 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load i64, i64* @NUM_DMA_LINKS, align 8
  %61 = icmp uge i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load %struct.fsl_dma_private*, %struct.fsl_dma_private** %2, align 8
  %64 = getelementptr inbounds %struct.fsl_dma_private, %struct.fsl_dma_private* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %55
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
