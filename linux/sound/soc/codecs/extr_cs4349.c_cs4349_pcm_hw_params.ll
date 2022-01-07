; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4349.c_cs4349_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4349.c_cs4349_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs4349_private = type { i32, i32 }

@DIF_I2S = common dso_local global i32 0, align 4
@DIF_LEFT_JST = common dso_local global i32 0, align 4
@DIF_RGHT_JST16 = common dso_local global i32 0, align 4
@DIF_RGHT_JST24 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CS4349_MODE = common dso_local global i32 0, align 4
@DIF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @cs4349_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4349_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.cs4349_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call %struct.cs4349_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.cs4349_private* %16, %struct.cs4349_private** %9, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i32 @params_rate(%struct.snd_pcm_hw_params* %17)
  %19 = load %struct.cs4349_private*, %struct.cs4349_private** %9, align 8
  %20 = getelementptr inbounds %struct.cs4349_private, %struct.cs4349_private* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.cs4349_private*, %struct.cs4349_private** %9, align 8
  %22 = getelementptr inbounds %struct.cs4349_private, %struct.cs4349_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %39 [
    i32 130, label %24
    i32 129, label %26
    i32 128, label %28
  ]

24:                                               ; preds = %3
  %25 = load i32, i32* @DIF_I2S, align 4
  store i32 %25, i32* %10, align 4
  br label %42

26:                                               ; preds = %3
  %27 = load i32, i32* @DIF_LEFT_JST, align 4
  store i32 %27, i32* %10, align 4
  br label %42

28:                                               ; preds = %3
  %29 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %30 = call i32 @params_width(%struct.snd_pcm_hw_params* %29)
  switch i32 %30, label %35 [
    i32 16, label %31
    i32 24, label %33
  ]

31:                                               ; preds = %28
  %32 = load i32, i32* @DIF_RGHT_JST16, align 4
  store i32 %32, i32* %10, align 4
  br label %38

33:                                               ; preds = %28
  %34 = load i32, i32* @DIF_RGHT_JST24, align 4
  store i32 %34, i32* %10, align 4
  br label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %54

38:                                               ; preds = %33, %31
  br label %42

39:                                               ; preds = %3
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %54

42:                                               ; preds = %38, %26, %24
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %44 = load i32, i32* @CS4349_MODE, align 4
  %45 = load i32, i32* @DIF_MASK, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @MODE_FORMAT(i32 %46)
  %48 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %43, i32 %44, i32 %45, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %51, %39, %35
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.cs4349_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @MODE_FORMAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
