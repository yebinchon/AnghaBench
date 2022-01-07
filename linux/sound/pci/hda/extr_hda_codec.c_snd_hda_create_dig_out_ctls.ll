; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_create_dig_out_ctls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_create_dig_out_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i64 }
%struct.hda_codec = type { i32, %struct.TYPE_4__, %struct.hda_bus* }
%struct.TYPE_4__ = type { i64 }
%struct.hda_bus = type { i32 }
%struct.snd_kcontrol = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hda_spdif_out = type { i32, i32, i32 }

@HDA_PCM_TYPE_HDMI = common dso_local global i32 0, align 4
@HDA_PCM_TYPE_SPDIF = common dso_local global i32 0, align 4
@dig_mixes = common dso_local global %struct.snd_kcontrol_new* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"IEC958 Playback Switch\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"too many IEC958 outputs\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AC_VERB_GET_DIGI_CONVERT_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_create_dig_out_ctls(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_kcontrol*, align 8
  %12 = alloca %struct.snd_kcontrol_new*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.hda_spdif_out*, align 8
  %17 = alloca %struct.hda_bus*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 16, i32* %15, align 4
  %18 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %19 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %18, i32 0, i32 2
  %20 = load %struct.hda_bus*, %struct.hda_bus** %19, align 8
  store %struct.hda_bus* %20, %struct.hda_bus** %17, align 8
  %21 = load %struct.hda_bus*, %struct.hda_bus** %17, align 8
  %22 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HDA_PCM_TYPE_HDMI, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @HDA_PCM_TYPE_SPDIF, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 16, i32* %13, align 4
  br label %69

31:                                               ; preds = %26, %4
  %32 = load %struct.hda_bus*, %struct.hda_bus** %17, align 8
  %33 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @HDA_PCM_TYPE_SPDIF, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @HDA_PCM_TYPE_HDMI, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @dig_mixes, align 8
  store %struct.snd_kcontrol_new* %42, %struct.snd_kcontrol_new** %12, align 8
  br label %43

43:                                               ; preds = %61, %41
  %44 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %12, align 8
  %45 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %50 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %12, align 8
  %51 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call %struct.snd_kcontrol* @find_mixer_ctl(%struct.hda_codec* %49, i64 %52, i32 0, i32 0)
  store %struct.snd_kcontrol* %53, %struct.snd_kcontrol** %11, align 8
  %54 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %11, align 8
  %55 = icmp ne %struct.snd_kcontrol* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %64

57:                                               ; preds = %48
  %58 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %11, align 8
  %59 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 16, i32* %60, align 8
  br label %61

61:                                               ; preds = %57
  %62 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %12, align 8
  %63 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %62, i32 1
  store %struct.snd_kcontrol_new* %63, %struct.snd_kcontrol_new** %12, align 8
  br label %43

64:                                               ; preds = %56, %43
  %65 = load i32, i32* @HDA_PCM_TYPE_HDMI, align 4
  %66 = load %struct.hda_bus*, %struct.hda_bus** %17, align 8
  %67 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %37, %31
  br label %69

69:                                               ; preds = %68, %30
  %70 = load %struct.hda_bus*, %struct.hda_bus** %17, align 8
  %71 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.hda_bus*, %struct.hda_bus** %17, align 8
  %77 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %69
  %79 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @find_empty_mixer_ctl_idx(%struct.hda_codec* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %86 = call i32 @codec_err(%struct.hda_codec* %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @EBUSY, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %156

89:                                               ; preds = %78
  %90 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %91 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %90, i32 0, i32 1
  %92 = call %struct.hda_spdif_out* @snd_array_new(%struct.TYPE_4__* %91)
  store %struct.hda_spdif_out* %92, %struct.hda_spdif_out** %16, align 8
  %93 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %16, align 8
  %94 = icmp ne %struct.hda_spdif_out* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %156

98:                                               ; preds = %89
  %99 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @dig_mixes, align 8
  store %struct.snd_kcontrol_new* %99, %struct.snd_kcontrol_new** %12, align 8
  br label %100

100:                                              ; preds = %135, %98
  %101 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %12, align 8
  %102 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %138

105:                                              ; preds = %100
  %106 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %12, align 8
  %107 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %108 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %106, %struct.hda_codec* %107)
  store %struct.snd_kcontrol* %108, %struct.snd_kcontrol** %11, align 8
  %109 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %11, align 8
  %110 = icmp ne %struct.snd_kcontrol* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %105
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %5, align 4
  br label %156

114:                                              ; preds = %105
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %11, align 8
  %117 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 8
  %119 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %120 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %122, 1
  %124 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %11, align 8
  %125 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %11, align 8
  %129 = call i32 @snd_hda_ctl_add(%struct.hda_codec* %126, i32 %127, %struct.snd_kcontrol* %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %114
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %5, align 4
  br label %156

134:                                              ; preds = %114
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %12, align 8
  %137 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %136, i32 1
  store %struct.snd_kcontrol_new* %137, %struct.snd_kcontrol_new** %12, align 8
  br label %100

138:                                              ; preds = %100
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %16, align 8
  %141 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  %142 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %143 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %142, i32 0, i32 0
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @AC_VERB_GET_DIGI_CONVERT_1, align 4
  %146 = call i32 @snd_hdac_regmap_read(i32* %143, i32 %144, i32 %145, i32* %14)
  %147 = load i32, i32* %14, align 4
  %148 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %16, align 8
  %149 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  %150 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %16, align 8
  %151 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @convert_to_spdif_status(i32 %152)
  %154 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %16, align 8
  %155 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  store i32 0, i32* %5, align 4
  br label %156

156:                                              ; preds = %138, %132, %111, %95, %84
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local %struct.snd_kcontrol* @find_mixer_ctl(%struct.hda_codec*, i64, i32, i32) #1

declare dso_local i32 @find_empty_mixer_ctl_idx(%struct.hda_codec*, i8*, i32) #1

declare dso_local i32 @codec_err(%struct.hda_codec*, i8*) #1

declare dso_local %struct.hda_spdif_out* @snd_array_new(%struct.TYPE_4__*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.hda_codec*) #1

declare dso_local i32 @snd_hda_ctl_add(%struct.hda_codec*, i32, %struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hdac_regmap_read(i32*, i32, i32, i32*) #1

declare dso_local i32 @convert_to_spdif_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
