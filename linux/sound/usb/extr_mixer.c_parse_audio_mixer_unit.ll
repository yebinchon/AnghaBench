; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_parse_audio_mixer_unit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_parse_audio_mixer_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_build = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.uac_mixer_unit_descriptor = type { i32, i32* }
%struct.usb_audio_term = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"invalid MIXER UNIT descriptor %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixer_build*, i32, i8*)* @parse_audio_mixer_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_audio_mixer_unit(%struct.mixer_build* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mixer_build*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.uac_mixer_unit_descriptor*, align 8
  %9 = alloca %struct.usb_audio_term, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.mixer_build* %0, %struct.mixer_build** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.uac_mixer_unit_descriptor*
  store %struct.uac_mixer_unit_descriptor* %20, %struct.uac_mixer_unit_descriptor** %8, align 8
  %21 = load %struct.mixer_build*, %struct.mixer_build** %5, align 8
  %22 = load %struct.uac_mixer_unit_descriptor*, %struct.uac_mixer_unit_descriptor** %8, align 8
  %23 = call i32 @uac_mixer_unit_get_channels(%struct.mixer_build* %21, %struct.uac_mixer_unit_descriptor* %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load %struct.mixer_build*, %struct.mixer_build** %5, align 8
  %28 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @usb_audio_err(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %4, align 4
  br label %140

33:                                               ; preds = %3
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %12, align 4
  %35 = load %struct.uac_mixer_unit_descriptor*, %struct.uac_mixer_unit_descriptor** %8, align 8
  %36 = getelementptr inbounds %struct.uac_mixer_unit_descriptor, %struct.uac_mixer_unit_descriptor* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %136, %33
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %139

42:                                               ; preds = %38
  %43 = load %struct.mixer_build*, %struct.mixer_build** %5, align 8
  %44 = load %struct.uac_mixer_unit_descriptor*, %struct.uac_mixer_unit_descriptor** %8, align 8
  %45 = getelementptr inbounds %struct.uac_mixer_unit_descriptor, %struct.uac_mixer_unit_descriptor* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @parse_audio_unit(%struct.mixer_build* %43, i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %136

55:                                               ; preds = %42
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  br label %136

59:                                               ; preds = %55
  %60 = load %struct.mixer_build*, %struct.mixer_build** %5, align 8
  %61 = load %struct.uac_mixer_unit_descriptor*, %struct.uac_mixer_unit_descriptor** %8, align 8
  %62 = getelementptr inbounds %struct.uac_mixer_unit_descriptor, %struct.uac_mixer_unit_descriptor* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @check_input_term(%struct.mixer_build* %60, i32 %67, %struct.usb_audio_term* %9)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = load i32, i32* %15, align 4
  store i32 %72, i32* %4, align 4
  br label %140

73:                                               ; preds = %59
  %74 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %9, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %11, align 4
  %80 = load %struct.uac_mixer_unit_descriptor*, %struct.uac_mixer_unit_descriptor** %8, align 8
  %81 = load %struct.mixer_build*, %struct.mixer_build** %5, align 8
  %82 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i64 @mixer_bitmap_overflow(%struct.uac_mixer_unit_descriptor* %80, i32 %85, i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %73
  br label %139

91:                                               ; preds = %73
  br label %92

92:                                               ; preds = %132, %91
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %135

96:                                               ; preds = %92
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %97

97:                                               ; preds = %117, %96
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %97
  %102 = load %struct.uac_mixer_unit_descriptor*, %struct.uac_mixer_unit_descriptor** %8, align 8
  %103 = load %struct.mixer_build*, %struct.mixer_build** %5, align 8
  %104 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32* @uac_mixer_unit_bmControls(%struct.uac_mixer_unit_descriptor* %102, i32 %107)
  store i32* %108, i32** %18, align 8
  %109 = load i32*, i32** %18, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %12, align 4
  %113 = call i64 @check_matrix_bitmap(i32* %109, i32 %110, i32 %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %101
  store i32 1, i32* %17, align 4
  br label %120

116:                                              ; preds = %101
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %16, align 4
  br label %97

120:                                              ; preds = %115, %97
  %121 = load i32, i32* %17, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load %struct.mixer_build*, %struct.mixer_build** %5, align 8
  %125 = load %struct.uac_mixer_unit_descriptor*, %struct.uac_mixer_unit_descriptor** %8, align 8
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @build_mixer_unit_ctl(%struct.mixer_build* %124, %struct.uac_mixer_unit_descriptor* %125, i32 %126, i32 %127, i32 %128, i32 %129, %struct.usb_audio_term* %9)
  br label %131

131:                                              ; preds = %123, %120
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %14, align 4
  br label %92

135:                                              ; preds = %92
  br label %136

136:                                              ; preds = %135, %58, %54
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %13, align 4
  br label %38

139:                                              ; preds = %90, %38
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %139, %71, %26
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @uac_mixer_unit_get_channels(%struct.mixer_build*, %struct.uac_mixer_unit_descriptor*) #1

declare dso_local i32 @usb_audio_err(i32, i8*, i32) #1

declare dso_local i32 @parse_audio_unit(%struct.mixer_build*, i32) #1

declare dso_local i32 @check_input_term(%struct.mixer_build*, i32, %struct.usb_audio_term*) #1

declare dso_local i64 @mixer_bitmap_overflow(%struct.uac_mixer_unit_descriptor*, i32, i32, i32) #1

declare dso_local i32* @uac_mixer_unit_bmControls(%struct.uac_mixer_unit_descriptor*, i32) #1

declare dso_local i64 @check_matrix_bitmap(i32*, i32, i32, i32) #1

declare dso_local i32 @build_mixer_unit_ctl(%struct.mixer_build*, %struct.uac_mixer_unit_descriptor*, i32, i32, i32, i32, %struct.usb_audio_term*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
