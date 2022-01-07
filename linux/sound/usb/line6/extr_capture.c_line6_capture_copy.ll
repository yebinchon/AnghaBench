; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_capture.c_line6_capture_copy.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_capture.c_line6_capture_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_line6_pcm = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"driver bug: len = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @line6_capture_copy(%struct.snd_line6_pcm* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_line6_pcm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_line6_pcm* %0, %struct.snd_line6_pcm** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %13 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %14 = call %struct.snd_pcm_substream* @get_substream(%struct.snd_line6_pcm* %12, i32 %13)
  store %struct.snd_pcm_substream* %14, %struct.snd_pcm_substream** %7, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  store %struct.snd_pcm_runtime* %17, %struct.snd_pcm_runtime** %8, align 8
  %18 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %19 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %24 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %22, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sdiv i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %34 = icmp eq %struct.snd_pcm_runtime* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  br label %138

36:                                               ; preds = %3
  %37 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %38 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %40, %41
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %47, label %99

47:                                               ; preds = %36
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %52 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %50, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %47
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %63 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %61, %68
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 %71, %72
  %74 = call i32 @memcpy(i64 %69, i8* %70, i32 %73)
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %9, align 4
  %81 = mul nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %78, i64 %82
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = sub nsw i32 %84, %85
  %87 = load i32, i32* %9, align 4
  %88 = mul nsw i32 %86, %87
  %89 = call i32 @memcpy(i64 %77, i8* %83, i32 %88)
  br label %98

90:                                               ; preds = %47
  %91 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %92 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %90, %58
  br label %114

99:                                               ; preds = %36
  %100 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %104 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = mul nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %102, %109
  %111 = load i8*, i8** %5, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @memcpy(i64 %110, i8* %111, i32 %112)
  br label %114

114:                                              ; preds = %99, %98
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %117 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, %115
  store i32 %120, i32* %118, align 8
  %121 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %122 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %126 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp sge i32 %124, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %114
  %130 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %131 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %134 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 %136, %132
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %35, %129, %114
  ret void
}

declare dso_local %struct.snd_pcm_substream* @get_substream(%struct.snd_line6_pcm*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
