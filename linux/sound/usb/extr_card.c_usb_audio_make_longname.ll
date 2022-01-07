; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_card.c_usb_audio_make_longname.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_card.c_usb_audio_make_longname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.snd_usb_audio = type { %struct.snd_card* }
%struct.snd_card = type { i8*, i64* }
%struct.snd_usb_audio_quirk = type { i64*, i64* }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" at \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c", low speed\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c", full speed\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c", high speed\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c", super speed\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c", super speed plus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.snd_usb_audio*, %struct.snd_usb_audio_quirk*)* @usb_audio_make_longname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_audio_make_longname(%struct.usb_device* %0, %struct.snd_usb_audio* %1, %struct.snd_usb_audio_quirk* %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.snd_usb_audio*, align 8
  %6 = alloca %struct.snd_usb_audio_quirk*, align 8
  %7 = alloca %struct.snd_card*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.snd_usb_audio* %1, %struct.snd_usb_audio** %5, align 8
  store %struct.snd_usb_audio_quirk* %2, %struct.snd_usb_audio_quirk** %6, align 8
  %9 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %5, align 8
  %10 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %9, i32 0, i32 0
  %11 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  store %struct.snd_card* %11, %struct.snd_card** %7, align 8
  %12 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %6, align 8
  %13 = icmp ne %struct.snd_usb_audio_quirk* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %3
  %15 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %6, align 8
  %16 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %6, align 8
  %21 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %27 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %6, align 8
  %30 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = call i32 @strlcpy(i64* %28, i64* %31, i32 8)
  br label %149

33:                                               ; preds = %19, %14, %3
  %34 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %6, align 8
  %35 = icmp ne %struct.snd_usb_audio_quirk* %34, null
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %6, align 8
  %38 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %6, align 8
  %43 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %49 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %6, align 8
  %52 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = call i32 @strlcpy(i64* %50, i64* %53, i32 8)
  store i32 %54, i32* %8, align 4
  br label %73

55:                                               ; preds = %41, %36, %33
  %56 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %57 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %63 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %64 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %68 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = call i32 @usb_string(%struct.usb_device* %62, i64 %66, i64* %69, i32 8)
  store i32 %70, i32* %8, align 4
  br label %72

71:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %71, %61
  br label %73

73:                                               ; preds = %72, %47
  %74 = load i32, i32* %8, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %73
  %77 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %78 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = call i32 @strim(i64* %79)
  %81 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %82 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %76
  %87 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %88 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = call i32 @strlcat(i64* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 8)
  br label %91

91:                                               ; preds = %86, %76
  br label %92

92:                                               ; preds = %91, %73
  %93 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %94 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %97 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @strlcat(i64* %95, i8* %98, i32 8)
  %100 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %101 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = call i32 @strlcat(i64* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 8)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp ult i64 %105, 8
  br i1 %106, label %107, label %120

107:                                              ; preds = %92
  %108 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %109 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %110 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = sub i64 8, %116
  %118 = trunc i64 %117 to i32
  %119 = call i32 @usb_make_path(%struct.usb_device* %108, i64* %114, i32 %118)
  br label %120

120:                                              ; preds = %107, %92
  %121 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %122 = call i32 @snd_usb_get_speed(%struct.usb_device* %121)
  switch i32 %122, label %148 [
    i32 130, label %123
    i32 132, label %128
    i32 131, label %133
    i32 129, label %138
    i32 128, label %143
  ]

123:                                              ; preds = %120
  %124 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %125 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %124, i32 0, i32 1
  %126 = load i64*, i64** %125, align 8
  %127 = call i32 @strlcat(i64* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 8)
  br label %149

128:                                              ; preds = %120
  %129 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %130 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %129, i32 0, i32 1
  %131 = load i64*, i64** %130, align 8
  %132 = call i32 @strlcat(i64* %131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 8)
  br label %149

133:                                              ; preds = %120
  %134 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %135 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = call i32 @strlcat(i64* %136, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 8)
  br label %149

138:                                              ; preds = %120
  %139 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %140 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %139, i32 0, i32 1
  %141 = load i64*, i64** %140, align 8
  %142 = call i32 @strlcat(i64* %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 8)
  br label %149

143:                                              ; preds = %120
  %144 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %145 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %144, i32 0, i32 1
  %146 = load i64*, i64** %145, align 8
  %147 = call i32 @strlcat(i64* %146, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 8)
  br label %149

148:                                              ; preds = %120
  br label %149

149:                                              ; preds = %25, %148, %143, %138, %133, %128, %123
  ret void
}

declare dso_local i32 @strlcpy(i64*, i64*, i32) #1

declare dso_local i32 @usb_string(%struct.usb_device*, i64, i64*, i32) #1

declare dso_local i32 @strim(i64*) #1

declare dso_local i32 @strlcat(i64*, i8*, i32) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i64*, i32) #1

declare dso_local i32 @snd_usb_get_speed(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
