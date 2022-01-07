; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i64, i64, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_10__, i32, i32, %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.snd_pcm_status = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SNDRV_PCM_AUDIO_TSTAMP_TYPE_COMPAT = common dso_local global i64 0, align 8
@SNDRV_PCM_INFO_HAS_WALL_CLOCK = common dso_local global i32 0, align 4
@SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK = common dso_local global i64 0, align 8
@SNDRV_PCM_AUDIO_TSTAMP_TYPE_DEFAULT = common dso_local global i64 0, align 8
@SNDRV_PCM_STATE_OPEN = common dso_local global i32 0, align 4
@SNDRV_PCM_TSTAMP_ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_status(%struct.snd_pcm_substream* %0, %struct.snd_pcm_status* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_status*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_status* %1, %struct.snd_pcm_status** %4, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 0
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  store %struct.snd_pcm_runtime* %8, %struct.snd_pcm_runtime** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream* %9)
  %11 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %14, i32 0, i32 8
  %16 = call i32 @snd_pcm_unpack_audio_tstamp_config(i32 %13, %struct.TYPE_9__* %15)
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SNDRV_PCM_AUDIO_TSTAMP_TYPE_COMPAT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %2
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 9
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SNDRV_PCM_INFO_HAS_WALL_CLOCK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load i64, i64* @SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK, align 8
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  br label %41

36:                                               ; preds = %23
  %37 = load i64, i64* @SNDRV_PCM_AUDIO_TSTAMP_TYPE_DEFAULT, align 8
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  br label %49

45:                                               ; preds = %2
  %46 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 3
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %55, i32 0, i32 12
  store i32 %54, i32* %56, align 8
  %57 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %58 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %57, i32 0, i32 3
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %62, i32 0, i32 13
  store i32 %61, i32* %63, align 4
  %64 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %64, i32 0, i32 12
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SNDRV_PCM_STATE_OPEN, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %49
  br label %179

70:                                               ; preds = %49
  %71 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %74, i32 0, i32 11
  store i32 %73, i32* %75, align 4
  %76 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %77 = call i64 @snd_pcm_running(%struct.snd_pcm_substream* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %122

79:                                               ; preds = %70
  %80 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %81 = call i32 @snd_pcm_update_hw_ptr(%struct.snd_pcm_substream* %80)
  %82 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %83 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SNDRV_PCM_TSTAMP_ENABLE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %121

87:                                               ; preds = %79
  %88 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %89 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %88, i32 0, i32 3
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %94 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 8
  %95 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %96 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %99 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %98, i32 0, i32 10
  store i32 %97, i32* %99, align 8
  %100 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %100, i32 0, i32 3
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %106 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %105, i32 0, i32 9
  store i32 %104, i32* %106, align 4
  %107 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %108 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %120

112:                                              ; preds = %87
  %113 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %114 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %113, i32 0, i32 8
  %115 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %116 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %115, i32 0, i32 7
  %117 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %118 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %117, i32 0, i32 5
  %119 = call i32 @snd_pcm_pack_audio_tstamp_report(i32* %114, i32* %116, %struct.TYPE_10__* %118)
  br label %120

120:                                              ; preds = %112, %87
  br label %135

121:                                              ; preds = %79
  br label %134

122:                                              ; preds = %70
  %123 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %124 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @SNDRV_PCM_TSTAMP_ENABLE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %130 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %131 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %130, i32 0, i32 6
  %132 = call i32 @snd_pcm_gettime(%struct.snd_pcm_runtime* %129, i32* %131)
  br label %133

133:                                              ; preds = %128, %122
  br label %134

134:                                              ; preds = %133, %121
  br label %135

135:                                              ; preds = %134, %120
  %136 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %137 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %136, i32 0, i32 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %142 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 4
  %143 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %144 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %143, i32 0, i32 3
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %149 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  %150 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %151 = call i32 @snd_pcm_avail(%struct.snd_pcm_substream* %150)
  %152 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %153 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 4
  %154 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %155 = call i64 @snd_pcm_running(%struct.snd_pcm_substream* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %135
  %158 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %159 = call i32 @snd_pcm_calc_delay(%struct.snd_pcm_substream* %158)
  br label %161

160:                                              ; preds = %135
  br label %161

161:                                              ; preds = %160, %157
  %162 = phi i32 [ %159, %157 ], [ 0, %160 ]
  %163 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %164 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %166 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %169 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %168, i32 0, i32 1
  store i64 %167, i64* %169, align 8
  %170 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %171 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %174 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  %175 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %176 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %175, i32 0, i32 2
  store i64 0, i64* %176, align 8
  %177 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %178 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %177, i32 0, i32 1
  store i64 0, i64* %178, align 8
  br label %179

179:                                              ; preds = %161, %69
  %180 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %181 = call i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream* %180)
  ret i32 0
}

declare dso_local i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_unpack_audio_tstamp_config(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @snd_pcm_running(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_update_hw_ptr(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_pack_audio_tstamp_report(i32*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @snd_pcm_gettime(%struct.snd_pcm_runtime*, i32*) #1

declare dso_local i32 @snd_pcm_avail(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_calc_delay(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
