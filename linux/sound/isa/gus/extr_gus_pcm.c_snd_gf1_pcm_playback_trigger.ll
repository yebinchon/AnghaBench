; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_playback_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_playback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.gus_pcm_private* }
%struct.gus_pcm_private = type { %struct.TYPE_2__**, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_gus_card = type { i32 }

@SNDRV_PCM_TRIGGER_START = common dso_local global i32 0, align 4
@SNDRV_PCM_TRIGGER_STOP = common dso_local global i32 0, align 4
@SNDRV_GF1_PCM_PFLG_ACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_gf1_pcm_playback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gf1_pcm_playback_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_gus_card*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.gus_pcm_private*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = call %struct.snd_gus_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_gus_card* %11, %struct.snd_gus_card** %6, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %7, align 8
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 0
  %17 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %16, align 8
  store %struct.gus_pcm_private* %17, %struct.gus_pcm_private** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SNDRV_PCM_TRIGGER_START, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %23 = call i32 @snd_gf1_pcm_trigger_up(%struct.snd_pcm_substream* %22)
  br label %75

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SNDRV_PCM_TRIGGER_STOP, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %24
  %29 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %30 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %29, i32 0, i32 1
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load i32, i32* @SNDRV_GF1_PCM_PFLG_ACTIVE, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %35 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %39 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %38, i32 0, i32 1
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %42 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @snd_gf1_stop_voices(%struct.snd_gus_card* %48, i32 %49, i32 %50)
  %52 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %53 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = icmp ne %struct.TYPE_2__* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %28
  %59 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %60 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %61, i64 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %9, align 4
  %66 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @snd_gf1_stop_voices(%struct.snd_gus_card* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %58, %28
  br label %74

71:                                               ; preds = %24
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %76

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %21
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %71
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.snd_gus_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_gf1_pcm_trigger_up(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_gf1_stop_voices(%struct.snd_gus_card*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
