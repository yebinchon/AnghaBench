; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_pcm.c_emu8k_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_pcm.c_emu8k_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_6__ = type { %struct.snd_emu8k_pcm* }
%struct.snd_emu8k_pcm = type { %struct.TYPE_9__*, i64, i8*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@LOOP_BLANK_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EMU8000_DRAM_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @emu8k_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu8k_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_emu8k_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %10, align 8
  store %struct.snd_emu8k_pcm* %11, %struct.snd_emu8k_pcm** %6, align 8
  %12 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %6, align 8
  %13 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = icmp ne %struct.TYPE_9__* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %6, align 8
  %18 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %17, i32 0, i32 3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %6, align 8
  %23 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = call i32 @snd_util_mem_free(i32 %21, %struct.TYPE_9__* %24)
  %26 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %6, align 8
  %27 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %26, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %27, align 8
  br label %28

28:                                               ; preds = %16, %2
  %29 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %30 = call i8* @params_buffer_bytes(%struct.snd_pcm_hw_params* %29)
  %31 = load i32, i32* @LOOP_BLANK_SIZE, align 4
  %32 = mul nsw i32 %31, 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr i8, i8* %30, i64 %33
  %35 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %6, align 8
  %36 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %6, align 8
  %38 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %37, i32 0, i32 3
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %6, align 8
  %43 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call %struct.TYPE_9__* @snd_util_mem_alloc(i32 %41, i8* %44)
  %46 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %6, align 8
  %47 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %46, i32 0, i32 0
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %47, align 8
  %48 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %6, align 8
  %49 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = icmp ne %struct.TYPE_9__* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %28
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %72

55:                                               ; preds = %28
  %56 = load i64, i64* @EMU8000_DRAM_OFFSET, align 8
  %57 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %6, align 8
  %58 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %56, %63
  %65 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %6, align 8
  %66 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %68 = call i8* @params_buffer_bytes(%struct.snd_pcm_hw_params* %67)
  %69 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %55, %52
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @snd_util_mem_free(i32, %struct.TYPE_9__*) #1

declare dso_local i8* @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local %struct.TYPE_9__* @snd_util_mem_alloc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
