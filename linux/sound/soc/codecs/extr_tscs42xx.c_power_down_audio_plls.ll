; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs42xx.c_power_down_audio_plls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs42xx.c_power_down_audio_plls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.tscs42xx = type { i32 }

@R_PLLCTL1C = common dso_local global i32 0, align 4
@RM_PLLCTL1C_PDB_PLL1 = common dso_local global i32 0, align 4
@RV_PLLCTL1C_PDB_PLL1_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to turn PLL off (%d)\0A\00", align 1
@RM_PLLCTL1C_PDB_PLL2 = common dso_local global i32 0, align 4
@RV_PLLCTL1C_PDB_PLL2_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @power_down_audio_plls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_down_audio_plls(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.tscs42xx*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.tscs42xx* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.tscs42xx* %6, %struct.tscs42xx** %3, align 8
  %7 = load %struct.tscs42xx*, %struct.tscs42xx** %3, align 8
  %8 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %11 = load i32, i32* @R_PLLCTL1C, align 4
  %12 = load i32, i32* @RM_PLLCTL1C_PDB_PLL1, align 4
  %13 = load i32, i32* @RV_PLLCTL1C_PDB_PLL1_DISABLE, align 4
  %14 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %10, i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %19 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %38

23:                                               ; preds = %1
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %25 = load i32, i32* @R_PLLCTL1C, align 4
  %26 = load i32, i32* @RM_PLLCTL1C_PDB_PLL2, align 4
  %27 = load i32, i32* @RV_PLLCTL1C_PDB_PLL2_DISABLE, align 4
  %28 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %33 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %38

37:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %31, %17
  %39 = load %struct.tscs42xx*, %struct.tscs42xx** %3, align 8
  %40 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.tscs42xx* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
