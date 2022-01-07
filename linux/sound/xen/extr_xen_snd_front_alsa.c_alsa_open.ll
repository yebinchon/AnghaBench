; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_alsa.c_alsa_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_alsa.c_alsa_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.xen_snd_front_pcm_instance_info = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.xen_snd_front_info* }
%struct.xen_snd_front_info = type { %struct.TYPE_14__*, %struct.TYPE_9__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.snd_pcm_substream* }
%struct.TYPE_9__ = type { %struct.device }
%struct.device = type { i32 }
%struct.xen_snd_front_pcm_stream_info = type { i64, %struct.TYPE_14__*, %struct.xen_snd_front_info*, %struct.TYPE_10__ }

@SNDRV_PCM_INFO_MMAP = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_MMAP_VALID = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_DOUBLE = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_BATCH = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_NONINTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_RESUME = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_PAUSE = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_INTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@alsa_hw_rule = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Failed to add HW rule for SNDRV_PCM_HW_PARAM_FORMAT\0A\00", align 1
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Failed to add HW rule for SNDRV_PCM_HW_PARAM_RATE\0A\00", align 1
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Failed to add HW rule for SNDRV_PCM_HW_PARAM_CHANNELS\0A\00", align 1
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"Failed to add HW rule for SNDRV_PCM_HW_PARAM_PERIOD_SIZE\0A\00", align 1
@SNDRV_PCM_HW_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"Failed to add HW rule for SNDRV_PCM_HW_PARAM_BUFFER_SIZE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @alsa_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alsa_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.xen_snd_front_pcm_instance_info*, align 8
  %5 = alloca %struct.xen_snd_front_pcm_stream_info*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.xen_snd_front_info*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = call %struct.xen_snd_front_pcm_instance_info* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.xen_snd_front_pcm_instance_info* %11, %struct.xen_snd_front_pcm_instance_info** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = call %struct.xen_snd_front_pcm_stream_info* @stream_get(%struct.snd_pcm_substream* %12)
  store %struct.xen_snd_front_pcm_stream_info* %13, %struct.xen_snd_front_pcm_stream_info** %5, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  store %struct.snd_pcm_runtime* %16, %struct.snd_pcm_runtime** %6, align 8
  %17 = load %struct.xen_snd_front_pcm_instance_info*, %struct.xen_snd_front_pcm_instance_info** %4, align 8
  %18 = getelementptr inbounds %struct.xen_snd_front_pcm_instance_info, %struct.xen_snd_front_pcm_instance_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %20, align 8
  store %struct.xen_snd_front_info* %21, %struct.xen_snd_front_info** %7, align 8
  %22 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %7, align 8
  %23 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store %struct.device* %25, %struct.device** %8, align 8
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 0
  %28 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %5, align 8
  %29 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %28, i32 0, i32 3
  %30 = bitcast %struct.TYPE_10__* %27 to i8*
  %31 = bitcast %struct.TYPE_10__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 8 %31, i64 4, i1 false)
  %32 = load i32, i32* @SNDRV_PCM_INFO_MMAP, align 4
  %33 = load i32, i32* @SNDRV_PCM_INFO_MMAP_VALID, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SNDRV_PCM_INFO_DOUBLE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SNDRV_PCM_INFO_BATCH, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @SNDRV_PCM_INFO_NONINTERLEAVED, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SNDRV_PCM_INFO_RESUME, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @SNDRV_PCM_INFO_PAUSE, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %45
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @SNDRV_PCM_INFO_INTERLEAVED, align 4
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 4
  %57 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %7, align 8
  %58 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %5, align 8
  %61 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i64 %62
  %64 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %5, align 8
  %65 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %64, i32 0, i32 1
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** %65, align 8
  %66 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %7, align 8
  %67 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %5, align 8
  %68 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %67, i32 0, i32 2
  store %struct.xen_snd_front_info* %66, %struct.xen_snd_front_info** %68, align 8
  %69 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %70 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %5, align 8
  %71 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %70, i32 0, i32 1
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  store %struct.snd_pcm_substream* %69, %struct.snd_pcm_substream** %76, align 8
  %77 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %5, align 8
  %78 = call i32 @stream_clear(%struct.xen_snd_front_pcm_stream_info* %77)
  %79 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %5, align 8
  %80 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %79, i32 0, i32 1
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = call i32 @xen_snd_front_evtchnl_pair_set_connected(%struct.TYPE_14__* %81, i32 1)
  %83 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %84 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %85 = load i32, i32* @alsa_hw_rule, align 4
  %86 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %5, align 8
  %87 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %88 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %83, i32 0, i32 %84, i32 %85, %struct.xen_snd_front_pcm_stream_info* %86, i32 %87, i32 -1)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %1
  %92 = load %struct.device*, %struct.device** %8, align 8
  %93 = call i32 @dev_err(%struct.device* %92, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %2, align 4
  br label %148

95:                                               ; preds = %1
  %96 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %97 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %98 = load i32, i32* @alsa_hw_rule, align 4
  %99 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %5, align 8
  %100 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %101 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %96, i32 0, i32 %97, i32 %98, %struct.xen_snd_front_pcm_stream_info* %99, i32 %100, i32 -1)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %95
  %105 = load %struct.device*, %struct.device** %8, align 8
  %106 = call i32 @dev_err(%struct.device* %105, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %2, align 4
  br label %148

108:                                              ; preds = %95
  %109 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %110 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %111 = load i32, i32* @alsa_hw_rule, align 4
  %112 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %5, align 8
  %113 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %114 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %109, i32 0, i32 %110, i32 %111, %struct.xen_snd_front_pcm_stream_info* %112, i32 %113, i32 -1)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %108
  %118 = load %struct.device*, %struct.device** %8, align 8
  %119 = call i32 @dev_err(%struct.device* %118, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %2, align 4
  br label %148

121:                                              ; preds = %108
  %122 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %123 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %124 = load i32, i32* @alsa_hw_rule, align 4
  %125 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %5, align 8
  %126 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %127 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %122, i32 0, i32 %123, i32 %124, %struct.xen_snd_front_pcm_stream_info* %125, i32 %126, i32 -1)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %121
  %131 = load %struct.device*, %struct.device** %8, align 8
  %132 = call i32 @dev_err(%struct.device* %131, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %2, align 4
  br label %148

134:                                              ; preds = %121
  %135 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %136 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %137 = load i32, i32* @alsa_hw_rule, align 4
  %138 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %5, align 8
  %139 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %140 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %135, i32 0, i32 %136, i32 %137, %struct.xen_snd_front_pcm_stream_info* %138, i32 %139, i32 -1)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %134
  %144 = load %struct.device*, %struct.device** %8, align 8
  %145 = call i32 @dev_err(%struct.device* %144, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %2, align 4
  br label %148

147:                                              ; preds = %134
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %147, %143, %130, %117, %104, %91
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.xen_snd_front_pcm_instance_info* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.xen_snd_front_pcm_stream_info* @stream_get(%struct.snd_pcm_substream*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @stream_clear(%struct.xen_snd_front_pcm_stream_info*) #1

declare dso_local i32 @xen_snd_front_evtchnl_pair_set_connected(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, %struct.xen_snd_front_pcm_stream_info*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
