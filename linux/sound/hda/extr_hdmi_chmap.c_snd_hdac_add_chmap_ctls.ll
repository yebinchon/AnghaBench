; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdmi_chmap.c_snd_hdac_add_chmap_ctls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdmi_chmap.c_snd_hdac_add_chmap_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { i32 }
%struct.hdac_chmap = type { i32 }
%struct.snd_pcm_chmap = type { %struct.snd_kcontrol*, %struct.hdac_chmap* }
%struct.snd_kcontrol = type { i32, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_WRITE = common dso_local global i32 0, align 4
@hdmi_chmap_ctl_info = common dso_local global i32 0, align 4
@hdmi_chmap_ctl_get = common dso_local global i32 0, align 4
@hdmi_chmap_ctl_put = common dso_local global i32 0, align 4
@hdmi_chmap_ctl_tlv = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_add_chmap_ctls(%struct.snd_pcm* %0, i32 %1, %struct.hdac_chmap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdac_chmap*, align 8
  %8 = alloca %struct.snd_pcm_chmap*, align 8
  %9 = alloca %struct.snd_kcontrol*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm* %0, %struct.snd_pcm** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hdac_chmap* %2, %struct.hdac_chmap** %7, align 8
  %12 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %13 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm* %12, i32 %13, i32* null, i32 0, i32 %14, %struct.snd_pcm_chmap** %8)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %61

20:                                               ; preds = %3
  %21 = load %struct.hdac_chmap*, %struct.hdac_chmap** %7, align 8
  %22 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %8, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %22, i32 0, i32 1
  store %struct.hdac_chmap* %21, %struct.hdac_chmap** %23, align 8
  %24 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %8, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %24, i32 0, i32 0
  %26 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %25, align 8
  store %struct.snd_kcontrol* %26, %struct.snd_kcontrol** %9, align 8
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %44, %20
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %30 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_WRITE, align 4
  %35 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %36 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %35, i32 0, i32 5
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %34
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %27

47:                                               ; preds = %27
  %48 = load i32, i32* @hdmi_chmap_ctl_info, align 4
  %49 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %50 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @hdmi_chmap_ctl_get, align 4
  %52 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %53 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @hdmi_chmap_ctl_put, align 4
  %55 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %56 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @hdmi_chmap_ctl_tlv, align 4
  %58 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %59 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %47, %18
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm*, i32, i32*, i32, i32, %struct.snd_pcm_chmap**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
