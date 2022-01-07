; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_format.c_parse_uac2_sample_rate_range.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_format.c_parse_uac2_sample_rate_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32 }
%struct.audioformat = type { i32, i32, i32, i32* }

@SNDRV_PCM_RATE_CONTINUOUS = common dso_local global i32 0, align 4
@MAX_NR_RATES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid uac2 rates\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, %struct.audioformat*, i32, i8*)* @parse_uac2_sample_rate_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_uac2_sample_rate_range(%struct.snd_usb_audio* %0, %struct.audioformat* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_audio*, align 8
  %7 = alloca %struct.audioformat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %6, align 8
  store %struct.audioformat* %1, %struct.audioformat** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %17 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %16, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %19 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %21 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %148, %4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %151

26:                                               ; preds = %22
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = mul nsw i32 12, %28
  %30 = add nsw i32 2, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %27, i64 %31
  %33 = call i32 @combine_quad(i8* %32)
  store i32 %33, i32* %12, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = mul nsw i32 12, %35
  %37 = add nsw i32 6, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %34, i64 %38
  %40 = call i32 @combine_quad(i8* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = mul nsw i32 12, %42
  %44 = add nsw i32 10, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = call i32 @combine_quad(i8* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %26
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %53, %50, %26
  br label %148

61:                                               ; preds = %56
  %62 = load i32, i32* %14, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %67 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %70 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @SNDRV_PCM_RATE_CONTINUOUS, align 4
  %72 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %73 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  store i32 0, i32* %5, align 4
  br label %153

74:                                               ; preds = %61
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %15, align 4
  br label %76

76:                                               ; preds = %143, %74
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp ule i32 %77, %78
  br i1 %79, label %80, label %147

80:                                               ; preds = %76
  %81 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %82 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load i32, i32* %15, align 4
  %87 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %88 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  br label %93

93:                                               ; preds = %85, %80
  %94 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %95 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i32, i32* %15, align 4
  %100 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %101 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ult i32 %99, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %98, %93
  %105 = load i32, i32* %15, align 4
  %106 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %107 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %104, %98
  %109 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %110 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load i32, i32* %15, align 4
  %115 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %116 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp ugt i32 %114, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113, %108
  %120 = load i32, i32* %15, align 4
  %121 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %122 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %119, %113
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @snd_pcm_rate_to_rate_bit(i32 %124)
  %126 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %127 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @MAX_NR_RATES, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %123
  %136 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %137 = call i32 @usb_audio_err(%struct.snd_usb_audio* %136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %147

138:                                              ; preds = %123
  %139 = load i32, i32* %14, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %147

142:                                              ; preds = %138
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* %15, align 4
  %146 = add i32 %145, %144
  store i32 %146, i32* %15, align 4
  br label %76

147:                                              ; preds = %141, %135, %76
  br label %148

148:                                              ; preds = %147, %60
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %22

151:                                              ; preds = %22
  %152 = load i32, i32* %11, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %151, %64
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @combine_quad(i8*) #1

declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32) #1

declare dso_local i32 @usb_audio_err(%struct.snd_usb_audio*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
