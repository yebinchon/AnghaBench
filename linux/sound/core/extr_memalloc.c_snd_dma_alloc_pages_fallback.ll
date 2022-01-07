; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_memalloc.c_snd_dma_alloc_pages_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_memalloc.c_snd_dma_alloc_pages_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_dma_buffer = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dma_alloc_pages_fallback(i32 %0, %struct.device* %1, i64 %2, %struct.snd_dma_buffer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.snd_dma_buffer*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.device* %1, %struct.device** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.snd_dma_buffer* %3, %struct.snd_dma_buffer** %9, align 8
  br label %11

11:                                               ; preds = %32, %4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %9, align 8
  %16 = call i32 @snd_dma_alloc_pages(i32 %12, %struct.device* %13, i64 %14, %struct.snd_dma_buffer* %15)
  store i32 %16, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %11
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %48

25:                                               ; preds = %18
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = icmp ule i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %48

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = lshr i64 %33, 1
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* @PAGE_SIZE, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @get_order(i64 %36)
  %38 = shl i64 %35, %37
  store i64 %38, i64* %8, align 8
  br label %11

39:                                               ; preds = %11
  %40 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %9, align 8
  %41 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %48

47:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %44, %29, %23
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @snd_dma_alloc_pages(i32, %struct.device*, i64, %struct.snd_dma_buffer*) #1

declare dso_local i64 @get_order(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
