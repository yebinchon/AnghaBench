; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_memory.c_synth_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_memory.c_synth_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32*, i32*, i32 }
%struct.snd_emu10k1_memblk = type { i32 }
%struct.snd_dma_buffer = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*, %struct.snd_emu10k1_memblk*)* @synth_alloc_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synth_alloc_pages(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_memblk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_emu10k1_memblk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_dma_buffer, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store %struct.snd_emu10k1_memblk* %1, %struct.snd_emu10k1_memblk** %5, align 8
  %10 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %5, align 8
  %11 = call i32 @emu10k1_memblk_init(%struct.snd_emu10k1_memblk* %10)
  %12 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %13 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %5, align 8
  %16 = call i32 @get_single_page_range(i32 %14, %struct.snd_emu10k1_memblk* %15, i32* %7, i32* %8)
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %53, %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %18
  %23 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = call i64 @snd_emu10k1_alloc_pages_maybe_wider(%struct.snd_emu10k1* %23, i32 %24, %struct.snd_dma_buffer* %9)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %57

28:                                               ; preds = %22
  %29 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %30 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %9, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @is_valid_page(%struct.snd_emu10k1* %29, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = call i32 @snd_dma_free_pages(%struct.snd_dma_buffer* %9)
  br label %57

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %9, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %40 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  %45 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %9, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %48 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  br label %53

53:                                               ; preds = %36
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %18

56:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %66

57:                                               ; preds = %34, %27
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  %60 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @__synth_free_pages(%struct.snd_emu10k1* %60, i32 %61, i32 %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %57, %56
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @emu10k1_memblk_init(%struct.snd_emu10k1_memblk*) #1

declare dso_local i32 @get_single_page_range(i32, %struct.snd_emu10k1_memblk*, i32*, i32*) #1

declare dso_local i64 @snd_emu10k1_alloc_pages_maybe_wider(%struct.snd_emu10k1*, i32, %struct.snd_dma_buffer*) #1

declare dso_local i32 @is_valid_page(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @snd_dma_free_pages(%struct.snd_dma_buffer*) #1

declare dso_local i32 @__synth_free_pages(%struct.snd_emu10k1*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
