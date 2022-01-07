; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c___wcd9335_codec_enable_micbias.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c___wcd9335_codec_enable_micbias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_soc_component = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"MIC BIAS1\00", align 1
@MIC_BIAS_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"MIC BIAS2\00", align 1
@MIC_BIAS_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"MIC BIAS3\00", align 1
@MIC_BIAS_3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"MIC BIAS4\00", align 1
@MIC_BIAS_4 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MICB_ENABLE = common dso_local global i32 0, align 4
@MICB_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, i32)* @__wcd9335_codec_enable_micbias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wcd9335_codec_enable_micbias(%struct.snd_soc_dapm_widget* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %10)
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %6, align 8
  %12 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @strnstr(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 10)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @MIC_BIAS_1, align 4
  store i32 %18, i32* %7, align 4
  br label %49

19:                                               ; preds = %2
  %20 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strnstr(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @MIC_BIAS_2, align 4
  store i32 %26, i32* %7, align 4
  br label %48

27:                                               ; preds = %19
  %28 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @strnstr(i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @MIC_BIAS_3, align 4
  store i32 %34, i32* %7, align 4
  br label %47

35:                                               ; preds = %27
  %36 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %37 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @strnstr(i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @MIC_BIAS_4, align 4
  store i32 %42, i32* %7, align 4
  br label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %64

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %33
  br label %48

48:                                               ; preds = %47, %25
  br label %49

49:                                               ; preds = %48, %17
  %50 = load i32, i32* %5, align 4
  switch i32 %50, label %63 [
    i32 128, label %51
    i32 129, label %56
    i32 130, label %58
  ]

51:                                               ; preds = %49
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @MICB_ENABLE, align 4
  %55 = call i32 @wcd9335_micbias_control(%struct.snd_soc_component* %52, i32 %53, i32 %54, i32 1)
  br label %63

56:                                               ; preds = %49
  %57 = call i32 @usleep_range(i32 1000, i32 1100)
  br label %63

58:                                               ; preds = %49
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @MICB_DISABLE, align 4
  %62 = call i32 @wcd9335_micbias_control(%struct.snd_soc_component* %59, i32 %60, i32 %61, i32 1)
  br label %63

63:                                               ; preds = %49, %58, %56, %51
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %43
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local i64 @strnstr(i32, i8*, i32) #1

declare dso_local i32 @wcd9335_micbias_control(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
