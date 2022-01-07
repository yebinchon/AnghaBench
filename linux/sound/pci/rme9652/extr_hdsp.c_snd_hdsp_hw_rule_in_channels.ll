; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_hw_rule_in_channels.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_hw_rule_in_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { %struct.hdsp* }
%struct.hdsp = type { i64, i32, i32, i32 }
%struct.snd_interval = type { i32 }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@H9632 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @snd_hdsp_hw_rule_in_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_hw_rule_in_channels(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_hw_rule*, align 8
  %6 = alloca %struct.hdsp*, align 8
  %7 = alloca %struct.snd_interval*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca [2 x i32], align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %4, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %5, align 8
  %10 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %5, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %10, i32 0, i32 0
  %12 = load %struct.hdsp*, %struct.hdsp** %11, align 8
  store %struct.hdsp* %12, %struct.hdsp** %6, align 8
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %14 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %15 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %13, i32 %14)
  store %struct.snd_interval* %15, %struct.snd_interval** %7, align 8
  %16 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %17 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @H9632, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %23 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %27 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %31 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %36 = call i32 @snd_interval_list(%struct.snd_interval* %34, i32 3, i32* %35, i32 0)
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %2
  %38 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %39 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %43 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %48 = call i32 @snd_interval_list(%struct.snd_interval* %46, i32 2, i32* %47, i32 0)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %37, %21
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_interval_list(%struct.snd_interval*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
