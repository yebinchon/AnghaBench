; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_build_mixer_unit_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_build_mixer_unit_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_build = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.uac_mixer_unit_descriptor = type { i32 }
%struct.usb_audio_term = type { i32 }
%struct.usb_mixer_elem_info = type { i32, i32, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.snd_kcontrol = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.usbmix_name_map = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@USB_MIXER_S16 = common dso_local global i32 0, align 4
@usb_feature_unit_ctl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cannot malloc kcontrol\0A\00", align 1
@snd_usb_mixer_elem_free = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Mixer Source %d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" Volume\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"[%d] MU [%s] ch = %d, val = %d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mixer_build*, %struct.uac_mixer_unit_descriptor*, i32, i32, i32, i32, %struct.usb_audio_term*)* @build_mixer_unit_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_mixer_unit_ctl(%struct.mixer_build* %0, %struct.uac_mixer_unit_descriptor* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.usb_audio_term* %6) #0 {
  %8 = alloca %struct.mixer_build*, align 8
  %9 = alloca %struct.uac_mixer_unit_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.usb_audio_term*, align 8
  %15 = alloca %struct.usb_mixer_elem_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.snd_kcontrol*, align 8
  %19 = alloca %struct.usbmix_name_map*, align 8
  %20 = alloca i32*, align 8
  store %struct.mixer_build* %0, %struct.mixer_build** %8, align 8
  store %struct.uac_mixer_unit_descriptor* %1, %struct.uac_mixer_unit_descriptor** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.usb_audio_term* %6, %struct.usb_audio_term** %14, align 8
  %21 = load %struct.mixer_build*, %struct.mixer_build** %8, align 8
  %22 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %13, align 4
  %25 = call %struct.usbmix_name_map* @find_map(i32 %23, i32 %24, i32 0)
  store %struct.usbmix_name_map* %25, %struct.usbmix_name_map** %19, align 8
  %26 = load %struct.usbmix_name_map*, %struct.usbmix_name_map** %19, align 8
  %27 = call i64 @check_ignored_ctl(%struct.usbmix_name_map* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %7
  br label %159

30:                                               ; preds = %7
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.usb_mixer_elem_info* @kzalloc(i32 28, i32 %31)
  store %struct.usb_mixer_elem_info* %32, %struct.usb_mixer_elem_info** %15, align 8
  %33 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %34 = icmp ne %struct.usb_mixer_elem_info* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %159

36:                                               ; preds = %30
  %37 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %38 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %37, i32 0, i32 2
  %39 = load %struct.mixer_build*, %struct.mixer_build** %8, align 8
  %40 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @snd_usb_mixer_elem_init_std(%struct.TYPE_6__* %38, %struct.TYPE_7__* %41, i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  %46 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %47 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @USB_MIXER_S16, align 4
  %49 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %50 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %16, align 4
  br label %51

51:                                               ; preds = %81, %36
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %51
  %56 = load %struct.uac_mixer_unit_descriptor*, %struct.uac_mixer_unit_descriptor** %9, align 8
  %57 = load %struct.mixer_build*, %struct.mixer_build** %8, align 8
  %58 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32* @uac_mixer_unit_bmControls(%struct.uac_mixer_unit_descriptor* %56, i32 %61)
  store i32* %62, i32** %20, align 8
  %63 = load i32*, i32** %20, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @check_matrix_bitmap(i32* %63, i32 %64, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %55
  %70 = load i32, i32* %16, align 4
  %71 = shl i32 1, %70
  %72 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %73 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %77 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %69, %55
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %16, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %16, align 4
  br label %51

84:                                               ; preds = %51
  %85 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %86 = call i32 @get_min_max(%struct.usb_mixer_elem_info* %85, i32 0)
  %87 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %88 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @usb_feature_unit_ctl, %struct.usb_mixer_elem_info* %87)
  store %struct.snd_kcontrol* %88, %struct.snd_kcontrol** %18, align 8
  %89 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %18, align 8
  %90 = icmp ne %struct.snd_kcontrol* %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %84
  %92 = load %struct.mixer_build*, %struct.mixer_build** %8, align 8
  %93 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @usb_audio_err(i32 %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %96 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %97 = call i32 @usb_mixer_elem_info_free(%struct.usb_mixer_elem_info* %96)
  br label %159

98:                                               ; preds = %84
  %99 = load i32, i32* @snd_usb_mixer_elem_free, align 4
  %100 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %18, align 8
  %101 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.usbmix_name_map*, %struct.usbmix_name_map** %19, align 8
  %103 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %18, align 8
  %104 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @check_mapped_name(%struct.usbmix_name_map* %102, i32 %106, i32 4)
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %98
  %111 = load %struct.mixer_build*, %struct.mixer_build** %8, align 8
  %112 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.usb_audio_term*, %struct.usb_audio_term** %14, align 8
  %115 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %18, align 8
  %116 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @get_term_name(i32 %113, %struct.usb_audio_term* %114, i32 %118, i32 4, i32 0)
  store i32 %119, i32* %17, align 4
  br label %120

120:                                              ; preds = %110, %98
  %121 = load i32, i32* %17, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %120
  %124 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %18, align 8
  %125 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  %130 = call i32 @sprintf(i32 %127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  store i32 %130, i32* %17, align 4
  br label %131

131:                                              ; preds = %123, %120
  %132 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %18, align 8
  %133 = call i32 @append_ctl_name(%struct.snd_kcontrol* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %134 = load %struct.mixer_build*, %struct.mixer_build** %8, align 8
  %135 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %138 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %18, align 8
  %142 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %146 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %149 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %152 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @usb_audio_dbg(i32 %136, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %140, i32 %144, i32 %147, i32 %150, i32 %153)
  %155 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %15, align 8
  %156 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %155, i32 0, i32 2
  %157 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %18, align 8
  %158 = call i32 @snd_usb_mixer_add_control(%struct.TYPE_6__* %156, %struct.snd_kcontrol* %157)
  br label %159

159:                                              ; preds = %131, %91, %35, %29
  ret void
}

declare dso_local %struct.usbmix_name_map* @find_map(i32, i32, i32) #1

declare dso_local i64 @check_ignored_ctl(%struct.usbmix_name_map*) #1

declare dso_local %struct.usb_mixer_elem_info* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_usb_mixer_elem_init_std(%struct.TYPE_6__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32* @uac_mixer_unit_bmControls(%struct.uac_mixer_unit_descriptor*, i32) #1

declare dso_local i64 @check_matrix_bitmap(i32*, i32, i32, i32) #1

declare dso_local i32 @get_min_max(%struct.usb_mixer_elem_info*, i32) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.usb_mixer_elem_info*) #1

declare dso_local i32 @usb_audio_err(i32, i8*) #1

declare dso_local i32 @usb_mixer_elem_info_free(%struct.usb_mixer_elem_info*) #1

declare dso_local i32 @check_mapped_name(%struct.usbmix_name_map*, i32, i32) #1

declare dso_local i32 @get_term_name(i32, %struct.usb_audio_term*, i32, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @append_ctl_name(%struct.snd_kcontrol*, i8*) #1

declare dso_local i32 @usb_audio_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_usb_mixer_add_control(%struct.TYPE_6__*, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
