; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-spdifin.c_axg_spdifin_sample_mode_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-spdifin.c_axg_spdifin_sample_mode_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.axg_spdifin = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SPDIFIN_MODE_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"reference clock rate set failed\0A\00", align 1
@SPDIFIN_CTRL1 = common dso_local global i32 0, align 4
@SPDIFIN_CTRL1_BASE_TIMER = common dso_local global i32 0, align 4
@SPDIFIN_CTRL0 = common dso_local global i32 0, align 4
@SPDIFIN_CTRL0_WIDTH_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, %struct.axg_spdifin*)* @axg_spdifin_sample_mode_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_spdifin_sample_mode_config(%struct.snd_soc_dai* %0, %struct.axg_spdifin* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.axg_spdifin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store %struct.axg_spdifin* %1, %struct.axg_spdifin** %5, align 8
  %11 = load i32, i32* @SPDIFIN_MODE_NUM, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %9, align 4
  %13 = load %struct.axg_spdifin*, %struct.axg_spdifin** %5, align 8
  %14 = getelementptr inbounds %struct.axg_spdifin, %struct.axg_spdifin* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.axg_spdifin*, %struct.axg_spdifin** %5, align 8
  %17 = getelementptr inbounds %struct.axg_spdifin, %struct.axg_spdifin* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_set_rate(i32 %15, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %88

30:                                               ; preds = %2
  %31 = load %struct.axg_spdifin*, %struct.axg_spdifin** %5, align 8
  %32 = getelementptr inbounds %struct.axg_spdifin, %struct.axg_spdifin* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clk_get_rate(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.axg_spdifin*, %struct.axg_spdifin** %5, align 8
  %36 = getelementptr inbounds %struct.axg_spdifin, %struct.axg_spdifin* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SPDIFIN_CTRL1, align 4
  %39 = load i32, i32* @SPDIFIN_CTRL1_BASE_TIMER, align 4
  %40 = load i32, i32* @SPDIFIN_CTRL1_BASE_TIMER, align 4
  %41 = load i32, i32* %6, align 4
  %42 = udiv i32 %41, 1000
  %43 = call i32 @FIELD_PREP(i32 %40, i32 %42)
  %44 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %39, i32 %43)
  %45 = load %struct.axg_spdifin*, %struct.axg_spdifin** %5, align 8
  %46 = getelementptr inbounds %struct.axg_spdifin, %struct.axg_spdifin* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SPDIFIN_CTRL0, align 4
  %49 = load i32, i32* @SPDIFIN_CTRL0_WIDTH_SEL, align 4
  %50 = load i32, i32* @SPDIFIN_CTRL0_WIDTH_SEL, align 4
  %51 = call i32 @regmap_update_bits(i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.axg_spdifin*, %struct.axg_spdifin** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @axg_spdifin_mode_timer(%struct.axg_spdifin* %52, i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load %struct.axg_spdifin*, %struct.axg_spdifin** %5, align 8
  %57 = getelementptr inbounds %struct.axg_spdifin, %struct.axg_spdifin* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @axg_spdifin_write_timer(i32 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %84, %30
  %63 = load i32, i32* %9, align 4
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  %65 = load %struct.axg_spdifin*, %struct.axg_spdifin** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @axg_spdifin_mode_timer(%struct.axg_spdifin* %65, i32 %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load %struct.axg_spdifin*, %struct.axg_spdifin** %5, align 8
  %70 = getelementptr inbounds %struct.axg_spdifin, %struct.axg_spdifin* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @axg_spdifin_write_timer(i32 %71, i32 %72, i32 %73)
  %75 = load %struct.axg_spdifin*, %struct.axg_spdifin** %5, align 8
  %76 = getelementptr inbounds %struct.axg_spdifin, %struct.axg_spdifin* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %7, align 4
  %81 = add i32 %79, %80
  %82 = call i32 @axg_spdifin_write_threshold(i32 %77, i32 %78, i32 %81)
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %62
  %85 = load i32, i32* %9, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %62, label %87

87:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %24
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @axg_spdifin_mode_timer(%struct.axg_spdifin*, i32, i32) #1

declare dso_local i32 @axg_spdifin_write_timer(i32, i32, i32) #1

declare dso_local i32 @axg_spdifin_write_threshold(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
