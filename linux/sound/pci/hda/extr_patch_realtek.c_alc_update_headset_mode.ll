; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_update_headset_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_update_headset_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i64, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64*, i64*, i32 }

@ALC_HEADSET_MODE_UNKNOWN = common dso_local global i32 0, align 4
@ALC_HEADSET_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@ALC_HEADSET_TYPE_CTIA = common dso_local global i32 0, align 4
@ALC_HEADSET_TYPE_OMTP = common dso_local global i32 0, align 4
@AC_PINCTL_OUT_EN = common dso_local global i32 0, align 4
@AC_PINCTL_HP_EN = common dso_local global i32 0, align 4
@PIN_VREFHIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc_update_headset_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_update_headset_mode(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.alc_spec*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  store %struct.alc_spec* %9, %struct.alc_spec** %3, align 8
  %10 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %11 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %15 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %13, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %4, align 8
  %22 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %23 = call i64 @alc_get_hp_pin(%struct.alc_spec* %22)
  store i64 %23, i64* %5, align 8
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %24, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  store i32 128, i32* %6, align 4
  br label %46

29:                                               ; preds = %1
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %32 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 130, i32* %6, align 4
  br label %45

36:                                               ; preds = %29
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %39 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 129, i32* %6, align 4
  br label %44

43:                                               ; preds = %36
  store i32 131, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %42
  br label %45

45:                                               ; preds = %44, %35
  br label %46

46:                                               ; preds = %45, %28
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %49 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %54 = call i32 @snd_hda_gen_update_outputs(%struct.hda_codec* %53)
  br label %151

55:                                               ; preds = %46
  %56 = load i32, i32* %6, align 4
  switch i32 %56, label %117 [
    i32 128, label %57
    i32 130, label %69
    i32 129, label %101
    i32 131, label %111
  ]

57:                                               ; preds = %55
  %58 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %59 = call i32 @alc_headset_mode_unplugged(%struct.hda_codec* %58)
  %60 = load i32, i32* @ALC_HEADSET_MODE_UNKNOWN, align 4
  %61 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %62 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @ALC_HEADSET_TYPE_UNKNOWN, align 4
  %64 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %65 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %67 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i32 0, i32* %68, align 8
  br label %117

69:                                               ; preds = %55
  %70 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %71 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @ALC_HEADSET_TYPE_UNKNOWN, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %77 = call i32 @alc_determine_headset_type(%struct.hda_codec* %76)
  br label %78

78:                                               ; preds = %75, %69
  %79 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %80 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ALC_HEADSET_TYPE_CTIA, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %86 = call i32 @alc_headset_mode_ctia(%struct.hda_codec* %85)
  br label %97

87:                                               ; preds = %78
  %88 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %89 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @ALC_HEADSET_TYPE_OMTP, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %95 = call i32 @alc_headset_mode_omtp(%struct.hda_codec* %94)
  br label %96

96:                                               ; preds = %93, %87
  br label %97

97:                                               ; preds = %96, %84
  %98 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %99 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  store i32 1, i32* %100, align 8
  br label %117

101:                                              ; preds = %55
  %102 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %103 = load i64, i64* %5, align 8
  %104 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %105 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @alc_headset_mode_mic_in(%struct.hda_codec* %102, i64 %103, i64 %106)
  %108 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %109 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  store i32 0, i32* %110, align 8
  br label %117

111:                                              ; preds = %55
  %112 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %113 = call i32 @alc_headset_mode_default(%struct.hda_codec* %112)
  %114 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %115 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  store i32 1, i32* %116, align 8
  br label %117

117:                                              ; preds = %55, %111, %101, %97, %57
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 129
  br i1 %119, label %120, label %145

120:                                              ; preds = %117
  %121 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %122 = load i64, i64* %5, align 8
  %123 = load i32, i32* @AC_PINCTL_OUT_EN, align 4
  %124 = load i32, i32* @AC_PINCTL_HP_EN, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec* %121, i64 %122, i32 %125)
  %127 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %128 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %120
  %132 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %133 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %5, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %139 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %140 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* @PIN_VREFHIZ, align 4
  %143 = call i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec* %138, i64 %141, i32 %142)
  br label %144

144:                                              ; preds = %137, %131, %120
  br label %145

145:                                              ; preds = %144, %117
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %148 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %150 = call i32 @snd_hda_gen_update_outputs(%struct.hda_codec* %149)
  br label %151

151:                                              ; preds = %145, %52
  ret void
}

declare dso_local i64 @alc_get_hp_pin(%struct.alc_spec*) #1

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_gen_update_outputs(%struct.hda_codec*) #1

declare dso_local i32 @alc_headset_mode_unplugged(%struct.hda_codec*) #1

declare dso_local i32 @alc_determine_headset_type(%struct.hda_codec*) #1

declare dso_local i32 @alc_headset_mode_ctia(%struct.hda_codec*) #1

declare dso_local i32 @alc_headset_mode_omtp(%struct.hda_codec*) #1

declare dso_local i32 @alc_headset_mode_mic_in(%struct.hda_codec*, i64, i64) #1

declare dso_local i32 @alc_headset_mode_default(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
