; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.hdsp = type { i32, i32, i64, i64, i64, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@HDSP_SPDIFProfessional = common dso_local global i32 0, align 4
@HDSP_SPDIFNonAudio = common dso_local global i32 0, align 4
@HDSP_SPDIFEmphasis = common dso_local global i32 0, align 4
@HDSP_controlRegister = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_hdsp_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.hdsp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = call %struct.hdsp* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.hdsp* %11, %struct.hdsp** %6, align 8
  %12 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %13 = call i64 @hdsp_check_for_iobox(%struct.hdsp* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %156

18:                                               ; preds = %2
  %19 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %20 = call i64 @hdsp_check_for_firmware(%struct.hdsp* %19, i32 1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %156

25:                                               ; preds = %18
  %26 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %27 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %26, i32 0, i32 6
  %28 = call i32 @spin_lock_irq(i32* %27)
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %25
  %37 = load i32, i32* @HDSP_SPDIFProfessional, align 4
  %38 = load i32, i32* @HDSP_SPDIFNonAudio, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @HDSP_SPDIFEmphasis, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %44 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %48 = load i32, i32* @HDSP_controlRegister, align 4
  %49 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %50 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %53 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = call i32 @hdsp_write(%struct.hdsp* %47, i32 %48, i32 %55)
  %57 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %58 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %8, align 8
  %60 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %61 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %9, align 8
  br label %70

63:                                               ; preds = %25
  %64 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %65 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %8, align 8
  %67 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %68 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %9, align 8
  br label %70

70:                                               ; preds = %63, %36
  %71 = load i64, i64* %9, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %114

73:                                               ; preds = %70
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %114

77:                                               ; preds = %73
  %78 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %79 = call i64 @params_rate(%struct.snd_pcm_hw_params* %78)
  %80 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %81 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %86 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %85, i32 0, i32 6
  %87 = call i32 @spin_unlock_irq(i32* %86)
  %88 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %89 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %90 = call i32 @_snd_pcm_hw_param_setempty(%struct.snd_pcm_hw_params* %88, i32 %89)
  %91 = load i32, i32* @EBUSY, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %156

93:                                               ; preds = %77
  %94 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %95 = call i32 @params_period_size(%struct.snd_pcm_hw_params* %94)
  %96 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %97 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = sdiv i32 %98, 4
  %100 = icmp ne i32 %95, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %93
  %102 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %103 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %102, i32 0, i32 6
  %104 = call i32 @spin_unlock_irq(i32* %103)
  %105 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %106 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %107 = call i32 @_snd_pcm_hw_param_setempty(%struct.snd_pcm_hw_params* %105, i32 %106)
  %108 = load i32, i32* @EBUSY, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %156

110:                                              ; preds = %93
  %111 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %112 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %111, i32 0, i32 6
  %113 = call i32 @spin_unlock_irq(i32* %112)
  store i32 0, i32* %3, align 4
  br label %156

114:                                              ; preds = %73, %70
  %115 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %116 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %115, i32 0, i32 6
  %117 = call i32 @spin_unlock_irq(i32* %116)
  br label %118

118:                                              ; preds = %114
  %119 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %120 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %119, i32 0, i32 6
  %121 = call i32 @spin_lock_irq(i32* %120)
  %122 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %123 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %141, label %126

126:                                              ; preds = %118
  %127 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %128 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %129 = call i64 @params_rate(%struct.snd_pcm_hw_params* %128)
  %130 = call i32 @hdsp_set_rate(%struct.hdsp* %127, i64 %129, i32 0)
  store i32 %130, i32* %7, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %126
  %133 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %134 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %133, i32 0, i32 6
  %135 = call i32 @spin_unlock_irq(i32* %134)
  %136 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %137 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %138 = call i32 @_snd_pcm_hw_param_setempty(%struct.snd_pcm_hw_params* %136, i32 %137)
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %3, align 4
  br label %156

140:                                              ; preds = %126
  br label %141

141:                                              ; preds = %140, %118
  %142 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %143 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %142, i32 0, i32 6
  %144 = call i32 @spin_unlock_irq(i32* %143)
  %145 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %146 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %147 = call i32 @params_period_size(%struct.snd_pcm_hw_params* %146)
  %148 = call i32 @hdsp_set_interrupt_interval(%struct.hdsp* %145, i32 %147)
  store i32 %148, i32* %7, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %141
  %151 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %152 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %153 = call i32 @_snd_pcm_hw_param_setempty(%struct.snd_pcm_hw_params* %151, i32 %152)
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %3, align 4
  br label %156

155:                                              ; preds = %141
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %155, %150, %132, %110, %101, %84, %22, %15
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local %struct.hdsp* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @hdsp_check_for_iobox(%struct.hdsp*) #1

declare dso_local i64 @hdsp_check_for_firmware(%struct.hdsp*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @hdsp_write(%struct.hdsp*, i32, i32) #1

declare dso_local i64 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @_snd_pcm_hw_param_setempty(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @params_period_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @hdsp_set_rate(%struct.hdsp*, i64, i32) #1

declare dso_local i32 @hdsp_set_interrupt_interval(%struct.hdsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
