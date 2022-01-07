; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_memory.c___synth_free_pages.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_memory.c___synth_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32**, i64*, i64, i32 }
%struct.snd_dma_buffer = type { i32, i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*, i32, i32)* @__synth_free_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__synth_free_pages(%struct.snd_emu10k1* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_dma_buffer, align 8
  %8 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %10 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %7, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %13 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @snd_dma_pci_data(i32 %14)
  %16 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %7, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %74, %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %77

23:                                               ; preds = %19
  %24 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %25 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %74

33:                                               ; preds = %23
  %34 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %35 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %7, i32 0, i32 2
  store i32* %40, i32** %41, align 8
  %42 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %43 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %7, i32 0, i32 1
  store i64 %48, i64* %49, align 8
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %7, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %53 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %33
  %57 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %7, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %58, 2
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %56, %33
  %61 = call i32 @snd_dma_free_pages(%struct.snd_dma_buffer* %7)
  %62 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %63 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 0, i64* %67, align 8
  %68 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %69 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %68, i32 0, i32 0
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %60, %32
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %19

77:                                               ; preds = %19
  ret void
}

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @snd_dma_free_pages(%struct.snd_dma_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
