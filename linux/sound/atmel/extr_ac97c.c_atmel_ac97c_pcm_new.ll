; ModuleID = '/home/carl/AnghaBench/linux/sound/atmel/extr_ac97c.c_atmel_ac97c_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/atmel/extr_ac97c.c_atmel_ac97c_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hardware = type { i32, i32, i32 }
%struct.atmel_ac97c = type { %struct.snd_pcm*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.snd_pcm = type { i32, i64, %struct.atmel_ac97c* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@atmel_ac97c_hw = common dso_local global %struct.snd_pcm_hardware zeroinitializer, align 4
@at91_ac97_pcm_defs = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@atmel_ac97_capture_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@atmel_ac97_playback_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_ac97c*)* @atmel_ac97c_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ac97c_pcm_new(%struct.atmel_ac97c* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_ac97c*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca %struct.snd_pcm_hardware, align 4
  %6 = alloca i32, align 4
  store %struct.atmel_ac97c* %0, %struct.atmel_ac97c** %3, align 8
  %7 = bitcast %struct.snd_pcm_hardware* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.snd_pcm_hardware* @atmel_ac97c_hw to i8*), i64 12, i1 false)
  %8 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %3, align 8
  %9 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @at91_ac97_pcm_defs, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  %13 = load i32, i32* @at91_ac97_pcm_defs, align 4
  %14 = call i32 @snd_ac97_pcm_assign(i32 %10, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %71

19:                                               ; preds = %1
  %20 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %3, align 8
  %21 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %3, align 8
  %24 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @snd_pcm_new(%struct.TYPE_4__* %22, i32 %27, i32 0, i32 1, i32 1, %struct.snd_pcm** %4)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %71

33:                                               ; preds = %19
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %35 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %36 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %34, i32 %35, i32* @atmel_ac97_capture_ops)
  %37 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %38 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %39 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %37, i32 %38, i32* @atmel_ac97_playback_ops)
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %41 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %42 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %3, align 8
  %43 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %5, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %47, %49
  %51 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %5, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %40, i32 %41, i32* %45, i32 %50, i32 %52)
  %54 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %3, align 8
  %55 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %56 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %55, i32 0, i32 2
  store %struct.atmel_ac97c* %54, %struct.atmel_ac97c** %56, align 8
  %57 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %58 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %60 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %3, align 8
  %63 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strcpy(i32 %61, i32 %66)
  %68 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %69 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %3, align 8
  %70 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %69, i32 0, i32 0
  store %struct.snd_pcm* %68, %struct.snd_pcm** %70, align 8
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %33, %31, %17
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snd_ac97_pcm_assign(i32, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @snd_pcm_new(%struct.TYPE_4__*, i32, i32, i32, i32, %struct.snd_pcm**) #2

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #2

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32*, i32, i32) #2

declare dso_local i32 @strcpy(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
