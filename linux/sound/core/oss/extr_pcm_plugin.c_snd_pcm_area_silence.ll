; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_plugin.c_snd_pcm_area_silence.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_plugin.c_snd_pcm_area_silence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_channel_area = type { i8*, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_area_silence(%struct.snd_pcm_channel_area* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_channel_area*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_pcm_channel_area* %0, %struct.snd_pcm_channel_area** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %6, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %137

21:                                               ; preds = %4
  %22 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %6, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %6, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %6, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = mul i64 %30, %31
  %33 = add i64 %27, %32
  %34 = udiv i64 %33, 8
  %35 = getelementptr inbounds i8, i8* %24, i64 %34
  store i8* %35, i8** %10, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @snd_pcm_format_physical_width(i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %21
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %137

43:                                               ; preds = %21
  %44 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %6, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = zext i32 %47 to i64
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load i32, i32* %12, align 4
  %52 = icmp sge i32 %51, 8
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @snd_pcm_format_set_silence(i32 %54, i8* %55, i64 %56)
  store i32 %57, i32* %5, align 4
  br label %137

58:                                               ; preds = %50, %43
  %59 = load i32, i32* %9, align 4
  %60 = call i8* @snd_pcm_format_silence_64(i32 %59)
  store i8* %60, i8** %13, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %137

66:                                               ; preds = %58
  %67 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %6, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = udiv i64 %69, 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp eq i32 %72, 4
  br i1 %73, label %74, label %119

74:                                               ; preds = %66
  %75 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %6, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = urem i64 %77, 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %14, align 4
  %80 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %6, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = urem i64 %82, 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %117, %74
  %86 = load i64, i64* %8, align 8
  %87 = add i64 %86, -1
  store i64 %87, i64* %8, align 8
  %88 = icmp ugt i64 %86, 0
  br i1 %88, label %89, label %118

89:                                               ; preds = %85
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i8*, i8** %10, align 8
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %95, 240
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %93, align 1
  br label %104

98:                                               ; preds = %89
  %99 = load i8*, i8** %10, align 8
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = and i32 %101, 15
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %99, align 1
  br label %104

104:                                              ; preds = %98, %92
  %105 = load i32, i32* %11, align 4
  %106 = load i8*, i8** %10, align 8
  %107 = zext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %10, align 8
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp eq i32 %112, 8
  br i1 %113, label %114, label %117

114:                                              ; preds = %104
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %10, align 8
  store i32 0, i32* %14, align 4
  br label %117

117:                                              ; preds = %114, %104
  br label %85

118:                                              ; preds = %85
  br label %136

119:                                              ; preds = %66
  %120 = load i32, i32* %12, align 4
  %121 = sdiv i32 %120, 8
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %126, %119
  %123 = load i64, i64* %8, align 8
  %124 = add i64 %123, -1
  store i64 %124, i64* %8, align 8
  %125 = icmp ugt i64 %123, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = load i8*, i8** %10, align 8
  %128 = load i8*, i8** %13, align 8
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @memcpy(i8* %127, i8* %128, i32 %129)
  %131 = load i32, i32* %11, align 4
  %132 = load i8*, i8** %10, align 8
  %133 = zext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8* %134, i8** %10, align 8
  br label %122

135:                                              ; preds = %122
  br label %136

136:                                              ; preds = %135, %118
  store i32 0, i32* %5, align 4
  br label %137

137:                                              ; preds = %136, %63, %53, %40, %20
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i32 @snd_pcm_format_set_silence(i32, i8*, i64) #1

declare dso_local i8* @snd_pcm_format_silence_64(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
