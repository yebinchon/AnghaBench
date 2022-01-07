; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_tm2_wm5110.c_tm2_stop_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_tm2_wm5110.c_tm2_stop_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32 }
%struct.tm2_machine_priv = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM5110_FLL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to stop FLL1: %d\0A\00", align 1
@ARIZONA_CLK_SYSCLK = common dso_local global i32 0, align 4
@ARIZONA_CLK_SRC_FLL1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to stop SYSCLK: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*)* @tm2_stop_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm2_stop_sysclk(%struct.snd_soc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_card*, align 8
  %4 = alloca %struct.tm2_machine_priv*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %3, align 8
  %7 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %8 = call %struct.tm2_machine_priv* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %7)
  store %struct.tm2_machine_priv* %8, %struct.tm2_machine_priv** %4, align 8
  %9 = load %struct.tm2_machine_priv*, %struct.tm2_machine_priv** %4, align 8
  %10 = getelementptr inbounds %struct.tm2_machine_priv, %struct.tm2_machine_priv* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %5, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %13 = load i32, i32* @WM5110_FLL1, align 4
  %14 = call i32 @snd_soc_component_set_pll(%struct.snd_soc_component* %12, i32 %13, i32 0, i32 0, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %19 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %39

24:                                               ; preds = %1
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %26 = load i32, i32* @ARIZONA_CLK_SYSCLK, align 4
  %27 = load i32, i32* @ARIZONA_CLK_SRC_FLL1, align 4
  %28 = call i32 @snd_soc_component_set_sysclk(%struct.snd_soc_component* %25, i32 %26, i32 %27, i32 0, i32 0)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %33 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %31, %17
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.tm2_machine_priv* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @snd_soc_component_set_pll(%struct.snd_soc_component*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_set_sysclk(%struct.snd_soc_component*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
