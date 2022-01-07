; ModuleID = '/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.aaci*, %struct.TYPE_5__* }
%struct.aaci = type { i32 }
%struct.TYPE_5__ = type { %struct.aaci_runtime* }
%struct.aaci_runtime = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CR_FEN = common dso_local global i32 0, align 4
@CR_COMPACT = common dso_local global i32 0, align 4
@CR_SZ16 = common dso_local global i32 0, align 4
@channels_to_slotmask = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @aaci_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aaci_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.aaci_runtime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.aaci*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.aaci_runtime*, %struct.aaci_runtime** %15, align 8
  store %struct.aaci_runtime* %16, %struct.aaci_runtime** %6, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %18 = call i32 @params_channels(%struct.snd_pcm_hw_params* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %20 = call i32 @params_rate(%struct.snd_pcm_hw_params* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ugt i32 %21, 48000
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %25 = call i32 @aaci_pcm_hw_free(%struct.snd_pcm_substream* %24)
  %26 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %27 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %2
  %31 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %32 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %31, i32 0, i32 3
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = call i32 @snd_ac97_pcm_close(%struct.TYPE_7__* %33)
  %35 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %36 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %30, %2
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 2
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %106

46:                                               ; preds = %40, %37
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %48 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %49 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %48)
  %50 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %47, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %104

53:                                               ; preds = %46
  %54 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %54, i32 0, i32 0
  %56 = load %struct.aaci*, %struct.aaci** %55, align 8
  store %struct.aaci* %56, %struct.aaci** %11, align 8
  %57 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %58 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %57, i32 0, i32 3
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %63 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %62, i32 0, i32 3
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @snd_ac97_pcm_open(%struct.TYPE_7__* %59, i32 %60, i32 %61, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %77 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @CR_FEN, align 4
  %79 = load i32, i32* @CR_COMPACT, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @CR_SZ16, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %84 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32*, i32** @channels_to_slotmask, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %9, align 4
  %88 = mul nsw i32 %87, 2
  %89 = add i32 %86, %88
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %85, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %94 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load %struct.aaci*, %struct.aaci** %11, align 8
  %98 = getelementptr inbounds %struct.aaci, %struct.aaci* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %99, 4
  %101 = sdiv i32 %100, 2
  %102 = load %struct.aaci_runtime*, %struct.aaci_runtime** %6, align 8
  %103 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %53, %46
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %43
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @aaci_pcm_hw_free(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ac97_pcm_close(%struct.TYPE_7__*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_ac97_pcm_open(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
