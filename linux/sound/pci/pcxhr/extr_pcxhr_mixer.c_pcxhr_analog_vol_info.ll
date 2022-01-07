; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_analog_vol_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_analog_vol_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.snd_pcxhr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@SNDRV_CTL_ELEM_TYPE_INTEGER = common dso_local global i32 0, align 4
@HR222_LINE_PLAYBACK_LEVEL_MIN = common dso_local global i32 0, align 4
@HR222_LINE_PLAYBACK_LEVEL_MAX = common dso_local global i32 0, align 4
@PCXHR_LINE_PLAYBACK_LEVEL_MIN = common dso_local global i32 0, align 4
@PCXHR_LINE_PLAYBACK_LEVEL_MAX = common dso_local global i32 0, align 4
@HR222_LINE_CAPTURE_LEVEL_MIN = common dso_local global i32 0, align 4
@HR222_LINE_CAPTURE_LEVEL_MAX = common dso_local global i32 0, align 4
@PCXHR_LINE_CAPTURE_LEVEL_MIN = common dso_local global i32 0, align 4
@PCXHR_LINE_CAPTURE_LEVEL_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @pcxhr_analog_vol_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_analog_vol_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.snd_pcxhr*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %6 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %7 = call %struct.snd_pcxhr* @snd_kcontrol_chip(%struct.snd_kcontrol* %6)
  store %struct.snd_pcxhr* %7, %struct.snd_pcxhr** %5, align 8
  %8 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_INTEGER, align 4
  %9 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %11, i32 0, i32 0
  store i32 2, i32* %12, align 4
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %2
  %18 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %19 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = load i32, i32* @HR222_LINE_PLAYBACK_LEVEL_MIN, align 4
  %26 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* @HR222_LINE_PLAYBACK_LEVEL_MAX, align 4
  %31 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %32 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  br label %46

35:                                               ; preds = %17
  %36 = load i32, i32* @PCXHR_LINE_PLAYBACK_LEVEL_MIN, align 4
  %37 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %38 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @PCXHR_LINE_PLAYBACK_LEVEL_MAX, align 4
  %42 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %43 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %35, %24
  br label %77

47:                                               ; preds = %2
  %48 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %49 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %47
  %55 = load i32, i32* @HR222_LINE_CAPTURE_LEVEL_MIN, align 4
  %56 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %57 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* @HR222_LINE_CAPTURE_LEVEL_MAX, align 4
  %61 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %62 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 4
  br label %76

65:                                               ; preds = %47
  %66 = load i32, i32* @PCXHR_LINE_CAPTURE_LEVEL_MIN, align 4
  %67 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %68 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* @PCXHR_LINE_CAPTURE_LEVEL_MAX, align 4
  %72 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %73 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 4
  br label %76

76:                                               ; preds = %65, %54
  br label %77

77:                                               ; preds = %76, %46
  ret i32 0
}

declare dso_local %struct.snd_pcxhr* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
