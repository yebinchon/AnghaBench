; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cmdret = type { i32* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_riptide = type { %struct.cmdif* }
%struct.cmdif = type { i32 }
%struct.pcmhw = type { i32, i32, i32 }

@CMDRET_ZERO = common dso_local global %union.cmdret zeroinitializer, align 8
@.str = private unnamed_addr constant [85 x i8] c"pointer stream %d position 0x%x(0x%x in buffer) bytes 0x%lx(0x%lx in period) frames\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"stream not started or strange parms (%d %ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_riptide_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_riptide_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_riptide*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.pcmhw*, align 8
  %6 = alloca %struct.cmdif*, align 8
  %7 = alloca %union.cmdret, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = call %struct.snd_riptide* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_riptide* %10, %struct.snd_riptide** %3, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %4, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %15 = call %struct.pcmhw* @get_pcmhwdev(%struct.snd_pcm_substream* %14)
  store %struct.pcmhw* %15, %struct.pcmhw** %5, align 8
  %16 = load %struct.snd_riptide*, %struct.snd_riptide** %3, align 8
  %17 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %16, i32 0, i32 0
  %18 = load %struct.cmdif*, %struct.cmdif** %17, align 8
  store %struct.cmdif* %18, %struct.cmdif** %6, align 8
  %19 = bitcast %union.cmdret* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%union.cmdret* @CMDRET_ZERO to i8*), i64 8, i1 false)
  %20 = load %struct.cmdif*, %struct.cmdif** %6, align 8
  %21 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %22 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @SEND_GPOS(%struct.cmdif* %20, i32 0, i32 %23, %union.cmdret* %7)
  %25 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %26 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %97

29:                                               ; preds = %1
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %97

34:                                               ; preds = %29
  %35 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %36 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = bitcast %union.cmdret* %7 to i32**
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = bitcast %union.cmdret* %7 to i32**
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %47 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = srem i32 %45, %48
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %51 = bitcast %union.cmdret* %7 to i32**
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %50, i32 %54)
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %57 = bitcast %union.cmdret* %7 to i32**
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %56, i32 %60)
  %62 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = srem i32 %61, %64
  %66 = call i32 (i8*, i32, i32, ...) @snd_printdd(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41, i32 %49, i32 %55, i32 %65)
  %67 = bitcast %union.cmdret* %7 to i32**
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %72 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %70, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %34
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %77 = bitcast %union.cmdret* %7 to i32**
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %82 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = srem i32 %80, %83
  %85 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %76, i32 %84)
  store i32 %85, i32* %8, align 4
  br label %96

86:                                               ; preds = %34
  %87 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %88 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %89 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %92 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = srem i32 %90, %93
  %95 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %87, i32 %94)
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %86, %75
  br label %107

97:                                               ; preds = %29, %1
  %98 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %99 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %102 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, i32, i32, ...) @snd_printdd(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %103)
  %105 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %106 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %105, i32 0)
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %97, %96
  %108 = load i32, i32* %8, align 4
  ret i32 %108
}

declare dso_local %struct.snd_riptide* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.pcmhw* @get_pcmhwdev(%struct.snd_pcm_substream*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SEND_GPOS(%struct.cmdif*, i32, i32, %union.cmdret*) #1

declare dso_local i32 @snd_printdd(i8*, i32, i32, ...) #1

declare dso_local i32 @bytes_to_frames(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
