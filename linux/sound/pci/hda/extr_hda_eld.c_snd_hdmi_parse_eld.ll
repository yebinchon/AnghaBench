; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_eld.c_snd_hdmi_parse_eld.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_eld.c_snd_hdmi_parse_eld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.parsed_hdmi_eld = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i8*, i8*, i32 }

@ELD_VER_CEA_861D = common dso_local global i64 0, align 8
@ELD_VER_PARTIAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"HDMI: Unknown ELD version %d\0A\00", align 1
@ELD_MAX_MNL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"HDMI: MNL is reserved value %d\0A\00", align 1
@ELD_FIXED_BYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"HDMI: out of range MNL %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"HDMI: out of range SAD %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdmi_parse_eld(%struct.hda_codec* %0, %struct.parsed_hdmi_eld* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.parsed_hdmi_eld*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store %struct.parsed_hdmi_eld* %1, %struct.parsed_hdmi_eld** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %7, align 8
  %13 = call i32 @memset(%struct.parsed_hdmi_eld* %12, i32 0, i32 80)
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @GRAB_BITS(i8* %14, i32 0, i32 3, i32 5)
  %16 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %7, align 8
  %17 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %7, align 8
  %19 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @ELD_VER_CEA_861D, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %4
  %25 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %7, align 8
  %26 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @ELD_VER_PARTIAL, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %33 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %7, align 8
  %34 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @codec_info(%struct.hda_codec* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %170

37:                                               ; preds = %24, %4
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @GRAB_BITS(i8* %38, i32 2, i32 0, i32 8)
  %40 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %7, align 8
  %41 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @GRAB_BITS(i8* %42, i32 4, i32 0, i32 5)
  store i32 %43, i32* %10, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @GRAB_BITS(i8* %44, i32 4, i32 5, i32 3)
  %46 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %7, align 8
  %47 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @GRAB_BITS(i8* %48, i32 5, i32 0, i32 1)
  %50 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %7, align 8
  %51 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @GRAB_BITS(i8* %52, i32 5, i32 1, i32 1)
  %54 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %7, align 8
  %55 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @GRAB_BITS(i8* %56, i32 5, i32 2, i32 2)
  %58 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %7, align 8
  %59 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @GRAB_BITS(i8* %60, i32 5, i32 4, i32 4)
  %62 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %7, align 8
  %63 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @GRAB_BITS(i8* %64, i32 6, i32 0, i32 8)
  %66 = mul nsw i32 %65, 2
  %67 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %7, align 8
  %68 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @GRAB_BITS(i8* %69, i32 7, i32 0, i32 7)
  %71 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %7, align 8
  %72 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 8
  %75 = call i32 @get_unaligned_le64(i8* %74)
  %76 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %7, align 8
  %77 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %76, i32 0, i32 13
  store i32 %75, i32* %77, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 16
  %80 = call i8* @get_unaligned_le16(i8* %79)
  %81 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %7, align 8
  %82 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %81, i32 0, i32 12
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 18
  %85 = call i8* @get_unaligned_le16(i8* %84)
  %86 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %7, align 8
  %87 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %86, i32 0, i32 11
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @ELD_MAX_MNL, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %37
  %92 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @codec_info(%struct.hda_codec* %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %170

95:                                               ; preds = %37
  %96 = load i32, i32* @ELD_FIXED_BYTES, align 4
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* %9, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @codec_info(%struct.hda_codec* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %170

105:                                              ; preds = %95
  %106 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %7, align 8
  %107 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %106, i32 0, i32 10
  %108 = load i32, i32* %107, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = load i32, i32* @ELD_FIXED_BYTES, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  %115 = call i32 @strlcpy(i32 %108, i8* %112, i32 %114)
  br label %116

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116
  store i32 0, i32* %11, align 4
  br label %118

118:                                              ; preds = %158, %117
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %7, align 8
  %121 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %161

124:                                              ; preds = %118
  %125 = load i32, i32* @ELD_FIXED_BYTES, align 4
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  %130 = mul nsw i32 3, %129
  %131 = add nsw i32 %127, %130
  %132 = load i32, i32* %9, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %124
  %135 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @codec_info(%struct.hda_codec* %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %136)
  br label %170

138:                                              ; preds = %124
  %139 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %140 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %7, align 8
  %141 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %140, i32 0, i32 9
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %142, %144
  %146 = load i8*, i8** %8, align 8
  %147 = load i32, i32* @ELD_FIXED_BYTES, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i32, i32* %11, align 4
  %154 = mul nsw i32 3, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  %157 = call i32 @hdmi_update_short_audio_desc(%struct.hda_codec* %139, i64 %145, i8* %156)
  br label %158

158:                                              ; preds = %138
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %118

161:                                              ; preds = %118
  %162 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %7, align 8
  %163 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %161
  %167 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %7, align 8
  %168 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %167, i32 0, i32 8
  store i32 65535, i32* %168, align 8
  br label %169

169:                                              ; preds = %166, %161
  store i32 0, i32* %5, align 4
  br label %173

170:                                              ; preds = %134, %101, %91, %31
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %5, align 4
  br label %173

173:                                              ; preds = %170, %169
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i32 @memset(%struct.parsed_hdmi_eld*, i32, i32) #1

declare dso_local i32 @GRAB_BITS(i8*, i32, i32, i32) #1

declare dso_local i32 @codec_info(%struct.hda_codec*, i8*, i32) #1

declare dso_local i32 @get_unaligned_le64(i8*) #1

declare dso_local i8* @get_unaligned_le16(i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @hdmi_update_short_audio_desc(%struct.hda_codec*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
