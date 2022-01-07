; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_sync_eld_via_acomp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_sync_eld_via_acomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.hdmi_spec* }
%struct.hdmi_spec = type { %struct.hdmi_eld }
%struct.hdmi_eld = type { i32, i32, i32, i32, i32 }
%struct.hdmi_spec_per_pin = type { i32, i32, i32 }
%struct.snd_jack = type { i32 }

@ELD_MAX_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_JACK_AVOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hdmi_spec_per_pin*)* @sync_eld_via_acomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_eld_via_acomp(%struct.hda_codec* %0, %struct.hdmi_spec_per_pin* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hdmi_spec_per_pin*, align 8
  %5 = alloca %struct.hdmi_spec*, align 8
  %6 = alloca %struct.hdmi_eld*, align 8
  %7 = alloca %struct.snd_jack*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.hdmi_spec_per_pin* %1, %struct.hdmi_spec_per_pin** %4, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 1
  %12 = load %struct.hdmi_spec*, %struct.hdmi_spec** %11, align 8
  store %struct.hdmi_spec* %12, %struct.hdmi_spec** %5, align 8
  %13 = load %struct.hdmi_spec*, %struct.hdmi_spec** %5, align 8
  %14 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %13, i32 0, i32 0
  store %struct.hdmi_eld* %14, %struct.hdmi_eld** %6, align 8
  store %struct.snd_jack* null, %struct.snd_jack** %7, align 8
  %15 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %16 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %19 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %21 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %20, i32 0, i32 0
  %22 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %23 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %26 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %29 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %28, i32 0, i32 0
  %30 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %31 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ELD_MAX_SIZE, align 4
  %34 = call i32 @snd_hdac_acomp_get_eld(i32* %21, i32 %24, i32 %27, i32* %29, i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %2
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @ELD_MAX_SIZE, align 4
  %40 = call i32 @min(i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %42 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %43 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %42, i32 0, i32 4
  %44 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %45 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @snd_hdmi_parse_eld(%struct.hda_codec* %41, i32* %43, i32 %46, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %50, %37
  br label %54

54:                                               ; preds = %53, %2
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %59 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %62 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  br label %68

63:                                               ; preds = %54
  %64 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %65 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  %66 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %67 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %66, i32 0, i32 2
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %57
  %69 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %70 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %71 = call %struct.snd_jack* @pin_idx_to_jack(%struct.hda_codec* %69, %struct.hdmi_spec_per_pin* %70)
  store %struct.snd_jack* %71, %struct.snd_jack** %7, align 8
  %72 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %73 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %74 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %75 = call i32 @update_eld(%struct.hda_codec* %72, %struct.hdmi_spec_per_pin* %73, %struct.hdmi_eld* %74)
  store i32 %75, i32* %8, align 4
  %76 = load %struct.snd_jack*, %struct.snd_jack** %7, align 8
  %77 = icmp eq %struct.snd_jack* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %68
  %79 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %80 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %81 = call %struct.snd_jack* @pin_idx_to_jack(%struct.hda_codec* %79, %struct.hdmi_spec_per_pin* %80)
  store %struct.snd_jack* %81, %struct.snd_jack** %7, align 8
  br label %82

82:                                               ; preds = %78, %68
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %82
  %86 = load %struct.snd_jack*, %struct.snd_jack** %7, align 8
  %87 = icmp ne %struct.snd_jack* %86, null
  br i1 %87, label %88, label %105

88:                                               ; preds = %85
  %89 = load %struct.snd_jack*, %struct.snd_jack** %7, align 8
  %90 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %91 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %96 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @SND_JACK_AVOUT, align 4
  br label %102

101:                                              ; preds = %94, %88
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i32 [ %100, %99 ], [ 0, %101 ]
  %104 = call i32 @snd_jack_report(%struct.snd_jack* %89, i32 %103)
  br label %105

105:                                              ; preds = %102, %85, %82
  %106 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %107 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_hdac_acomp_get_eld(i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @snd_hdmi_parse_eld(%struct.hda_codec*, i32*, i32, i32) #1

declare dso_local %struct.snd_jack* @pin_idx_to_jack(%struct.hda_codec*, %struct.hdmi_spec_per_pin*) #1

declare dso_local i32 @update_eld(%struct.hda_codec*, %struct.hdmi_spec_per_pin*, %struct.hdmi_eld*) #1

declare dso_local i32 @snd_jack_report(%struct.snd_jack*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
