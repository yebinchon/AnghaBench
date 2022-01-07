; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_playback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_substream = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i64, i64 }
%struct.pcm_urb = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.pcm_runtime = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SNDRV_PCM_FORMAT_S32_LE = common dso_local global i64 0, align 8
@SNDRV_PCM_FORMAT_S24_LE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Unknown sample format.\00", align 1
@PCM_N_PACKETS_PER_URB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcm_substream*, %struct.pcm_urb*)* @usb6fire_pcm_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb6fire_pcm_playback(%struct.pcm_substream* %0, %struct.pcm_urb* %1) #0 {
  %3 = alloca %struct.pcm_substream*, align 8
  %4 = alloca %struct.pcm_urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcm_runtime*, align 8
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.pcm_substream* %0, %struct.pcm_substream** %3, align 8
  store %struct.pcm_urb* %1, %struct.pcm_urb** %4, align 8
  %14 = load %struct.pcm_substream*, %struct.pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %14, i32 0, i32 2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = call %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.TYPE_8__* %16)
  store %struct.pcm_runtime* %17, %struct.pcm_runtime** %8, align 8
  %18 = load %struct.pcm_substream*, %struct.pcm_substream** %3, align 8
  %19 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %21, align 8
  store %struct.snd_pcm_runtime* %22, %struct.snd_pcm_runtime** %9, align 8
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.pcm_substream*, %struct.pcm_substream** %3, align 8
  %27 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %31, 3
  %33 = mul nsw i32 %28, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %25, %34
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %10, align 8
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = ashr i32 %45, 3
  %47 = mul nsw i32 %42, %46
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %39, %48
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %11, align 8
  %51 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = shl i32 %53, 2
  store i32 %54, i32* %13, align 4
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SNDRV_PCM_FORMAT_S32_LE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %2
  %61 = load %struct.pcm_urb*, %struct.pcm_urb** %4, align 8
  %62 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %12, align 8
  br label %88

67:                                               ; preds = %2
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SNDRV_PCM_FORMAT_S24_LE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.pcm_urb*, %struct.pcm_urb** %4, align 8
  %75 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i32*
  store i32* %78, i32** %12, align 8
  br label %87

79:                                               ; preds = %67
  %80 = load %struct.pcm_runtime*, %struct.pcm_runtime** %8, align 8
  %81 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = call i32 @dev_err(i32* %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %169

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87, %60
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %166, %88
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @PCM_N_PACKETS_PER_URB, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %169

93:                                               ; preds = %89
  %94 = load %struct.pcm_urb*, %struct.pcm_urb** %4, align 8
  %95 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %94, i32 0, i32 1
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %101, 4
  br i1 %102, label %103, label %118

103:                                              ; preds = %93
  %104 = load %struct.pcm_urb*, %struct.pcm_urb** %4, align 8
  %105 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %104, i32 0, i32 1
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, 4
  %113 = load %struct.pcm_runtime*, %struct.pcm_runtime** %8, align 8
  %114 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = shl i32 %115, 2
  %117 = sdiv i32 %112, %116
  store i32 %117, i32* %7, align 4
  br label %119

118:                                              ; preds = %93
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %118, %103
  %120 = load i32*, i32** %12, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %12, align 8
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %162, %119
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %165

126:                                              ; preds = %122
  %127 = load i32*, i32** %12, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @memcpy(i32* %127, i32* %128, i32 %129)
  %131 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %132 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32*, i32** %10, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32* %136, i32** %10, align 8
  %137 = load %struct.pcm_runtime*, %struct.pcm_runtime** %8, align 8
  %138 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32*, i32** %12, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32* %142, i32** %12, align 8
  %143 = load %struct.pcm_substream*, %struct.pcm_substream** %3, align 8
  %144 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  %147 = load %struct.pcm_substream*, %struct.pcm_substream** %3, align 8
  %148 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  %151 = load i32*, i32** %10, align 8
  %152 = load i32*, i32** %11, align 8
  %153 = icmp eq i32* %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %126
  %155 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %156 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to i32*
  store i32* %158, i32** %10, align 8
  %159 = load %struct.pcm_substream*, %struct.pcm_substream** %3, align 8
  %160 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %159, i32 0, i32 0
  store i32 0, i32* %160, align 8
  br label %161

161:                                              ; preds = %154, %126
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  br label %122

165:                                              ; preds = %122
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %5, align 4
  br label %89

169:                                              ; preds = %79, %89
  ret void
}

declare dso_local %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
