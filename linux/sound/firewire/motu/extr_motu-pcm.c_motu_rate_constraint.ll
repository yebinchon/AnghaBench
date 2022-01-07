; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-pcm.c_motu_rate_constraint.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-pcm.c_motu_rate_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { %struct.snd_motu_packet_format* }
%struct.snd_motu_packet_format = type { i32*, i32* }
%struct.snd_interval = type { i32, i32, i32 }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@snd_motu_clock_rates = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @motu_rate_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @motu_rate_constraint(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca %struct.snd_motu_packet_format*, align 8
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca %struct.snd_interval*, align 8
  %8 = alloca %struct.snd_interval, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %13 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %13, i32 0, i32 0
  %15 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %14, align 8
  store %struct.snd_motu_packet_format* %15, %struct.snd_motu_packet_format** %5, align 8
  %16 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %17 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %18 = call %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params* %16, i32 %17)
  store %struct.snd_interval* %18, %struct.snd_interval** %6, align 8
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %20 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %21 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %19, i32 %20)
  store %struct.snd_interval* %21, %struct.snd_interval** %7, align 8
  %22 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 2
  %25 = load i32, i32* @UINT_MAX, align 4
  store i32 %25, i32* %24, align 4
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %70, %2
  %27 = load i32, i32* %9, align 4
  %28 = load i32*, i32** @snd_motu_clock_rates, align 8
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %31, label %73

31:                                               ; preds = %26
  %32 = load i32*, i32** @snd_motu_clock_rates, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = udiv i32 %37, 2
  store i32 %38, i32* %12, align 4
  %39 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %5, align 8
  %40 = getelementptr inbounds %struct.snd_motu_packet_format, %struct.snd_motu_packet_format* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %5, align 8
  %47 = getelementptr inbounds %struct.snd_motu_packet_format, %struct.snd_motu_packet_format* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %45, %52
  store i32 %53, i32* %10, align 4
  %54 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @snd_interval_test(%struct.snd_interval* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %31
  br label %70

59:                                               ; preds = %31
  %60 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @min(i32 %61, i32 %62)
  %64 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @max(i32 %66, i32 %67)
  %69 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %59, %58
  %71 = load i32, i32* %9, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %26

73:                                               ; preds = %26
  %74 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %75 = call i32 @snd_interval_refine(%struct.snd_interval* %74, %struct.snd_interval* %8)
  ret i32 %75
}

declare dso_local %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_interval_test(%struct.snd_interval*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @snd_interval_refine(%struct.snd_interval*, %struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
