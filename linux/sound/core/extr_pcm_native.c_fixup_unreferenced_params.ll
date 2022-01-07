; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_fixup_unreferenced_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_fixup_unreferenced_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.snd_pcm_substream*, i32, %struct.snd_pcm_hw_params*)* }
%struct.snd_pcm_hw_params = type { i32, i32, i32, i8*, i8* }
%struct.snd_interval = type { i32 }
%struct.snd_mask = type { i32 }

@SNDRV_PCM_HW_PARAM_SAMPLE_BITS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_IOCTL1_FIFO_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_FIFO_IN_FRAMES = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_DRAIN_TRIGGER = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_MMAP = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_MMAP_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @fixup_unreferenced_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixup_unreferenced_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca %struct.snd_mask*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %9 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %9, i32 0, i32 4
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %15 = load i32, i32* @SNDRV_PCM_HW_PARAM_SAMPLE_BITS, align 4
  %16 = call %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params* %14, i32 %15)
  store %struct.snd_interval* %16, %struct.snd_interval** %6, align 8
  %17 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %18 = call i64 @snd_interval_single(%struct.snd_interval* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %22 = call i8* @snd_interval_value(%struct.snd_interval* %21)
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  br label %25

25:                                               ; preds = %20, %13
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %26
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %33 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %34 = call %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params* %32, i32 %33)
  store %struct.snd_interval* %34, %struct.snd_interval** %6, align 8
  %35 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %36 = call i64 @snd_interval_single(%struct.snd_interval* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %40 = call i8* @snd_interval_value(%struct.snd_interval* %39)
  %41 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %38, %31
  br label %46

46:                                               ; preds = %45, %26
  %47 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %81, label %51

51:                                               ; preds = %46
  %52 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %53 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %54 = call %struct.snd_mask* @hw_param_mask_c(%struct.snd_pcm_hw_params* %52, i32 %53)
  store %struct.snd_mask* %54, %struct.snd_mask** %7, align 8
  %55 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %56 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %57 = call %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params* %55, i32 %56)
  store %struct.snd_interval* %57, %struct.snd_interval** %6, align 8
  %58 = load %struct.snd_mask*, %struct.snd_mask** %7, align 8
  %59 = call i64 @snd_mask_single(%struct.snd_mask* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %51
  %62 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %63 = call i64 @snd_interval_single(%struct.snd_interval* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32 (%struct.snd_pcm_substream*, i32, %struct.snd_pcm_hw_params*)*, i32 (%struct.snd_pcm_substream*, i32, %struct.snd_pcm_hw_params*)** %69, align 8
  %71 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %72 = load i32, i32* @SNDRV_PCM_IOCTL1_FIFO_SIZE, align 4
  %73 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %74 = call i32 %70(%struct.snd_pcm_substream* %71, i32 %72, %struct.snd_pcm_hw_params* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %117

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79, %61, %51
  br label %81

81:                                               ; preds = %80, %46
  %82 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %83 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %116, label %86

86:                                               ; preds = %81
  %87 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %88 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %94 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @SNDRV_PCM_INFO_FIFO_IN_FRAMES, align 4
  %96 = load i32, i32* @SNDRV_PCM_INFO_DRAIN_TRIGGER, align 4
  %97 = or i32 %95, %96
  %98 = xor i32 %97, -1
  %99 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %104 = call i32 @hw_support_mmap(%struct.snd_pcm_substream* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %86
  %107 = load i32, i32* @SNDRV_PCM_INFO_MMAP, align 4
  %108 = load i32, i32* @SNDRV_PCM_INFO_MMAP_VALID, align 4
  %109 = or i32 %107, %108
  %110 = xor i32 %109, -1
  %111 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %112 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %106, %86
  br label %116

116:                                              ; preds = %115, %81
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %77
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i64 @snd_interval_single(%struct.snd_interval*) #1

declare dso_local i8* @snd_interval_value(%struct.snd_interval*) #1

declare dso_local %struct.snd_mask* @hw_param_mask_c(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i64 @snd_mask_single(%struct.snd_mask*) #1

declare dso_local i32 @hw_support_mmap(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
