; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_set_pin.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_set_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_context = type { i32 }
%struct.snd_soc_dapm_widget = type { i32, i64 }

@.str = private unnamed_addr constant [27 x i8] c"ASoC: DAPM unknown pin %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"pin configuration\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_context*, i8*, i32)* @snd_soc_dapm_set_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_soc_dapm_set_pin(%struct.snd_soc_dapm_context* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_context*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_dapm_widget*, align 8
  store %struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_context** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.snd_soc_dapm_widget* @dapm_find_widget(%struct.snd_soc_dapm_context* %9, i8* %10, i32 1)
  store %struct.snd_soc_dapm_widget* %11, %struct.snd_soc_dapm_widget** %8, align 8
  %12 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %13 = call i32 @dapm_assert_locked(%struct.snd_soc_dapm_context* %12)
  %14 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %15 = icmp ne %struct.snd_soc_dapm_widget* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %47

24:                                               ; preds = %3
  %25 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %32 = call i32 @dapm_mark_dirty(%struct.snd_soc_dapm_widget* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %34 = call i32 @dapm_widget_invalidate_input_paths(%struct.snd_soc_dapm_widget* %33)
  %35 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %36 = call i32 @dapm_widget_invalidate_output_paths(%struct.snd_soc_dapm_widget* %35)
  br label %37

37:                                               ; preds = %30, %24
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %40 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %45 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %37
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %16
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.snd_soc_dapm_widget* @dapm_find_widget(%struct.snd_soc_dapm_context*, i8*, i32) #1

declare dso_local i32 @dapm_assert_locked(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @dapm_mark_dirty(%struct.snd_soc_dapm_widget*, i8*) #1

declare dso_local i32 @dapm_widget_invalidate_input_paths(%struct.snd_soc_dapm_widget*) #1

declare dso_local i32 @dapm_widget_invalidate_output_paths(%struct.snd_soc_dapm_widget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
