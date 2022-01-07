; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_capture.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_substream = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i64, i64 }
%struct.pcm_urb = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.pcm_runtime = type { i32 }

@PCM_N_PACKETS_PER_URB = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_S24_LE = common dso_local global i64 0, align 8
@SNDRV_PCM_FORMAT_S32_LE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcm_substream*, %struct.pcm_urb*)* @usb6fire_pcm_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb6fire_pcm_capture(%struct.pcm_substream* %0, %struct.pcm_urb* %1) #0 {
  %3 = alloca %struct.pcm_substream*, align 8
  %4 = alloca %struct.pcm_urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pcm_runtime*, align 8
  %10 = alloca %struct.snd_pcm_runtime*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.pcm_substream* %0, %struct.pcm_substream** %3, align 8
  store %struct.pcm_urb* %1, %struct.pcm_urb** %4, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.pcm_substream*, %struct.pcm_substream** %3, align 8
  %16 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.TYPE_4__* %17)
  store %struct.pcm_runtime* %18, %struct.pcm_runtime** %9, align 8
  %19 = load %struct.pcm_substream*, %struct.pcm_substream** %3, align 8
  %20 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %22, align 8
  store %struct.snd_pcm_runtime* %23, %struct.snd_pcm_runtime** %10, align 8
  store i32* null, i32** %11, align 8
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.pcm_substream*, %struct.pcm_substream** %3, align 8
  %28 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %32, 3
  %34 = mul nsw i32 %29, %33
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %26, %35
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %12, align 8
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = ashr i32 %46, 3
  %48 = mul nsw i32 %43, %47
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %40, %49
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %13, align 8
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 %54, 2
  store i32 %55, i32* %14, align 4
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %176, %2
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @PCM_N_PACKETS_PER_URB, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %179

60:                                               ; preds = %56
  %61 = load %struct.pcm_urb*, %struct.pcm_urb** %4, align 8
  %62 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 4
  br i1 %69, label %70, label %85

70:                                               ; preds = %60
  %71 = load %struct.pcm_urb*, %struct.pcm_urb** %4, align 8
  %72 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 4
  %80 = load %struct.pcm_runtime*, %struct.pcm_runtime** %9, align 8
  %81 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 2
  %84 = sdiv i32 %79, %83
  store i32 %84, i32* %7, align 4
  br label %86

85:                                               ; preds = %60
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %85, %70
  %87 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %88 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SNDRV_PCM_FORMAT_S24_LE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %86
  %93 = load %struct.pcm_urb*, %struct.pcm_urb** %4, align 8
  %94 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = add i32 %95, %96
  %98 = zext i32 %97 to i64
  %99 = inttoptr i64 %98 to i32*
  store i32* %99, i32** %11, align 8
  br label %117

100:                                              ; preds = %86
  %101 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %102 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SNDRV_PCM_FORMAT_S32_LE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load %struct.pcm_urb*, %struct.pcm_urb** %4, align 8
  %108 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sub i32 %109, 1
  %111 = load i32, i32* %8, align 4
  %112 = add i32 %110, %111
  %113 = zext i32 %112 to i64
  %114 = inttoptr i64 %113 to i32*
  store i32* %114, i32** %11, align 8
  br label %116

115:                                              ; preds = %100
  br label %179

116:                                              ; preds = %106
  br label %117

117:                                              ; preds = %116, %92
  %118 = load i32*, i32** %11, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %11, align 8
  %120 = load %struct.pcm_urb*, %struct.pcm_urb** %4, align 8
  %121 = getelementptr inbounds %struct.pcm_urb, %struct.pcm_urb* %120, i32 0, i32 1
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = zext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %172, %117
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %175

136:                                              ; preds = %132
  %137 = load i32*, i32** %12, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @memcpy(i32* %137, i32* %138, i32 %139)
  %141 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %142 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32*, i32** %12, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32* %146, i32** %12, align 8
  %147 = load %struct.pcm_runtime*, %struct.pcm_runtime** %9, align 8
  %148 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %11, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32* %152, i32** %11, align 8
  %153 = load %struct.pcm_substream*, %struct.pcm_substream** %3, align 8
  %154 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 8
  %157 = load %struct.pcm_substream*, %struct.pcm_substream** %3, align 8
  %158 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  %161 = load i32*, i32** %12, align 8
  %162 = load i32*, i32** %13, align 8
  %163 = icmp eq i32* %161, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %136
  %165 = load %struct.pcm_substream*, %struct.pcm_substream** %3, align 8
  %166 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %165, i32 0, i32 0
  store i32 0, i32* %166, align 8
  %167 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %168 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i32*
  store i32* %170, i32** %12, align 8
  br label %171

171:                                              ; preds = %164, %136
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %6, align 4
  br label %132

175:                                              ; preds = %132
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %5, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %5, align 4
  br label %56

179:                                              ; preds = %115, %56
  ret void
}

declare dso_local %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
