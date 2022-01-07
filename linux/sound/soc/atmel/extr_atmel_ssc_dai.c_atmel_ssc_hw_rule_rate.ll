; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_hw_rule_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_hw_rule_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ratnum = type { i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, i32 }
%struct.snd_pcm_hw_rule = type { i32, %struct.atmel_ssc_info* }
%struct.atmel_ssc_info = type { i32, i32, i32, %struct.ssc_device* }
%struct.ssc_device = type { i32 }
%struct.snd_interval = type { i32, i32, i32, i32, i32 }

@__const.atmel_ssc_hw_rule_rate.r = private unnamed_addr constant %struct.snd_ratnum { i32 1, i32 4095, i32 1, i32 0 }, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@SSC_DIR_MASK_CAPTURE = common dso_local global i32 0, align 4
@SSC_DIR_MASK_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @atmel_ssc_hw_rule_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ssc_hw_rule_rate(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_hw_rule*, align 8
  %6 = alloca %struct.atmel_ssc_info*, align 8
  %7 = alloca %struct.ssc_device*, align 8
  %8 = alloca %struct.snd_interval*, align 8
  %9 = alloca %struct.snd_interval, align 4
  %10 = alloca %struct.snd_ratnum, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %4, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %5, align 8
  %16 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %5, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %16, i32 0, i32 1
  %18 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %17, align 8
  store %struct.atmel_ssc_info* %18, %struct.atmel_ssc_info** %6, align 8
  %19 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %20 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %19, i32 0, i32 3
  %21 = load %struct.ssc_device*, %struct.ssc_device** %20, align 8
  store %struct.ssc_device* %21, %struct.ssc_device** %7, align 8
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %23 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %5, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %22, i32 %25)
  store %struct.snd_interval* %26, %struct.snd_interval** %8, align 8
  %27 = bitcast %struct.snd_ratnum* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 bitcast (%struct.snd_ratnum* @__const.atmel_ssc_hw_rule_rate.r to i8*), i64 16, i1 false)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 2, i32* %14, align 4
  %28 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %29 = call i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %3, align 4
  br label %124

34:                                               ; preds = %2
  %35 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %36 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %39 = and i32 %37, %38
  switch i32 %39, label %68 [
    i32 129, label %40
    i32 130, label %54
  ]

40:                                               ; preds = %34
  %41 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %42 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SSC_DIR_MASK_CAPTURE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.ssc_device*, %struct.ssc_device** %7, align 8
  %49 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 3, i32* %14, align 4
  br label %53

53:                                               ; preds = %52, %47, %40
  br label %68

54:                                               ; preds = %34
  %55 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %56 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SSC_DIR_MASK_PLAYBACK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.ssc_device*, %struct.ssc_device** %7, align 8
  %63 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store i32 6, i32* %14, align 4
  br label %67

67:                                               ; preds = %66, %61, %54
  br label %68

68:                                               ; preds = %34, %67, %53
  %69 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %70 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %73 = and i32 %71, %72
  switch i32 %73, label %119 [
    i32 128, label %74
    i32 129, label %104
    i32 130, label %104
  ]

74:                                               ; preds = %68
  %75 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %76 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sdiv i32 %77, %78
  %80 = load i32, i32* %13, align 4
  %81 = sdiv i32 %79, %80
  %82 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %10, i32 0, i32 3
  store i32 %81, i32* %82, align 4
  %83 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %84 = call i32 @snd_interval_ratnum(%struct.snd_interval* %83, i32 1, %struct.snd_ratnum* %10, i32* %11, i32* %12)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %74
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %87
  %91 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %5, align 8
  %92 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %99 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %102 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %96, %90, %87, %74
  br label %122

104:                                              ; preds = %68, %68
  %105 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 0
  store i32 8000, i32* %105, align 4
  %106 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %6, align 8
  %107 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sdiv i32 %108, %109
  %111 = load i32, i32* %13, align 4
  %112 = sdiv i32 %110, %111
  %113 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 1
  store i32 %112, i32* %113, align 4
  %114 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 3
  store i32 0, i32* %114, align 4
  %115 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 4
  store i32 0, i32* %115, align 4
  %116 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 2
  store i32 0, i32* %116, align 4
  %117 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %118 = call i32 @snd_interval_refine(%struct.snd_interval* %117, %struct.snd_interval* %9)
  store i32 %118, i32* %15, align 4
  br label %122

119:                                              ; preds = %68
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %15, align 4
  br label %122

122:                                              ; preds = %119, %104, %103
  %123 = load i32, i32* %15, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %32
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_interval_ratnum(%struct.snd_interval*, i32, %struct.snd_ratnum*, i32*, i32*) #1

declare dso_local i32 @snd_interval_refine(%struct.snd_interval*, %struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
