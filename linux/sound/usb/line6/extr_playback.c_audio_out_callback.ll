; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_playback.c_audio_out_callback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_playback.c_audio_out_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.TYPE_9__*, i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.snd_line6_pcm = type { %struct.TYPE_10__, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, i32, i32, %struct.urb**, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@LINE6_ISO_PACKETS = common dso_local global i32 0, align 4
@LINE6_STREAM_PCM = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @audio_out_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_out_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.snd_line6_pcm*, align 8
  %9 = alloca %struct.snd_pcm_substream*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.urb*, %struct.urb** %2, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.snd_line6_pcm*
  store %struct.snd_line6_pcm* %15, %struct.snd_line6_pcm** %8, align 8
  %16 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %17 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %18 = call %struct.snd_pcm_substream* @get_substream(%struct.snd_line6_pcm* %16, i32 %17)
  store %struct.snd_pcm_substream* %18, %struct.snd_pcm_substream** %9, align 8
  %19 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %20 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %25 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %23, %29
  store i32 %30, i32* %10, align 4
  %31 = load %struct.urb*, %struct.urb** %2, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %35 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 8
  store i32 %33, i32* %36, align 8
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %58, %1
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %40 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %37
  %46 = load %struct.urb*, %struct.urb** %2, align 8
  %47 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %48 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 7
  %50 = load %struct.urb**, %struct.urb*** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.urb*, %struct.urb** %50, i64 %52
  %54 = load %struct.urb*, %struct.urb** %53, align 8
  %55 = icmp eq %struct.urb* %46, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %61

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %37

61:                                               ; preds = %56, %37
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %64 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %62, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %225

70:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %88, %70
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @LINE6_ISO_PACKETS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = load %struct.urb*, %struct.urb** %2, align 8
  %77 = getelementptr inbounds %struct.urb, %struct.urb* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %75
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %71

91:                                               ; preds = %71
  %92 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %93 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @spin_lock_irqsave(i32* %94, i64 %95)
  %97 = load i32, i32* @LINE6_STREAM_PCM, align 4
  %98 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %99 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 4
  %101 = call i64 @test_bit(i32 %97, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %134

103:                                              ; preds = %91
  %104 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %105 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %104, i32 0, i32 0
  %106 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %105, align 8
  store %struct.snd_pcm_runtime* %106, %struct.snd_pcm_runtime** %11, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %10, align 4
  %109 = sdiv i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %112 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, %110
  store i64 %115, i64* %113, align 8
  %116 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %117 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %121 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp sge i64 %119, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %103
  %125 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %126 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %129 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 %131, %127
  store i64 %132, i64* %130, align 8
  br label %133

133:                                              ; preds = %124, %103
  br label %134

134:                                              ; preds = %133, %91
  %135 = load i32, i32* %4, align 4
  %136 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %137 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 6
  %139 = call i32 @clear_bit(i32 %135, i32* %138)
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %158, %134
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* @LINE6_ISO_PACKETS, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %140
  %145 = load %struct.urb*, %struct.urb** %2, align 8
  %146 = getelementptr inbounds %struct.urb, %struct.urb* %145, i32 0, i32 0
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = load i32, i32* %3, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @EXDEV, align 4
  %154 = sub nsw i32 0, %153
  %155 = icmp eq i32 %152, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %144
  store i32 1, i32* %6, align 4
  br label %161

157:                                              ; preds = %144
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %3, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %3, align 4
  br label %140

161:                                              ; preds = %156, %140
  %162 = load i32, i32* %4, align 4
  %163 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %164 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 5
  %166 = call i64 @test_and_clear_bit(i32 %162, i32* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  store i32 1, i32* %6, align 4
  br label %169

169:                                              ; preds = %168, %161
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %219, label %172

172:                                              ; preds = %169
  %173 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %174 = call i32 @submit_audio_out_urb(%struct.snd_line6_pcm* %173)
  %175 = load i32, i32* @LINE6_STREAM_PCM, align 4
  %176 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %177 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 4
  %179 = call i64 @test_bit(i32 %175, i32* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %218

181:                                              ; preds = %172
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %184 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, %182
  store i32 %187, i32* %185, align 8
  %188 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %189 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %193 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = icmp sge i32 %191, %195
  br i1 %196, label %197, label %217

197:                                              ; preds = %181
  %198 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %199 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %203 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = srem i32 %205, %201
  store i32 %206, i32* %204, align 8
  %207 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %208 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 3
  %210 = call i32 @spin_unlock(i32* %209)
  %211 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %212 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %211)
  %213 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %214 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 3
  %216 = call i32 @spin_lock(i32* %215)
  br label %217

217:                                              ; preds = %197, %181
  br label %218

218:                                              ; preds = %217, %172
  br label %219

219:                                              ; preds = %218, %169
  %220 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %221 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 3
  %223 = load i64, i64* %7, align 8
  %224 = call i32 @spin_unlock_irqrestore(i32* %222, i64 %223)
  br label %225

225:                                              ; preds = %219, %69
  ret void
}

declare dso_local %struct.snd_pcm_substream* @get_substream(%struct.snd_line6_pcm*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @submit_audio_out_urb(%struct.snd_line6_pcm*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
