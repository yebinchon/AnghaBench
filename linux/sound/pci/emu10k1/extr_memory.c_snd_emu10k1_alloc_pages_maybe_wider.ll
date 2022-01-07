; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_memory.c_snd_emu10k1_alloc_pages_maybe_wider.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_memory.c_snd_emu10k1_alloc_pages_maybe_wider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, i64 }
%struct.snd_dma_buffer = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_alloc_pages_maybe_wider(%struct.snd_emu10k1* %0, i64 %1, %struct.snd_dma_buffer* %2) #0 {
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_dma_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.snd_dma_buffer* %2, %struct.snd_dma_buffer** %6, align 8
  %9 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %10 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @PAGE_SIZE, align 8
  %16 = add i64 %14, %15
  %17 = sub i64 %16, 1
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = udiv i64 %17, %18
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = mul i64 %20, %21
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, 1024
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %13
  %28 = load i64, i64* @PAGE_SIZE, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %27, %13
  br label %32

32:                                               ; preds = %31, %3
  %33 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %34 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %35 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @snd_dma_pci_data(i32 %36)
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %40 = call i32 @snd_dma_alloc_pages(i32 %33, i32 %37, i64 %38, %struct.snd_dma_buffer* %39)
  ret i32 %40
}

declare dso_local i32 @snd_dma_alloc_pages(i32, i32, i64, %struct.snd_dma_buffer*) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
