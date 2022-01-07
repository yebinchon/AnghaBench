; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_memory.c_snd_pcm_lib_malloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_memory.c_snd_pcm_lib_malloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_dma_buffer, %struct.snd_pcm_runtime* }
%struct.snd_dma_buffer = type { i64, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.snd_pcm_runtime = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_UNKNOWN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_dma_buffer*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.snd_dma_buffer* null, %struct.snd_dma_buffer** %7, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = call i64 @PCM_RUNTIME_CHECK(%struct.snd_pcm_substream* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %110

14:                                               ; preds = %2
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SNDRV_DMA_TYPE_UNKNOWN, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @snd_BUG_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %110

28:                                               ; preds = %14
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %29, i32 0, i32 1
  %31 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %30, align 8
  store %struct.snd_pcm_runtime* %31, %struct.snd_pcm_runtime** %6, align 8
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %28
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  store i32 0, i32* %3, align 4
  br label %110

48:                                               ; preds = %36
  %49 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %50 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %49)
  br label %51

51:                                               ; preds = %48, %28
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = icmp uge i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %65, i32 0, i32 0
  store %struct.snd_dma_buffer* %66, %struct.snd_dma_buffer** %7, align 8
  br label %103

67:                                               ; preds = %57, %51
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.snd_dma_buffer* @kzalloc(i32 32, i32 %68)
  store %struct.snd_dma_buffer* %69, %struct.snd_dma_buffer** %7, align 8
  %70 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %71 = icmp ne %struct.snd_dma_buffer* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %110

75:                                               ; preds = %67
  %76 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %77 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %76, i32 0, i32 1
  %78 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %79, i32 0, i32 1
  %81 = bitcast %struct.TYPE_4__* %77 to i8*
  %82 = bitcast %struct.TYPE_4__* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 16, i1 false)
  %83 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %89 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i64, i64* %5, align 8
  %94 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %95 = call i64 @snd_dma_alloc_pages(i64 %87, i32 %92, i64 %93, %struct.snd_dma_buffer* %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %75
  %98 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %99 = call i32 @kfree(%struct.snd_dma_buffer* %98)
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %110

102:                                              ; preds = %75
  br label %103

103:                                              ; preds = %102, %64
  %104 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %105 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %106 = call i32 @snd_pcm_set_runtime_buffer(%struct.snd_pcm_substream* %104, %struct.snd_dma_buffer* %105)
  %107 = load i64, i64* %5, align 8
  %108 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %109 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  store i32 1, i32* %3, align 4
  br label %110

110:                                              ; preds = %103, %97, %72, %44, %25, %11
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i64 @PCM_RUNTIME_CHECK(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_dma_buffer* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @snd_dma_alloc_pages(i64, i32, i64, %struct.snd_dma_buffer*) #1

declare dso_local i32 @kfree(%struct.snd_dma_buffer*) #1

declare dso_local i32 @snd_pcm_set_runtime_buffer(%struct.snd_pcm_substream*, %struct.snd_dma_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
