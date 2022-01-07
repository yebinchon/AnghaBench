; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun8i-codec-analog.c_sun8i_codec_add_lineout.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun8i-codec-analog.c_sun8i_codec_add_lineout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.device* }
%struct.device = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }

@sun8i_codec_lineout_controls = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to add Line Out controls: %d\0A\00", align 1
@sun8i_codec_lineout_widgets = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to add Line Out DAPM widgets: %d\0A\00", align 1
@sun8i_codec_lineout_routes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to add Line Out DAPM routes: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @sun8i_codec_add_lineout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_codec_add_lineout(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %7)
  store %struct.snd_soc_dapm_context* %8, %struct.snd_soc_dapm_context** %4, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = load i32, i32* @sun8i_codec_lineout_controls, align 4
  %14 = load i32, i32* @sun8i_codec_lineout_controls, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %12, i32 %13, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %51

24:                                               ; preds = %1
  %25 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %26 = load i32, i32* @sun8i_codec_lineout_widgets, align 4
  %27 = load i32, i32* @sun8i_codec_lineout_widgets, align 4
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  %29 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %25, i32 %26, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %51

37:                                               ; preds = %24
  %38 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %39 = load i32, i32* @sun8i_codec_lineout_routes, align 4
  %40 = load i32, i32* @sun8i_codec_lineout_routes, align 4
  %41 = call i32 @ARRAY_SIZE(i32 %40)
  %42 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %38, i32 %39, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %45, %32, %19
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
