; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_memory.c_preallocate_pcm_pages.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_memory.c_preallocate_pcm_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_6__*, i32, i64, %struct.snd_dma_buffer }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.snd_dma_buffer = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@snd_minimum_buffer = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"ALSA pcmC%dD%d%c,%d:%s: cannot preallocate for size %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i64)* @preallocate_pcm_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preallocate_pcm_pages(%struct.snd_pcm_substream* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_dma_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 3
  store %struct.snd_dma_buffer* %10, %struct.snd_dma_buffer** %6, align 8
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %7, align 8
  br label %12

12:                                               ; preds = %37, %2
  %13 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %14 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %23 = call i32 @snd_dma_alloc_pages(i32 %16, i32 %20, i64 %21, %struct.snd_dma_buffer* %22)
  store i32 %23, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %12
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %73

32:                                               ; preds = %25
  br label %34

33:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %73

34:                                               ; preds = %32
  %35 = load i64, i64* %5, align 8
  %36 = lshr i64 %35, 1
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @snd_minimum_buffer, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %12, label %41

41:                                               ; preds = %37
  %42 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %43 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 99, i32 112
  %62 = trunc i32 %61 to i8
  %63 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @pr_warn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %55, i8 signext %62, i32 %65, i32 %70, i64 %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %41, %33, %30
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @snd_dma_alloc_pages(i32, i32, i64, %struct.snd_dma_buffer*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i8 signext, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
