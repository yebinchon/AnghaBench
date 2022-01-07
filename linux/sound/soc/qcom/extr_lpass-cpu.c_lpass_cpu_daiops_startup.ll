; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-cpu.c_lpass_cpu_daiops_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-cpu.c_lpass_cpu_daiops_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.lpass_data = type { i32*, i32* }

@.str = private unnamed_addr constant [36 x i8] c"error in enabling mi2s osr clk: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"error in enabling mi2s bit clk: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @lpass_cpu_daiops_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpass_cpu_daiops_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.lpass_data*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %9 = call %struct.lpass_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %8)
  store %struct.lpass_data* %9, %struct.lpass_data** %6, align 8
  %10 = load %struct.lpass_data*, %struct.lpass_data** %6, align 8
  %11 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %12, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_prepare_enable(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %63

30:                                               ; preds = %2
  %31 = load %struct.lpass_data*, %struct.lpass_data** %6, align 8
  %32 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %35 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @clk_prepare_enable(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %30
  %45 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %46 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.lpass_data*, %struct.lpass_data** %6, align 8
  %51 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %54 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %52, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @clk_disable_unprepare(i32 %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %44, %23
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.lpass_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
