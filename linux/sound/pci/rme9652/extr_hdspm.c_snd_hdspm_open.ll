; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_4__ }
%struct.hdspm = type { i32, i32, %struct.snd_pcm_substream*, i32, %struct.snd_pcm_substream*, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@snd_hdspm_playback_subinfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@snd_hdspm_capture_subinfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@current = common dso_local global %struct.TYPE_5__* null, align 8
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@AES32 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_KNOT = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@hdspm_hw_constraints_aes32_sample_rates = common dso_local global i32 0, align 4
@snd_hdspm_hw_rule_rate_out_channels = common dso_local global i32 0, align 4
@snd_hdspm_hw_rule_rate_in_channels = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@snd_hdspm_hw_rule_out_channels = common dso_local global i32 0, align 4
@snd_hdspm_hw_rule_in_channels = common dso_local global i32 0, align 4
@snd_hdspm_hw_rule_out_channels_rate = common dso_local global i32 0, align 4
@snd_hdspm_hw_rule_in_channels_rate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_hdspm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.hdspm*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.hdspm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.hdspm* %7, %struct.hdspm** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 1
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %18 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %17, i32 0, i32 1
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %21 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %20)
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 0
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = bitcast %struct.TYPE_4__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 bitcast (%struct.TYPE_4__* @snd_hdspm_playback_subinfo to i8*), i64 4, i1 false)
  br label %30

28:                                               ; preds = %1
  %29 = bitcast %struct.TYPE_4__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 bitcast (%struct.TYPE_4__* @snd_hdspm_capture_subinfo to i8*), i64 4, i1 false)
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %35 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %34, i32 0, i32 2
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %35, align 8
  %37 = icmp ne %struct.snd_pcm_substream* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %40 = call i32 @hdspm_stop_audio(%struct.hdspm* %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %46 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %48 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %49 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %48, i32 0, i32 4
  store %struct.snd_pcm_substream* %47, %struct.snd_pcm_substream** %49, align 8
  br label %67

50:                                               ; preds = %30
  %51 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %52 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %51, i32 0, i32 4
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %52, align 8
  %54 = icmp ne %struct.snd_pcm_substream* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %57 = call i32 @hdspm_stop_audio(%struct.hdspm* %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %63 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %65 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %66 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %65, i32 0, i32 2
  store %struct.snd_pcm_substream* %64, %struct.snd_pcm_substream** %66, align 8
  br label %67

67:                                               ; preds = %58, %41
  %68 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %69 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %68, i32 0, i32 1
  %70 = call i32 @spin_unlock_irq(i32* %69)
  %71 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %72 = call i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime* %71, i32 0, i32 32, i32 24)
  %73 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %74 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %75 = call i32 @snd_pcm_hw_constraint_pow2(%struct.snd_pcm_runtime* %73, i32 0, i32 %74)
  %76 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %77 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %86 [
    i32 129, label %79
    i32 128, label %79
  ]

79:                                               ; preds = %67, %67
  %80 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %81 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %82 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %80, i32 %81, i32 32, i32 4096)
  %83 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %84 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %85 = call i32 @snd_pcm_hw_constraint_single(%struct.snd_pcm_runtime* %83, i32 %84, i32 16384)
  br label %93

86:                                               ; preds = %67
  %87 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %88 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %89 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %87, i32 %88, i32 64, i32 8192)
  %90 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %91 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %92 = call i32 @snd_pcm_hw_constraint_single(%struct.snd_pcm_runtime* %90, i32 %91, i32 2)
  br label %93

93:                                               ; preds = %86, %79
  %94 = load i32, i32* @AES32, align 4
  %95 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %96 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %94, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %93
  %100 = load i32, i32* @SNDRV_PCM_RATE_KNOT, align 4
  %101 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %102 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %100
  store i32 %105, i32* %103, align 4
  %106 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %107 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %108 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %106, i32 0, i32 %107, i32* @hdspm_hw_constraints_aes32_sample_rates)
  br label %123

109:                                              ; preds = %93
  %110 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %111 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* @snd_hdspm_hw_rule_rate_out_channels, align 4
  br label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @snd_hdspm_hw_rule_rate_in_channels, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  %120 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %121 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %122 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %110, i32 0, i32 %111, i32 %119, %struct.hdspm* %120, i32 %121, i32 -1)
  br label %123

123:                                              ; preds = %118, %99
  %124 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %125 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i32, i32* @snd_hdspm_hw_rule_out_channels, align 4
  br label %132

130:                                              ; preds = %123
  %131 = load i32, i32* @snd_hdspm_hw_rule_in_channels, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  %134 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %135 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %136 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %124, i32 0, i32 %125, i32 %133, %struct.hdspm* %134, i32 %135, i32 -1)
  %137 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %138 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %132
  %142 = load i32, i32* @snd_hdspm_hw_rule_out_channels_rate, align 4
  br label %145

143:                                              ; preds = %132
  %144 = load i32, i32* @snd_hdspm_hw_rule_in_channels_rate, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  %147 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %148 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %149 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %137, i32 0, i32 %138, i32 %146, %struct.hdspm* %147, i32 %148, i32 -1)
  ret i32 0
}

declare dso_local %struct.hdspm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hdspm_stop_audio(%struct.hdspm*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_pow2(%struct.snd_pcm_runtime*, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_single(%struct.snd_pcm_runtime*, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime*, i32, i32, i32*) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, %struct.hdspm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
