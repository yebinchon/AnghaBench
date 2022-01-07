; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_force_enable_pin_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_force_enable_pin_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_context = type { i32 }
%struct.snd_soc_dapm_widget = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"ASoC: unknown pin %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ASoC: force enable pin %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"force enable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_dapm_force_enable_pin_unlocked(%struct.snd_soc_dapm_context* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_soc_dapm_widget*, align 8
  store %struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_context** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.snd_soc_dapm_widget* @dapm_find_widget(%struct.snd_soc_dapm_context* %7, i8* %8, i32 1)
  store %struct.snd_soc_dapm_widget* %9, %struct.snd_soc_dapm_widget** %6, align 8
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %11 = icmp ne %struct.snd_soc_dapm_widget* %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %44

20:                                               ; preds = %2
  %21 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %20
  %33 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %34 = call i32 @dapm_widget_invalidate_input_paths(%struct.snd_soc_dapm_widget* %33)
  %35 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %36 = call i32 @dapm_widget_invalidate_output_paths(%struct.snd_soc_dapm_widget* %35)
  %37 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %38 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %39

39:                                               ; preds = %32, %20
  %40 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %41 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %43 = call i32 @dapm_mark_dirty(%struct.snd_soc_dapm_widget* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.snd_soc_dapm_widget* @dapm_find_widget(%struct.snd_soc_dapm_context*, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @dapm_widget_invalidate_input_paths(%struct.snd_soc_dapm_widget*) #1

declare dso_local i32 @dapm_widget_invalidate_output_paths(%struct.snd_soc_dapm_widget*) #1

declare dso_local i32 @dapm_mark_dirty(%struct.snd_soc_dapm_widget*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
