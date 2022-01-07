; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_mmp-pcm.c_mmp_pcm_free_dma_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_mmp-pcm.c_mmp_pcm_free_dma_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.snd_pcm = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_dma_buffer }
%struct.snd_dma_buffer = type { i32* }
%struct.gen_pool = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"asram\00", align 1
@mmp_pcm_hardware = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm*)* @mmp_pcm_free_dma_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmp_pcm_free_dma_buffers(%struct.snd_pcm* %0) #0 {
  %2 = alloca %struct.snd_pcm*, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_dma_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gen_pool*, align 8
  %7 = alloca i64, align 8
  store %struct.snd_pcm* %0, %struct.snd_pcm** %2, align 8
  %8 = call %struct.gen_pool* @sram_get_gpool(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.gen_pool* %8, %struct.gen_pool** %6, align 8
  %9 = load %struct.gen_pool*, %struct.gen_pool** %6, align 8
  %10 = icmp ne %struct.gen_pool* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %55

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %52, %12
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %55

16:                                               ; preds = %13
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mmp_pcm_hardware, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %24 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %29, align 8
  store %struct.snd_pcm_substream* %30, %struct.snd_pcm_substream** %3, align 8
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %32 = icmp ne %struct.snd_pcm_substream* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %16
  br label %52

34:                                               ; preds = %16
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %35, i32 0, i32 0
  store %struct.snd_dma_buffer* %36, %struct.snd_dma_buffer** %4, align 8
  %37 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %52

42:                                               ; preds = %34
  %43 = load %struct.gen_pool*, %struct.gen_pool** %6, align 8
  %44 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %4, align 8
  %45 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = ptrtoint i32* %46 to i64
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @gen_pool_free(%struct.gen_pool* %43, i64 %47, i64 %48)
  %50 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %4, align 8
  %51 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %42, %41, %33
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %13

55:                                               ; preds = %11, %13
  ret void
}

declare dso_local %struct.gen_pool* @sram_get_gpool(i8*) #1

declare dso_local i32 @gen_pool_free(%struct.gen_pool*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
