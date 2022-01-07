; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_hw_param_value_max.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_hw_param_value_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_interval = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, i32, i32*)* @snd_pcm_hw_param_value_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_hw_param_value_max(%struct.snd_pcm_hw_params* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.snd_interval*, align 8
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @hw_is_mask(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32*, i32** %7, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %15, %12
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @hw_param_mask_c(%struct.snd_pcm_hw_params* %18, i32 %19)
  %21 = call i32 @snd_mask_max(i32 %20)
  store i32 %21, i32* %4, align 4
  br label %45

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @hw_is_interval(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params* %27, i32 %28)
  store %struct.snd_interval* %29, %struct.snd_interval** %8, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %34 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = sub nsw i32 0, %36
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %32, %26
  %40 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %41 = call i32 @snd_interval_max(%struct.snd_interval* %40)
  store i32 %41, i32* %4, align 4
  br label %45

42:                                               ; preds = %22
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %39, %17
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @hw_is_mask(i32) #1

declare dso_local i32 @snd_mask_max(i32) #1

declare dso_local i32 @hw_param_mask_c(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i64 @hw_is_interval(i32) #1

declare dso_local %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_interval_max(%struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
