; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_update_eld.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_update_eld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.hdmi_spec* }
%struct.hdmi_spec = type { i64 }
%struct.hdmi_spec_per_pin = type { i32, i32, i64, %struct.hdmi_eld }
%struct.hdmi_eld = type { i32, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, %struct.hdmi_spec_per_pin*, %struct.hdmi_eld*)* @update_eld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_eld(%struct.hda_codec* %0, %struct.hdmi_spec_per_pin* %1, %struct.hdmi_eld* %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hdmi_spec_per_pin*, align 8
  %6 = alloca %struct.hdmi_eld*, align 8
  %7 = alloca %struct.hdmi_eld*, align 8
  %8 = alloca %struct.hdmi_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hdmi_spec_per_pin* %1, %struct.hdmi_spec_per_pin** %5, align 8
  store %struct.hdmi_eld* %2, %struct.hdmi_eld** %6, align 8
  %12 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %13 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %12, i32 0, i32 3
  store %struct.hdmi_eld* %13, %struct.hdmi_eld** %7, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 1
  %16 = load %struct.hdmi_spec*, %struct.hdmi_spec** %15, align 8
  store %struct.hdmi_spec* %16, %struct.hdmi_spec** %8, align 8
  %17 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %18 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %21 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %24 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %3
  %28 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %29 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %34 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %35 = call i32 @hdmi_attach_hda_pcm(%struct.hdmi_spec* %33, %struct.hdmi_spec_per_pin* %34)
  %36 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %37 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %38 = call i32 @hdmi_pcm_setup_pin(%struct.hdmi_spec* %36, %struct.hdmi_spec_per_pin* %37)
  br label %46

39:                                               ; preds = %27
  %40 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %41 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %42 = call i32 @hdmi_pcm_reset_pin(%struct.hdmi_spec* %40, %struct.hdmi_spec_per_pin* %41)
  %43 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %44 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %45 = call i32 @hdmi_detach_hda_pcm(%struct.hdmi_spec* %43, %struct.hdmi_spec_per_pin* %44)
  br label %46

46:                                               ; preds = %39, %32
  br label %47

47:                                               ; preds = %46, %3
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %52 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %56 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %61 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %62 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %61, i32 0, i32 2
  %63 = call i32 @snd_hdmi_show_eld(%struct.hda_codec* %60, i32* %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %66 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %69 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %67, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %10, align 4
  %73 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %74 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %77 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %117, label %85

85:                                               ; preds = %64
  %86 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %87 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %85
  %91 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %92 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %90
  %96 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %97 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %100 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %98, %101
  br i1 %102, label %115, label %103

103:                                              ; preds = %95
  %104 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %105 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %108 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %111 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @memcmp(i32 %106, i32 %109, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %103, %95
  store i32 1, i32* %10, align 4
  br label %116

116:                                              ; preds = %115, %103
  br label %117

117:                                              ; preds = %116, %90, %85, %64
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %157

120:                                              ; preds = %117
  %121 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %122 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %125 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %127 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %130 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %132 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %135 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %137 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %120
  %141 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %142 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %145 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %148 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @memcpy(i32 %143, i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %140, %120
  %152 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %153 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %156 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %151, %117
  %158 = load %struct.hdmi_eld*, %struct.hdmi_eld** %6, align 8
  %159 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %180

162:                                              ; preds = %157
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %180, label %165

165:                                              ; preds = %162
  %166 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %167 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %165
  %171 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %172 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %173 = call i32 @pin_cvt_fixup(%struct.hda_codec* %171, %struct.hdmi_spec_per_pin* %172, i32 0)
  %174 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %175 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %176 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %5, align 8
  %177 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @hdmi_setup_audio_infoframe(%struct.hda_codec* %174, %struct.hdmi_spec_per_pin* %175, i32 %178)
  br label %180

180:                                              ; preds = %170, %165, %162, %157
  %181 = load i32, i32* %10, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %200

183:                                              ; preds = %180
  %184 = load i32, i32* %11, align 4
  %185 = icmp sge i32 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %183
  %187 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %188 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %191 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %192 = or i32 %190, %191
  %193 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %194 = load i32, i32* %11, align 4
  %195 = call %struct.TYPE_4__* @get_hdmi_pcm(%struct.hdmi_spec* %193, i32 %194)
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  %199 = call i32 @snd_ctl_notify(i32 %189, i32 %192, i32* %198)
  br label %200

200:                                              ; preds = %186, %183, %180
  %201 = load i32, i32* %10, align 4
  ret i32 %201
}

declare dso_local i32 @hdmi_attach_hda_pcm(%struct.hdmi_spec*, %struct.hdmi_spec_per_pin*) #1

declare dso_local i32 @hdmi_pcm_setup_pin(%struct.hdmi_spec*, %struct.hdmi_spec_per_pin*) #1

declare dso_local i32 @hdmi_pcm_reset_pin(%struct.hdmi_spec*, %struct.hdmi_spec_per_pin*) #1

declare dso_local i32 @hdmi_detach_hda_pcm(%struct.hdmi_spec*, %struct.hdmi_spec_per_pin*) #1

declare dso_local i32 @snd_hdmi_show_eld(%struct.hda_codec*, i32*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pin_cvt_fixup(%struct.hda_codec*, %struct.hdmi_spec_per_pin*, i32) #1

declare dso_local i32 @hdmi_setup_audio_infoframe(%struct.hda_codec*, %struct.hdmi_spec_per_pin*, i32) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @get_hdmi_pcm(%struct.hdmi_spec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
