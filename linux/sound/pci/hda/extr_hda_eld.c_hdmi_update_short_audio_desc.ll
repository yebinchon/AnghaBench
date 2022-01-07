; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_eld.c_hdmi_update_short_audio_desc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_eld.c_hdmi_update_short_audio_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.cea_sad = type { i32, i32, i8*, i64, i8*, i32 }

@cea_sampling_frequencies = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"HDMI: audio coding type 0 not expected\0A\00", align 1
@cea_sample_sizes = common dso_local global i64* null, align 8
@AUDIO_CODING_XTYPE_HE_REF_CT = common dso_local global i32 0, align 4
@AUDIO_CODING_XTYPE_FIRST_RESERVED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"HDMI: audio coding xtype %d not expected\0A\00", align 1
@AUDIO_CODING_TYPE_HE_AAC = common dso_local global i32 0, align 4
@AUDIO_CODING_XTYPE_HE_AAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.cea_sad*, i8*)* @hdmi_update_short_audio_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_update_short_audio_desc(%struct.hda_codec* %0, %struct.cea_sad* %1, i8* %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.cea_sad*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.cea_sad* %1, %struct.cea_sad** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i8* @GRAB_BITS(i8* %9, i32 1, i32 0, i32 7)
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* %8, align 4
  %12 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %13 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %12, i32 0, i32 5
  store i32 0, i32* %13, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %35, %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 7
  br i1 %16, label %17, label %38

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load i32*, i32** @cea_sampling_frequencies, align 8
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %31 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %23, %17
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %14

38:                                               ; preds = %14
  %39 = load i8*, i8** %6, align 8
  %40 = call i8* @GRAB_BITS(i8* %39, i32 0, i32 0, i32 3)
  %41 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %42 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %44 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %44, align 8
  %47 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %48 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %50 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i8* @GRAB_BITS(i8* %51, i32 0, i32 3, i32 4)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %55 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %57 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %145 [
    i32 130, label %59
    i32 136, label %62
    i32 142, label %91
    i32 133, label %91
    i32 134, label %91
    i32 132, label %91
    i32 143, label %91
    i32 139, label %91
    i32 141, label %91
    i32 129, label %101
    i32 137, label %102
    i32 138, label %103
    i32 135, label %104
    i32 140, label %105
    i32 128, label %106
    i32 131, label %111
  ]

59:                                               ; preds = %38
  %60 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %61 = call i32 (%struct.hda_codec*, i8*, ...) @codec_info(%struct.hda_codec* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %145

62:                                               ; preds = %38
  %63 = load i8*, i8** %6, align 8
  %64 = call i8* @GRAB_BITS(i8* %63, i32 2, i32 0, i32 3)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %87, %62
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 3
  br i1 %68, label %69, label %90

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = shl i32 1, %71
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load i64*, i64** @cea_sample_sizes, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %83 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = or i64 %84, %81
  store i64 %85, i64* %83, align 8
  br label %86

86:                                               ; preds = %75, %69
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %66

90:                                               ; preds = %66
  br label %145

91:                                               ; preds = %38, %38, %38, %38, %38, %38, %38
  %92 = load i8*, i8** %6, align 8
  %93 = call i8* @GRAB_BITS(i8* %92, i32 2, i32 0, i32 8)
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %96 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %98 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 %99, 8000
  store i32 %100, i32* %98, align 8
  br label %145

101:                                              ; preds = %38
  br label %145

102:                                              ; preds = %38
  br label %145

103:                                              ; preds = %38
  br label %145

104:                                              ; preds = %38
  br label %145

105:                                              ; preds = %38
  br label %145

106:                                              ; preds = %38
  %107 = load i8*, i8** %6, align 8
  %108 = call i8* @GRAB_BITS(i8* %107, i32 2, i32 0, i32 3)
  %109 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %110 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  br label %145

111:                                              ; preds = %38
  %112 = load i8*, i8** %6, align 8
  %113 = call i8* @GRAB_BITS(i8* %112, i32 2, i32 3, i32 5)
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %116 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %118 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @AUDIO_CODING_XTYPE_HE_REF_CT, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %111
  %123 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %124 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @AUDIO_CODING_XTYPE_FIRST_RESERVED, align 4
  %127 = icmp sge i32 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %122, %111
  %129 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %130 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %131 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (%struct.hda_codec*, i8*, ...) @codec_info(%struct.hda_codec* %129, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  %134 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %135 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %134, i32 0, i32 1
  store i32 0, i32* %135, align 4
  br label %144

136:                                              ; preds = %122
  %137 = load i32, i32* @AUDIO_CODING_TYPE_HE_AAC, align 4
  %138 = load i32, i32* @AUDIO_CODING_XTYPE_HE_AAC, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %141 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %136, %128
  br label %145

145:                                              ; preds = %38, %144, %106, %105, %104, %103, %102, %101, %91, %90, %59
  ret void
}

declare dso_local i8* @GRAB_BITS(i8*, i32, i32, i32) #1

declare dso_local i32 @codec_info(%struct.hda_codec*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
