; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { %struct.snd_pcm*, i32, i32, i32, %struct.TYPE_2__ }
%struct.snd_pcm = type { i32, i64, i32, %struct.es1968* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"ESS Maestro\00", align 1
@snd_es1968_pcm_free = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_es1968_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_es1968_capture_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es1968*, i32)* @snd_es1968_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1968_pcm(%struct.es1968* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.es1968*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.es1968* %0, %struct.es1968** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.es1968*, %struct.es1968** %4, align 8
  %9 = call i32 @snd_es1968_init_dmabuf(%struct.es1968* %8)
  store i32 %9, i32* %7, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %3, align 4
  br label %78

13:                                               ; preds = %2
  %14 = load %struct.es1968*, %struct.es1968** %4, align 8
  %15 = load %struct.es1968*, %struct.es1968** %4, align 8
  %16 = getelementptr inbounds %struct.es1968, %struct.es1968* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 12
  %20 = call i32 @wave_set_register(%struct.es1968* %14, i32 508, i32 %19)
  %21 = load %struct.es1968*, %struct.es1968** %4, align 8
  %22 = load %struct.es1968*, %struct.es1968** %4, align 8
  %23 = getelementptr inbounds %struct.es1968, %struct.es1968* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 12
  %27 = call i32 @wave_set_register(%struct.es1968* %21, i32 509, i32 %26)
  %28 = load %struct.es1968*, %struct.es1968** %4, align 8
  %29 = load %struct.es1968*, %struct.es1968** %4, align 8
  %30 = getelementptr inbounds %struct.es1968, %struct.es1968* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 12
  %34 = call i32 @wave_set_register(%struct.es1968* %28, i32 510, i32 %33)
  %35 = load %struct.es1968*, %struct.es1968** %4, align 8
  %36 = load %struct.es1968*, %struct.es1968** %4, align 8
  %37 = getelementptr inbounds %struct.es1968, %struct.es1968* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 12
  %41 = call i32 @wave_set_register(%struct.es1968* %35, i32 511, i32 %40)
  %42 = load %struct.es1968*, %struct.es1968** %4, align 8
  %43 = getelementptr inbounds %struct.es1968, %struct.es1968* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.es1968*, %struct.es1968** %4, align 8
  %47 = getelementptr inbounds %struct.es1968, %struct.es1968* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.es1968*, %struct.es1968** %4, align 8
  %50 = getelementptr inbounds %struct.es1968, %struct.es1968* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @snd_pcm_new(i32 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i32 %51, %struct.snd_pcm** %6)
  store i32 %52, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %13
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %78

56:                                               ; preds = %13
  %57 = load %struct.es1968*, %struct.es1968** %4, align 8
  %58 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %59 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %58, i32 0, i32 3
  store %struct.es1968* %57, %struct.es1968** %59, align 8
  %60 = load i32, i32* @snd_es1968_pcm_free, align 4
  %61 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %62 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %64 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %65 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %63, i32 %64, i32* @snd_es1968_playback_ops)
  %66 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %67 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %68 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %66, i32 %67, i32* @snd_es1968_capture_ops)
  %69 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %70 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %72 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @strcpy(i32 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %76 = load %struct.es1968*, %struct.es1968** %4, align 8
  %77 = getelementptr inbounds %struct.es1968, %struct.es1968* %76, i32 0, i32 0
  store %struct.snd_pcm* %75, %struct.snd_pcm** %77, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %56, %54, %11
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @snd_es1968_init_dmabuf(%struct.es1968*) #1

declare dso_local i32 @wave_set_register(%struct.es1968*, i32, i32) #1

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
