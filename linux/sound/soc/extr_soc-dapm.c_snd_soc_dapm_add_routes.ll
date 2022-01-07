; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_add_routes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_add_routes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_context = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_dapm_route = type { i8*, i32, i32 }

@SND_SOC_DAPM_CLASS_RUNTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ASoC: Failed to add route %s -> %s -> %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"direct\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_route* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.snd_soc_dapm_route*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_context** %4, align 8
  store %struct.snd_soc_dapm_route* %1, %struct.snd_soc_dapm_route** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* @SND_SOC_DAPM_CLASS_RUNTIME, align 4
  %15 = call i32 @mutex_lock_nested(i32* %13, i32 %14)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %52, %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %16
  %21 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %22 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %5, align 8
  %23 = call i32 @snd_soc_dapm_add_route(%struct.snd_soc_dapm_context* %21, %struct.snd_soc_dapm_route* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %20
  %27 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %28 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %5, align 8
  %31 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %5, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %5, align 8
  %39 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  br label %42

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i8* [ %40, %37 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %41 ]
  %44 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %5, align 8
  %45 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %43, i32 %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %42, %20
  %50 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %5, align 8
  %51 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %50, i32 1
  store %struct.snd_soc_dapm_route* %51, %struct.snd_soc_dapm_route** %5, align 8
  br label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %16

55:                                               ; preds = %16
  %56 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %57 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @snd_soc_dapm_add_route(%struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_route*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
