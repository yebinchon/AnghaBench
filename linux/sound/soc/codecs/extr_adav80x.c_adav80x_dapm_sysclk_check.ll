; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adav80x.c_adav80x_dapm_sysclk_check.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adav80x.c_adav80x_dapm_sysclk_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_soc_component = type { i32 }
%struct.adav80x = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"PLL1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PLL2\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OSC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget*)* @adav80x_dapm_sysclk_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adav80x_dapm_sysclk_check(%struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.adav80x*, align 8
  %8 = alloca i8*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_widget** %5, align 8
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.adav80x* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.adav80x* %14, %struct.adav80x** %7, align 8
  %15 = load %struct.adav80x*, %struct.adav80x** %7, align 8
  %16 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %21 [
    i32 130, label %18
    i32 129, label %19
    i32 128, label %20
  ]

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %22

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %22

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

22:                                               ; preds = %20, %19, %18
  %23 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @strcmp(i32 %25, i8* %26)
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %22, %21
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.adav80x* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
