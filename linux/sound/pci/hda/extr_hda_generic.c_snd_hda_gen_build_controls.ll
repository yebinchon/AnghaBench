; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_build_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_build_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, %struct.TYPE_8__, i32, i32, i32, i32, i64, %struct.TYPE_9__, %struct.TYPE_7__**, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"Master Playback Volume\00", align 1
@slave_pfxs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Playback Volume\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Master Playback Switch\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Playback Switch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_gen_build_controls(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_gen_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  store %struct.hda_gen_spec* %8, %struct.hda_gen_spec** %4, align 8
  %9 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %10 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %16 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %17 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %16, i32 0, i32 9
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @snd_hda_add_new_ctls(%struct.hda_codec* %15, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %170

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %28 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %27, i32 0, i32 7
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %73

32:                                               ; preds = %26
  %33 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %34 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %35 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %39 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %43 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %42, i32 0, i32 8
  %44 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %44, i64 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @snd_hda_create_dig_out_ctls(%struct.hda_codec* %33, i64 %37, i64 %41, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %32
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %170

54:                                               ; preds = %32
  %55 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %56 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %54
  %60 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %61 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %62 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %61, i32 0, i32 7
  %63 = call i32 @snd_hda_create_spdif_share_sw(%struct.hda_codec* %60, %struct.TYPE_9__* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %170

68:                                               ; preds = %59
  %69 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %70 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %68, %54
  br label %73

73:                                               ; preds = %72, %26
  %74 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %75 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %80 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %81 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @snd_hda_create_spdif_in_ctls(%struct.hda_codec* %79, i64 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %170

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %73
  %90 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %91 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %115, label %94

94:                                               ; preds = %89
  %95 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %96 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %115, label %99

99:                                               ; preds = %94
  %100 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %101 = call i32 @snd_hda_find_mixer_ctl(%struct.hda_codec* %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %99
  %104 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %105 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %106 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @slave_pfxs, align 4
  %109 = call i32 @snd_hda_add_vmaster(%struct.hda_codec* %104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %108, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %170

114:                                              ; preds = %103
  br label %115

115:                                              ; preds = %114, %99, %94, %89
  %116 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %117 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %158, label %120

120:                                              ; preds = %115
  %121 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %122 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %158, label %125

125:                                              ; preds = %120
  %126 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %127 = call i32 @snd_hda_find_mixer_ctl(%struct.hda_codec* %126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %158, label %129

129:                                              ; preds = %125
  %130 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %131 = load i32, i32* @slave_pfxs, align 4
  %132 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %133 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = call i32 @__snd_hda_add_vmaster(%struct.hda_codec* %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %131, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 1, i32* %134)
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %5, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %129
  %139 = load i32, i32* %5, align 4
  store i32 %139, i32* %2, align 4
  br label %170

140:                                              ; preds = %129
  %141 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %142 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %140
  %147 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %148 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %149 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %148, i32 0, i32 1
  %150 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %151 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @snd_hda_add_vmaster_hook(%struct.hda_codec* %147, %struct.TYPE_8__* %149, i32 %152)
  %154 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %155 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %154, i32 0, i32 1
  %156 = call i32 @snd_hda_sync_vmaster_hook(%struct.TYPE_8__* %155)
  br label %157

157:                                              ; preds = %146, %140
  br label %158

158:                                              ; preds = %157, %125, %120, %115
  %159 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %160 = call i32 @free_kctls(%struct.hda_gen_spec* %159)
  %161 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %162 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %163 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %162, i32 0, i32 0
  %164 = call i32 @snd_hda_jack_add_kctls(%struct.hda_codec* %161, i32* %163)
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %158
  %168 = load i32, i32* %5, align 4
  store i32 %168, i32* %2, align 4
  br label %170

169:                                              ; preds = %158
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %169, %167, %138, %112, %86, %66, %52, %23
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @snd_hda_add_new_ctls(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_create_dig_out_ctls(%struct.hda_codec*, i64, i64, i32) #1

declare dso_local i32 @snd_hda_create_spdif_share_sw(%struct.hda_codec*, %struct.TYPE_9__*) #1

declare dso_local i32 @snd_hda_create_spdif_in_ctls(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_find_mixer_ctl(%struct.hda_codec*, i8*) #1

declare dso_local i32 @snd_hda_add_vmaster(%struct.hda_codec*, i8*, i32, i32, i8*) #1

declare dso_local i32 @__snd_hda_add_vmaster(%struct.hda_codec*, i8*, i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @snd_hda_add_vmaster_hook(%struct.hda_codec*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @snd_hda_sync_vmaster_hook(%struct.TYPE_8__*) #1

declare dso_local i32 @free_kctls(%struct.hda_gen_spec*) #1

declare dso_local i32 @snd_hda_jack_add_kctls(%struct.hda_codec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
