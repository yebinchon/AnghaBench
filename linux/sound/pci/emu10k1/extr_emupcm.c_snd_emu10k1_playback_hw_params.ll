; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, %struct.snd_emu10k1_pcm* }
%struct.snd_emu10k1_pcm = type { i32, i32* }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_emu10k1 = type { i64 }
%struct.snd_emu10k1_memblk = type { i32 }

@EMUPAGESIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_emu10k1_playback_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_playback_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_emu10k1*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.snd_emu10k1_pcm*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %12)
  store %struct.snd_emu10k1* %13, %struct.snd_emu10k1** %6, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  store %struct.snd_pcm_runtime* %16, %struct.snd_pcm_runtime** %7, align 8
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 1
  %19 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %18, align 8
  store %struct.snd_emu10k1_pcm* %19, %struct.snd_emu10k1_pcm** %8, align 8
  %20 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %8, align 8
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %22 = call i32 @params_channels(%struct.snd_pcm_hw_params* %21)
  %23 = call i32 @snd_emu10k1_pcm_channel_alloc(%struct.snd_emu10k1_pcm* %20, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %3, align 4
  br label %111

27:                                               ; preds = %2
  %28 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %29 = call i64 @params_buffer_bytes(%struct.snd_pcm_hw_params* %28)
  store i64 %29, i64* %9, align 8
  %30 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %31 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i64, i64* @EMUPAGESIZE, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %39, i64 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %3, align 4
  br label %111

46:                                               ; preds = %38
  %47 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %48 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @EMUPAGESIZE, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i64, i64* @EMUPAGESIZE, align 8
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %57, %51, %46
  %64 = load i32, i32* %10, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %110

66:                                               ; preds = %63
  %67 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %8, align 8
  %68 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %73 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %8, align 8
  %74 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @snd_emu10k1_free_pages(%struct.snd_emu10k1* %72, i32* %75)
  br label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %79 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %80 = call i32* @snd_emu10k1_alloc_pages(%struct.snd_emu10k1* %78, %struct.snd_pcm_substream* %79)
  %81 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %8, align 8
  %82 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %81, i32 0, i32 1
  store i32* %80, i32** %82, align 8
  %83 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %8, align 8
  %84 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %8, align 8
  %86 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %77
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %111

92:                                               ; preds = %77
  %93 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %8, align 8
  %94 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = bitcast i32* %95 to %struct.snd_emu10k1_memblk*
  %97 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %111

104:                                              ; preds = %92
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @PAGE_SHIFT, align 4
  %107 = shl i32 %105, %106
  %108 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %8, align 8
  %109 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %104, %63
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %101, %89, %44, %25
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_emu10k1_pcm_channel_alloc(%struct.snd_emu10k1_pcm*, i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i64) #1

declare dso_local i32 @snd_emu10k1_free_pages(%struct.snd_emu10k1*, i32*) #1

declare dso_local i32* @snd_emu10k1_alloc_pages(%struct.snd_emu10k1*, %struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
