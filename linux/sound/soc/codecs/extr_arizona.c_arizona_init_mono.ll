; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_init_mono.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_init_mono.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.arizona_priv = type { %struct.arizona* }
%struct.arizona = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@ARIZONA_MAX_OUTPUT = common dso_local global i32 0, align 4
@arizona_mono_routes = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arizona_init_mono(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.snd_soc_dapm_context*, align 8
  %4 = alloca %struct.arizona_priv*, align 8
  %5 = alloca %struct.arizona*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %7)
  store %struct.snd_soc_dapm_context* %8, %struct.snd_soc_dapm_context** %3, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %10 = call %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.arizona_priv* %10, %struct.arizona_priv** %4, align 8
  %11 = load %struct.arizona_priv*, %struct.arizona_priv** %4, align 8
  %12 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %11, i32 0, i32 0
  %13 = load %struct.arizona*, %struct.arizona** %12, align 8
  store %struct.arizona* %13, %struct.arizona** %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %36, %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ARIZONA_MAX_OUTPUT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = load %struct.arizona*, %struct.arizona** %5, align 8
  %20 = getelementptr inbounds %struct.arizona, %struct.arizona* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %3, align 8
  %30 = load i32*, i32** @arizona_mono_routes, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %29, i32* %33, i32 1)
  br label %35

35:                                               ; preds = %28, %18
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %14

39:                                               ; preds = %14
  ret i32 0
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
