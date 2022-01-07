; ModuleID = '/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_register_chmap_ctls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_register_chmap_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_intelhad = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__*, %struct.snd_intelhad* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_pcm = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@had_chmap_ctl_info = common dso_local global i32 0, align 4
@had_chmap_ctl_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_intelhad*, %struct.snd_pcm*)* @had_register_chmap_ctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @had_register_chmap_ctls(%struct.snd_intelhad* %0, %struct.snd_pcm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_intelhad*, align 8
  %5 = alloca %struct.snd_pcm*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_intelhad* %0, %struct.snd_intelhad** %4, align 8
  store %struct.snd_pcm* %1, %struct.snd_pcm** %5, align 8
  %7 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %8 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %9 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %10 = ptrtoint %struct.snd_intelhad* %9 to i64
  %11 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %12 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %11, i32 0, i32 0
  %13 = call i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm* %7, i32 %8, i32* null, i32 0, i64 %10, %struct.TYPE_4__** %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %20 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %21 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store %struct.snd_intelhad* %19, %struct.snd_intelhad** %23, align 8
  %24 = load i32, i32* @had_chmap_ctl_info, align 4
  %25 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %26 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %24, i32* %30, align 4
  %31 = load i32, i32* @had_chmap_ctl_get, align 4
  %32 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %33 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %31, i32* %37, align 4
  %38 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %39 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %18, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm*, i32, i32*, i32, i64, %struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
