; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_alc650_swap_surround_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_alc650_swap_surround_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_ac97 = type { %struct.snd_pcm_chmap** }
%struct.snd_pcm_chmap = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@snd_pcm_std_chmaps = common dso_local global i32 0, align 4
@snd_pcm_alt_chmaps = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @alc650_swap_surround_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc650_swap_surround_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca %struct.snd_pcm_chmap*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.snd_ac97* %8, %struct.snd_ac97** %5, align 8
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %10 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_chmap**, %struct.snd_pcm_chmap*** %10, align 8
  %12 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %11, i64 %12
  %14 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %13, align 8
  store %struct.snd_pcm_chmap* %14, %struct.snd_pcm_chmap** %6, align 8
  %15 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %6, align 8
  %16 = icmp ne %struct.snd_pcm_chmap* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %19 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load i32, i32* @snd_pcm_std_chmaps, align 4
  %28 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %6, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %34

30:                                               ; preds = %17
  %31 = load i32, i32* @snd_pcm_alt_chmaps, align 4
  %32 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %6, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %37 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %38 = call i32 @snd_ac97_put_volsw(%struct.snd_kcontrol* %36, %struct.snd_ctl_elem_value* %37)
  ret i32 %38
}

declare dso_local %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ac97_put_volsw(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
