; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_playback_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_7__, i32, i32 }
%struct.hdsp = type { i32, i64, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i64, i32, %struct.snd_pcm_substream*, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@snd_hdsp_playback_subinfo = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@HDSP_DMA_AREA_BYTES = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@hdsp_hw_constraints_period_sizes = common dso_local global i32 0, align 4
@H9632 = common dso_local global i64 0, align 8
@SNDRV_PCM_RATE_KNOT = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@hdsp_hw_constraints_9632_sample_rates = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@snd_hdsp_hw_rule_out_channels = common dso_local global i32 0, align 4
@snd_hdsp_hw_rule_out_channels_rate = common dso_local global i32 0, align 4
@snd_hdsp_hw_rule_rate_out_channels = common dso_local global i32 0, align 4
@RPM = common dso_local global i64 0, align 8
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_hdsp_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.hdsp*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.hdsp* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.hdsp* %7, %struct.hdsp** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %5, align 8
  %11 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %12 = call i64 @hdsp_check_for_iobox(%struct.hdsp* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %161

17:                                               ; preds = %1
  %18 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %19 = call i64 @hdsp_check_for_firmware(%struct.hdsp* %18, i32 1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %161

24:                                               ; preds = %17
  %25 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %26 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %25, i32 0, i32 9
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %29 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %28)
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 0
  %32 = bitcast %struct.TYPE_7__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 bitcast (%struct.TYPE_7__* @snd_hdsp_playback_subinfo to i8*), i64 20, i1 false)
  %33 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %34 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %33, i32 0, i32 12
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @HDSP_DMA_AREA_BYTES, align 4
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %45 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %44, i32 0, i32 11
  store i32 %43, i32* %45, align 8
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %47 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %48 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %47, i32 0, i32 10
  store %struct.snd_pcm_substream* %46, %struct.snd_pcm_substream** %48, align 8
  %49 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %50 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %49, i32 0, i32 9
  %51 = call i32 @spin_unlock_irq(i32* %50)
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %53 = call i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime* %52, i32 0, i32 32, i32 24)
  %54 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %55 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %56 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %54, i32 0, i32 %55, i32* @hdsp_hw_constraints_period_sizes)
  %57 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %58 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %57, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %24
  %62 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %63 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 %64, i32* %70, align 4
  br label %89

71:                                               ; preds = %24
  %72 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %73 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @H9632, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  store i32 192000, i32* %80, align 4
  %81 = load i32, i32* @SNDRV_PCM_RATE_KNOT, align 4
  %82 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %83 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 4
  store i32 %81, i32* %84, align 4
  %85 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %86 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %87 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %85, i32 0, i32 %86, i32* @hdsp_hw_constraints_9632_sample_rates)
  br label %88

88:                                               ; preds = %77, %71
  br label %89

89:                                               ; preds = %88, %61
  %90 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %91 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @H9632, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %89
  %96 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %97 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  store i32 %98, i32* %101, align 4
  %102 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %103 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %106 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 4
  br label %108

108:                                              ; preds = %95, %89
  %109 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %110 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %111 = load i32, i32* @snd_hdsp_hw_rule_out_channels, align 4
  %112 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %113 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %114 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %109, i32 0, i32 %110, i32 %111, %struct.hdsp* %112, i32 %113, i32 -1)
  %115 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %116 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %117 = load i32, i32* @snd_hdsp_hw_rule_out_channels_rate, align 4
  %118 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %119 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %120 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %115, i32 0, i32 %116, i32 %117, %struct.hdsp* %118, i32 %119, i32 -1)
  %121 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %122 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %123 = load i32, i32* @snd_hdsp_hw_rule_rate_out_channels, align 4
  %124 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %125 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %126 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %121, i32 0, i32 %122, i32 %123, %struct.hdsp* %124, i32 %125, i32 -1)
  %127 = load i64, i64* @RPM, align 8
  %128 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %129 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %127, %130
  br i1 %131, label %132, label %160

132:                                              ; preds = %108
  %133 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %134 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %137 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %139 = xor i32 %138, -1
  %140 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %141 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %140, i32 0, i32 2
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, %139
  store i32 %148, i32* %146, align 4
  %149 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %150 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %153 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %154 = or i32 %152, %153
  %155 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %156 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %155, i32 0, i32 2
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = call i32 @snd_ctl_notify(i32 %151, i32 %154, i32* %158)
  br label %160

160:                                              ; preds = %132, %108
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %160, %21, %14
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.hdsp* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @hdsp_check_for_iobox(%struct.hdsp*) #1

declare dso_local i64 @hdsp_check_for_firmware(%struct.hdsp*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime*, i32, i32, i32*) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, %struct.hdsp*, i32, i32) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
