; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_seq_check_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_seq_check_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32 }
%struct.snd_soc_dapm_widget = type { i32, i32 (%struct.snd_soc_dapm_widget*, i32*, i32)*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"PRE_PMU\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"POST_PMU\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"PRE_PMD\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"POST_PMD\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"WILL_PMU\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"WILL_PMD\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Unknown event %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"pop test : %s %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"ASoC: %s: %s event failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_card*, %struct.snd_soc_dapm_widget*, i32)* @dapm_seq_check_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dapm_seq_check_event(%struct.snd_soc_card* %0, %struct.snd_soc_dapm_widget* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %4, align 8
  store %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_widget** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %17 [
    i32 130, label %11
    i32 132, label %12
    i32 131, label %13
    i32 133, label %14
    i32 128, label %15
    i32 129, label %16
  ]

11:                                               ; preds = %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i32 1, i32* %8, align 4
  br label %20

12:                                               ; preds = %3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  store i32 1, i32* %8, align 4
  br label %20

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %20

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %20

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  store i32 1, i32* %8, align 4
  br label %20

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %18)
  br label %84

20:                                               ; preds = %16, %15, %14, %13, %12, %11
  %21 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %84

27:                                               ; preds = %20
  %28 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %28, i32 0, i32 1
  %30 = load i32 (%struct.snd_soc_dapm_widget*, i32*, i32)*, i32 (%struct.snd_soc_dapm_widget*, i32*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.snd_soc_dapm_widget*, i32*, i32)* %30, null
  br i1 %31, label %32, label %84

32:                                               ; preds = %27
  %33 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %84

39:                                               ; preds = %32
  %40 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %41 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %40, i32 0, i32 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %46 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %49 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @pop_dbg(i32 %44, i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %50, i8* %51)
  %53 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %54 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %53, i32 0, i32 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = call i32 @soc_dapm_async_complete(%struct.TYPE_2__* %55)
  %57 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @trace_snd_soc_dapm_widget_event_start(%struct.snd_soc_dapm_widget* %57, i32 %58)
  %60 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %61 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %60, i32 0, i32 1
  %62 = load i32 (%struct.snd_soc_dapm_widget*, i32*, i32)*, i32 (%struct.snd_soc_dapm_widget*, i32*, i32)** %61, align 8
  %63 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 %62(%struct.snd_soc_dapm_widget* %63, i32* null, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @trace_snd_soc_dapm_widget_event_done(%struct.snd_soc_dapm_widget* %66, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %39
  %72 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %73 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %72, i32 0, i32 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %79 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %77, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %71, %39
  br label %84

84:                                               ; preds = %17, %26, %83, %32, %27
  ret void
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @pop_dbg(i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @soc_dapm_async_complete(%struct.TYPE_2__*) #1

declare dso_local i32 @trace_snd_soc_dapm_widget_event_start(%struct.snd_soc_dapm_widget*, i32) #1

declare dso_local i32 @trace_snd_soc_dapm_widget_event_done(%struct.snd_soc_dapm_widget*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
