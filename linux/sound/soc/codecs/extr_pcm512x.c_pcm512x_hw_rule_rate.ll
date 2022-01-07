; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_hw_rule_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_hw_rule_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { i32, %struct.pcm512x_priv* }
%struct.pcm512x_priv = type { i32 }
%struct.snd_interval = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @pcm512x_hw_rule_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm512x_hw_rule_rate(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_hw_rule*, align 8
  %6 = alloca %struct.pcm512x_priv*, align 8
  %7 = alloca [2 x %struct.snd_interval], align 16
  %8 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %4, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %5, align 8
  %9 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %5, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %9, i32 0, i32 1
  %11 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %10, align 8
  store %struct.pcm512x_priv* %11, %struct.pcm512x_priv** %6, align 8
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %13 = call i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %52

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %39 [
    i32 32, label %20
    i32 48, label %21
    i32 64, label %21
  ]

20:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %52

21:                                               ; preds = %18, %18
  %22 = getelementptr inbounds [2 x %struct.snd_interval], [2 x %struct.snd_interval]* %7, i64 0, i64 0
  %23 = call i32 @memset(%struct.snd_interval* %22, i32 0, i32 16)
  %24 = getelementptr inbounds [2 x %struct.snd_interval], [2 x %struct.snd_interval]* %7, i64 0, i64 0
  %25 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %24, i32 0, i32 0
  store i32 8000, i32* %25, align 16
  %26 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %6, align 8
  %27 = call i32 @pcm512x_sck_max(%struct.pcm512x_priv* %26)
  %28 = load i32, i32* %8, align 4
  %29 = sdiv i32 %27, %28
  %30 = sdiv i32 %29, 2
  %31 = getelementptr inbounds [2 x %struct.snd_interval], [2 x %struct.snd_interval]* %7, i64 0, i64 0
  %32 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @DIV_ROUND_UP(i32 16000000, i32 %33)
  %35 = getelementptr inbounds [2 x %struct.snd_interval], [2 x %struct.snd_interval]* %7, i64 0, i64 1
  %36 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = getelementptr inbounds [2 x %struct.snd_interval], [2 x %struct.snd_interval]* %7, i64 0, i64 1
  %38 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %37, i32 0, i32 1
  store i32 384000, i32* %38, align 4
  br label %42

39:                                               ; preds = %18
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %52

42:                                               ; preds = %21
  %43 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %44 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %5, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @hw_param_interval(%struct.snd_pcm_hw_params* %43, i32 %46)
  %48 = getelementptr inbounds [2 x %struct.snd_interval], [2 x %struct.snd_interval]* %7, i64 0, i64 0
  %49 = call i32 @ARRAY_SIZE(%struct.snd_interval* %48)
  %50 = getelementptr inbounds [2 x %struct.snd_interval], [2 x %struct.snd_interval]* %7, i64 0, i64 0
  %51 = call i32 @snd_interval_ranges(i32 %47, i32 %49, %struct.snd_interval* %50, i32 0)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %42, %39, %20, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @memset(%struct.snd_interval*, i32, i32) #1

declare dso_local i32 @pcm512x_sck_max(%struct.pcm512x_priv*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @snd_interval_ranges(i32, i32, %struct.snd_interval*, i32) #1

declare dso_local i32 @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
