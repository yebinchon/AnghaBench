; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_add_widgets.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_add_widgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.adau = type { i32 }

@adau17x1_controls = common dso_local global i32 0, align 4
@adau17x1_dapm_widgets = common dso_local global i32 0, align 4
@adau17x1_dsp_dapm_widgets = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to attach firmware: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adau17x1_add_widgets(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.adau*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %7)
  store %struct.snd_soc_dapm_context* %8, %struct.snd_soc_dapm_context** %4, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.adau* %10, %struct.adau** %5, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = load i32, i32* @adau17x1_controls, align 4
  %13 = load i32, i32* @adau17x1_controls, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %11, i32 %12, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %67

20:                                               ; preds = %1
  %21 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %22 = load i32, i32* @adau17x1_dapm_widgets, align 4
  %23 = load i32, i32* @adau17x1_dapm_widgets, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %21, i32 %22, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %67

30:                                               ; preds = %20
  %31 = load %struct.adau*, %struct.adau** %5, align 8
  %32 = call i64 @adau17x1_has_dsp(%struct.adau* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %30
  %35 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %36 = load i32, i32* @adau17x1_dsp_dapm_widgets, align 4
  %37 = load i32, i32* @adau17x1_dsp_dapm_widgets, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %35, i32 %36, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %67

44:                                               ; preds = %34
  %45 = load %struct.adau*, %struct.adau** %5, align 8
  %46 = getelementptr inbounds %struct.adau, %struct.adau* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %67

50:                                               ; preds = %44
  %51 = load %struct.adau*, %struct.adau** %5, align 8
  %52 = getelementptr inbounds %struct.adau, %struct.adau* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %55 = call i32 @sigmadsp_attach(i32 %53, %struct.snd_soc_component* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %60 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %67

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65, %30
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %58, %49, %42, %28, %18
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.adau* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32, i32) #1

declare dso_local i64 @adau17x1_has_dsp(%struct.adau*) #1

declare dso_local i32 @sigmadsp_attach(i32, %struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
