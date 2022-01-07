; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_pcm_mixer_notify1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_pcm_mixer_notify1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32 }
%struct.snd_kcontrol = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_ctl_elem_id = type { i32 }

@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*, %struct.snd_kcontrol*, i32, i32)* @snd_emu10k1_pcm_mixer_notify1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_pcm_mixer_notify1(%struct.snd_emu10k1* %0, %struct.snd_kcontrol* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_ctl_elem_id, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %11 = icmp ne %struct.snd_kcontrol* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %50

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %18
  store i32 %27, i32* %25, align 4
  br label %39

28:                                               ; preds = %13
  %29 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %30 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %31 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %29
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %28, %16
  %40 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %41 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %44 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @snd_ctl_build_ioff(%struct.snd_ctl_elem_id* %9, %struct.snd_kcontrol* %46, i32 %47)
  %49 = call i32 @snd_ctl_notify(i32 %42, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %39, %12
  ret void
}

declare dso_local i32 @snd_ctl_notify(i32, i32, i32) #1

declare dso_local i32 @snd_ctl_build_ioff(%struct.snd_ctl_elem_id*, %struct.snd_kcontrol*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
