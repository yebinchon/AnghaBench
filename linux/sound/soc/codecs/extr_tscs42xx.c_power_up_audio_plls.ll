; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs42xx.c_power_up_audio_plls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs42xx.c_power_up_audio_plls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.tscs42xx = type { i32, i32 }

@RM_PLLCTL1C_PDB_PLL1 = common dso_local global i32 0, align 4
@RV_PLLCTL1C_PDB_PLL1_ENABLE = common dso_local global i32 0, align 4
@RM_PLLCTL1C_PDB_PLL2 = common dso_local global i32 0, align 4
@RV_PLLCTL1C_PDB_PLL2_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unrecognized PLL output freq (%d)\0A\00", align 1
@R_PLLCTL1C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to turn PLL on (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Failed to lock plls\0A\00", align 1
@ENOMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @power_up_audio_plls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_up_audio_plls(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.tscs42xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.tscs42xx* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.tscs42xx* %10, %struct.tscs42xx** %4, align 8
  %11 = load %struct.tscs42xx*, %struct.tscs42xx** %4, align 8
  %12 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sample_rate_to_pll_freq_out(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %22 [
    i32 122880000, label %16
    i32 112896000, label %19
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @RM_PLLCTL1C_PDB_PLL1, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @RV_PLLCTL1C_PDB_PLL1_ENABLE, align 4
  store i32 %18, i32* %8, align 4
  br label %31

19:                                               ; preds = %1
  %20 = load i32, i32* @RM_PLLCTL1C_PDB_PLL2, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @RV_PLLCTL1C_PDB_PLL2_ENABLE, align 4
  store i32 %21, i32* %8, align 4
  br label %31

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %65

31:                                               ; preds = %19, %16
  %32 = load %struct.tscs42xx*, %struct.tscs42xx** %4, align 8
  %33 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %36 = load i32, i32* @R_PLLCTL1C, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %44 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (i32, i8*, ...) @dev_err(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %60

48:                                               ; preds = %31
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %50 = call i32 @plls_locked(%struct.snd_soc_component* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %54 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @ENOMSG, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %60

59:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %52, %42
  %61 = load %struct.tscs42xx*, %struct.tscs42xx** %4, align 8
  %62 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %60, %22
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.tscs42xx* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @sample_rate_to_pll_freq_out(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @plls_locked(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
