; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_register_dai.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_register_dai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dai_driver = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.snd_soc_dai = type { i32 }

@SND_SOC_DOBJ_PCM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Invalid dai type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@client_mutex = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to create DAI widgets %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_register_dai(%struct.snd_soc_component* %0, %struct.snd_soc_dai_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_soc_dai_driver*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.snd_soc_dai_driver* %1, %struct.snd_soc_dai_driver** %5, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %10 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %9)
  store %struct.snd_soc_dapm_context* %10, %struct.snd_soc_dapm_context** %6, align 8
  %11 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SND_SOC_DOBJ_PCM, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %19 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %5, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %53

29:                                               ; preds = %2
  %30 = call i32 @lockdep_assert_held(i32* @client_mutex)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %32 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %5, align 8
  %33 = call %struct.snd_soc_dai* @soc_add_dai(%struct.snd_soc_component* %31, %struct.snd_soc_dai_driver* %32, i32 0)
  store %struct.snd_soc_dai* %33, %struct.snd_soc_dai** %7, align 8
  %34 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %35 = icmp ne %struct.snd_soc_dai* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %53

39:                                               ; preds = %29
  %40 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %41 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %42 = call i32 @snd_soc_dapm_new_dai_widgets(%struct.snd_soc_dapm_context* %40, %struct.snd_soc_dai* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %47 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %45, %39
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %36, %17
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.snd_soc_dai* @soc_add_dai(%struct.snd_soc_component*, %struct.snd_soc_dai_driver*, i32) #1

declare dso_local i32 @snd_soc_dapm_new_dai_widgets(%struct.snd_soc_dapm_context*, %struct.snd_soc_dai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
