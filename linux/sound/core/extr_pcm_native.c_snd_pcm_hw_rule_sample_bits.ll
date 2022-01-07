; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_hw_rule_sample_bits.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_hw_rule_sample_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { i32 }
%struct.snd_interval = type { i32, i32, i32, i64, i64 }

@UINT_MAX = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_LAST = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @snd_pcm_hw_rule_sample_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_hw_rule_sample_bits(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca %struct.snd_interval, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %8 = load i32, i32* @UINT_MAX, align 4
  %9 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %5, i32 0, i32 0
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %5, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %5, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %5, i32 0, i32 3
  store i64 0, i64* %12, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %48, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @SNDRV_PCM_FORMAT_LAST, align 4
  %16 = icmp ule i32 %14, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %13
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %19 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %20 = call i32 @hw_param_mask(%struct.snd_pcm_hw_params* %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @snd_mask_test(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %48

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @snd_pcm_format_physical_width(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %48

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %5, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %31
  %40 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %5, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %5, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %39
  br label %48

48:                                               ; preds = %47, %30, %24
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %13

51:                                               ; preds = %13
  %52 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %5, i32 0, i32 2
  store i32 1, i32* %52, align 8
  %53 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %54 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @hw_param_interval(%struct.snd_pcm_hw_params* %53, i32 %56)
  %58 = call i32 @snd_interval_refine(i32 %57, %struct.snd_interval* %5)
  ret i32 %58
}

declare dso_local i32 @snd_mask_test(i32, i32) #1

declare dso_local i32 @hw_param_mask(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i32 @snd_interval_refine(i32, %struct.snd_interval*) #1

declare dso_local i32 @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
