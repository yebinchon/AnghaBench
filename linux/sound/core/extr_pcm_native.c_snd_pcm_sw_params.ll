; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_sw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_sw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.snd_pcm_sw_params = type { i64, i64, i64, i64, i64, i64, i64, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_OPEN = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@SNDRV_PCM_TSTAMP_LAST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_TSTAMP_TYPE_LAST = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_sw_params*)* @snd_pcm_sw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_sw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_sw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_sw_params*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_sw_params* %1, %struct.snd_pcm_sw_params** %5, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = call i64 @PCM_RUNTIME_CHECK(%struct.snd_pcm_substream* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %194

14:                                               ; preds = %2
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 1
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  store %struct.snd_pcm_runtime* %17, %struct.snd_pcm_runtime** %6, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %19 = call i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream* %18)
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 10
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SNDRV_PCM_STATE_OPEN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %14
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %29 = call i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream* %28)
  %30 = load i32, i32* @EBADFD, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %194

32:                                               ; preds = %14
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %34 = call i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream* %33)
  %35 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %32
  %40 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SNDRV_PCM_TSTAMP_LAST, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39, %32
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %194

48:                                               ; preds = %39
  %49 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @SNDRV_PROTOCOL_VERSION(i32 2, i32 0, i32 12)
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SNDRV_PCM_TSTAMP_TYPE_LAST, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %194

63:                                               ; preds = %54, %48
  %64 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %194

71:                                               ; preds = %63
  %72 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sge i64 %74, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %71
  %80 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %194

87:                                               ; preds = %79
  br label %111

88:                                               ; preds = %71
  %89 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %93 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %91, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %194

99:                                               ; preds = %88
  %100 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %104 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %102, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %194

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110, %87
  store i32 0, i32* %7, align 4
  %112 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %113 = call i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream* %112)
  %114 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %115 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %118 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  %119 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %120 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @SNDRV_PROTOCOL_VERSION(i32 2, i32 0, i32 12)
  %123 = icmp sge i64 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %111
  %125 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %126 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %129 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %128, i32 0, i32 3
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %124, %111
  %131 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %132 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %131, i32 0, i32 9
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %135 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %134, i32 0, i32 9
  store i32 %133, i32* %135, align 8
  %136 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %137 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %140 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %139, i32 0, i32 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  store i64 %138, i64* %142, align 8
  %143 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %144 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %143, i32 0, i32 8
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %147 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %146, i32 0, i32 7
  store i32 %145, i32* %147, align 4
  %148 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %149 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %152 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %151, i32 0, i32 6
  store i32 %150, i32* %152, align 8
  %153 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %154 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %157 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %156, i32 0, i32 4
  store i64 %155, i64* %157, align 8
  %158 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %159 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %162 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %161, i32 0, i32 5
  store i64 %160, i64* %162, align 8
  %163 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %164 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %167 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %166, i32 0, i32 6
  store i64 %165, i64* %167, align 8
  %168 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %169 = call i64 @snd_pcm_running(%struct.snd_pcm_substream* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %190

171:                                              ; preds = %130
  %172 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %173 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %171
  %178 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %179 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %178, i32 0, i32 5
  %180 = load i64, i64* %179, align 8
  %181 = icmp sgt i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %184 = load i32, i32* @ULONG_MAX, align 4
  %185 = call i32 @snd_pcm_playback_silence(%struct.snd_pcm_substream* %183, i32 %184)
  br label %186

186:                                              ; preds = %182, %177, %171
  %187 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %188 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %189 = call i32 @snd_pcm_update_state(%struct.snd_pcm_substream* %187, %struct.snd_pcm_runtime* %188)
  store i32 %189, i32* %7, align 4
  br label %190

190:                                              ; preds = %186, %130
  %191 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %192 = call i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream* %191)
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %190, %107, %96, %84, %68, %60, %45, %27, %11
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i64 @PCM_RUNTIME_CHECK(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream*) #1

declare dso_local i64 @SNDRV_PROTOCOL_VERSION(i32, i32, i32) #1

declare dso_local i64 @snd_pcm_running(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_playback_silence(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_pcm_update_state(%struct.snd_pcm_substream*, %struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
