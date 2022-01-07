; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_rme9652 = type { i32, i32, i64, i64, i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@RME9652_PRO = common dso_local global i32 0, align 4
@RME9652_Dolby = common dso_local global i32 0, align 4
@RME9652_EMP = common dso_local global i32 0, align 4
@RME9652_control_register = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_rme9652_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme9652_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_rme9652*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = call %struct.snd_rme9652* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_rme9652* %11, %struct.snd_rme9652** %6, align 8
  %12 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %13 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %12, i32 0, i32 5
  %14 = call i32 @spin_lock_irq(i32* %13)
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %2
  %23 = load i32, i32* @RME9652_PRO, align 4
  %24 = load i32, i32* @RME9652_Dolby, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @RME9652_EMP, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %30 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %34 = load i32, i32* @RME9652_control_register, align 4
  %35 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %36 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %39 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = call i32 @rme9652_write(%struct.snd_rme9652* %33, i32 %34, i32 %41)
  %43 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %44 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %8, align 8
  %46 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %47 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %9, align 8
  br label %56

49:                                               ; preds = %2
  %50 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %51 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %8, align 8
  %53 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %54 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %49, %22
  %57 = load i64, i64* %9, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %100

59:                                               ; preds = %56
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %100

63:                                               ; preds = %59
  %64 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %65 = call i64 @params_rate(%struct.snd_pcm_hw_params* %64)
  %66 = trunc i64 %65 to i32
  %67 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %68 = call i32 @rme9652_adat_sample_rate(%struct.snd_rme9652* %67)
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %63
  %71 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %72 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %71, i32 0, i32 5
  %73 = call i32 @spin_unlock_irq(i32* %72)
  %74 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %75 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %76 = call i32 @_snd_pcm_hw_param_setempty(%struct.snd_pcm_hw_params* %74, i32 %75)
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %127

79:                                               ; preds = %63
  %80 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %81 = call i32 @params_period_size(%struct.snd_pcm_hw_params* %80)
  %82 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %83 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = sdiv i32 %84, 4
  %86 = icmp ne i32 %81, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %79
  %88 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %89 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %88, i32 0, i32 5
  %90 = call i32 @spin_unlock_irq(i32* %89)
  %91 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %92 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %93 = call i32 @_snd_pcm_hw_param_setempty(%struct.snd_pcm_hw_params* %91, i32 %92)
  %94 = load i32, i32* @EBUSY, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %127

96:                                               ; preds = %79
  %97 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %98 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %97, i32 0, i32 5
  %99 = call i32 @spin_unlock_irq(i32* %98)
  store i32 0, i32* %3, align 4
  br label %127

100:                                              ; preds = %59, %56
  %101 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %102 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %101, i32 0, i32 5
  %103 = call i32 @spin_unlock_irq(i32* %102)
  br label %104

104:                                              ; preds = %100
  %105 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %106 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %107 = call i64 @params_rate(%struct.snd_pcm_hw_params* %106)
  %108 = call i32 @rme9652_set_rate(%struct.snd_rme9652* %105, i64 %107)
  store i32 %108, i32* %7, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %112 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %113 = call i32 @_snd_pcm_hw_param_setempty(%struct.snd_pcm_hw_params* %111, i32 %112)
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %3, align 4
  br label %127

115:                                              ; preds = %104
  %116 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %117 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %118 = call i32 @params_period_size(%struct.snd_pcm_hw_params* %117)
  %119 = call i32 @rme9652_set_interrupt_interval(%struct.snd_rme9652* %116, i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %123 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %124 = call i32 @_snd_pcm_hw_param_setempty(%struct.snd_pcm_hw_params* %122, i32 %123)
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %3, align 4
  br label %127

126:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %121, %110, %96, %87, %70
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.snd_rme9652* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rme9652_write(%struct.snd_rme9652*, i32, i32) #1

declare dso_local i64 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @rme9652_adat_sample_rate(%struct.snd_rme9652*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @_snd_pcm_hw_param_setempty(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @params_period_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @rme9652_set_rate(%struct.snd_rme9652*, i64) #1

declare dso_local i32 @rme9652_set_interrupt_interval(%struct.snd_rme9652*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
