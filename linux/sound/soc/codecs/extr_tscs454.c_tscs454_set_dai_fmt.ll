; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_tscs454_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_tscs454_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.tscs454 = type { %struct.aif* }
%struct.aif = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @tscs454_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tscs454_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.tscs454*, align 8
  %8 = alloca %struct.aif*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.tscs454* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.tscs454* %14, %struct.tscs454** %7, align 8
  %15 = load %struct.tscs454*, %struct.tscs454** %7, align 8
  %16 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %15, i32 0, i32 0
  %17 = load %struct.aif*, %struct.aif** %16, align 8
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.aif, %struct.aif* %17, i64 %20
  store %struct.aif* %21, %struct.aif** %8, align 8
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %23 = load %struct.aif*, %struct.aif** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @set_aif_master_from_fmt(%struct.snd_soc_component* %22, %struct.aif* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %53

30:                                               ; preds = %2
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %32 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %33 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @set_aif_format_from_fmt(%struct.snd_soc_component* %31, i64 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %53

41:                                               ; preds = %30
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %43 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %44 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @set_aif_clock_format_from_fmt(%struct.snd_soc_component* %42, i64 %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %50, %39, %28
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.tscs454* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @set_aif_master_from_fmt(%struct.snd_soc_component*, %struct.aif*, i32) #1

declare dso_local i32 @set_aif_format_from_fmt(%struct.snd_soc_component*, i64, i32) #1

declare dso_local i32 @set_aif_clock_format_from_fmt(%struct.snd_soc_component*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
