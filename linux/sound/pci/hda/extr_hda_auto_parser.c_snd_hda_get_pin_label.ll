; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_auto_parser.c_snd_hda_get_pin_label.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_auto_parser.c_snd_hda_get_pin_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.auto_pin_cfg = type { i32, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@AC_JACK_PORT_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"Line Out\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Headphone\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"SPDIF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_get_pin_label(%struct.hda_codec* %0, i32 %1, %struct.auto_pin_cfg* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hda_codec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.auto_pin_cfg*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.auto_pin_cfg* %2, %struct.auto_pin_cfg** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %20 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %20, i32 %21)
  store i32 %22, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32*, i32** %13, align 8
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %25, %6
  %28 = load i32, i32* %14, align 4
  %29 = call i64 @get_defcfg_connect(i32 %28)
  %30 = load i64, i64* @AC_JACK_PORT_NONE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %161

33:                                               ; preds = %27
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @get_defcfg_device(i32 %34)
  switch i32 %35, label %109 [
    i32 130, label %36
    i32 128, label %44
    i32 131, label %52
    i32 129, label %60
    i32 132, label %60
  ]

36:                                               ; preds = %33
  %37 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @fill_audio_out_name(%struct.hda_codec* %37, i32 %38, %struct.auto_pin_cfg* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %41, i32* %42)
  store i32 %43, i32* %7, align 4
  br label %161

44:                                               ; preds = %33
  %45 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %10, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @fill_audio_out_name(%struct.hda_codec* %45, i32 %46, %struct.auto_pin_cfg* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %48, i32 %49, i32* %50)
  store i32 %51, i32* %7, align 4
  br label %161

52:                                               ; preds = %33
  %53 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %10, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @fill_audio_out_name(%struct.hda_codec* %53, i32 %54, %struct.auto_pin_cfg* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %56, i32 %57, i32* %58)
  store i32 %59, i32* %7, align 4
  br label %161

60:                                               ; preds = %33, %33
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @is_hdmi_cfg(i32 %61)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  store i8* %66, i8** %15, align 8
  %67 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %10, align 8
  %68 = icmp ne %struct.auto_pin_cfg* %67, null
  br i1 %68, label %69, label %108

69:                                               ; preds = %60
  %70 = load i32*, i32** %13, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %108

72:                                               ; preds = %69
  store i32 0, i32* %16, align 4
  br label %73

73:                                               ; preds = %104, %72
  %74 = load i32, i32* %16, align 4
  %75 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %10, align 8
  %76 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %73
  %80 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %10, align 8
  %81 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %107

91:                                               ; preds = %79
  %92 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %93 = load i32, i32* %18, align 4
  %94 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %92, i32 %93)
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %19, align 4
  %97 = call i32 @is_hdmi_cfg(i32 %96)
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %99, %91
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %16, align 4
  br label %73

107:                                              ; preds = %90, %73
  br label %108

108:                                              ; preds = %107, %69, %60
  br label %152

109:                                              ; preds = %33
  %110 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %10, align 8
  %111 = icmp ne %struct.auto_pin_cfg* %110, null
  br i1 %111, label %112, label %144

112:                                              ; preds = %109
  store i32 0, i32* %16, align 4
  br label %113

113:                                              ; preds = %140, %112
  %114 = load i32, i32* %16, align 4
  %115 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %10, align 8
  %116 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %143

119:                                              ; preds = %113
  %120 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %10, align 8
  %121 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %120, i32 0, i32 2
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %119
  br label %140

131:                                              ; preds = %119
  %132 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %133 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %10, align 8
  %134 = load i32, i32* %16, align 4
  %135 = call i8* @hda_get_autocfg_input_label(%struct.hda_codec* %132, %struct.auto_pin_cfg* %133, i32 %134)
  store i8* %135, i8** %15, align 8
  %136 = load i8*, i8** %15, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  br label %143

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139, %130
  %141 = load i32, i32* %16, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %16, align 4
  br label %113

143:                                              ; preds = %138, %113
  br label %144

144:                                              ; preds = %143, %109
  %145 = load i8*, i8** %15, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %144
  %148 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %149 = load i32, i32* %9, align 4
  %150 = call i8* @hda_get_input_pin_label(%struct.hda_codec* %148, i32* null, i32 %149, i32 1)
  store i8* %150, i8** %15, align 8
  br label %151

151:                                              ; preds = %147, %144
  br label %152

152:                                              ; preds = %151, %108
  %153 = load i8*, i8** %15, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %152
  store i32 0, i32* %7, align 4
  br label %161

156:                                              ; preds = %152
  %157 = load i8*, i8** %11, align 8
  %158 = load i8*, i8** %15, align 8
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @strlcpy(i8* %157, i8* %158, i32 %159)
  store i32 1, i32* %7, align 4
  br label %161

161:                                              ; preds = %156, %155, %52, %44, %36, %32
  %162 = load i32, i32* %7, align 4
  ret i32 %162
}

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i32) #1

declare dso_local i64 @get_defcfg_connect(i32) #1

declare dso_local i32 @get_defcfg_device(i32) #1

declare dso_local i32 @fill_audio_out_name(%struct.hda_codec*, i32, %struct.auto_pin_cfg*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @is_hdmi_cfg(i32) #1

declare dso_local i8* @hda_get_autocfg_input_label(%struct.hda_codec*, %struct.auto_pin_cfg*, i32) #1

declare dso_local i8* @hda_get_input_pin_label(%struct.hda_codec*, i32*, i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
