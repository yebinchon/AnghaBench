; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1011.c_rt1011_set_component_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1011.c_rt1011_set_component_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt1011_priv = type { i32, i32 }

@RT1011_CLK_DET = common dso_local global i32 0, align 4
@RT1011_EN_MCLK_DET_MASK = common dso_local global i32 0, align 4
@RT1011_FS_SYS_PRE_MCLK = common dso_local global i32 0, align 4
@RT1011_EN_MCLK_DET = common dso_local global i32 0, align 4
@RT1011_FS_SYS_PRE_BCLK = common dso_local global i32 0, align 4
@RT1011_FS_SYS_PRE_PLL1 = common dso_local global i32 0, align 4
@RT1011_FS_SYS_PRE_RCCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid clock id (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RT1011_CLK_2 = common dso_local global i32 0, align 4
@RT1011_FS_SYS_PRE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Sysclk is %dHz and clock id is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @rt1011_set_component_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1011_set_component_sysclk(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rt1011_priv*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = call %struct.rt1011_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.rt1011_priv* %15, %struct.rt1011_priv** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.rt1011_priv*, %struct.rt1011_priv** %12, align 8
  %18 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.rt1011_priv*, %struct.rt1011_priv** %12, align 8
  %24 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %81

28:                                               ; preds = %21, %5
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %30 = load i32, i32* @RT1011_CLK_DET, align 4
  %31 = load i32, i32* @RT1011_EN_MCLK_DET_MASK, align 4
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %29, i32 %30, i32 %31, i32 0)
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %55 [
    i32 130, label %34
    i32 131, label %43
    i32 129, label %47
    i32 128, label %51
  ]

34:                                               ; preds = %28
  %35 = load i32, i32* @RT1011_FS_SYS_PRE_MCLK, align 4
  %36 = load i32, i32* %13, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %13, align 4
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %39 = load i32, i32* @RT1011_CLK_DET, align 4
  %40 = load i32, i32* @RT1011_EN_MCLK_DET_MASK, align 4
  %41 = load i32, i32* @RT1011_EN_MCLK_DET, align 4
  %42 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %38, i32 %39, i32 %40, i32 %41)
  br label %63

43:                                               ; preds = %28
  %44 = load i32, i32* @RT1011_FS_SYS_PRE_BCLK, align 4
  %45 = load i32, i32* %13, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %13, align 4
  br label %63

47:                                               ; preds = %28
  %48 = load i32, i32* @RT1011_FS_SYS_PRE_PLL1, align 4
  %49 = load i32, i32* %13, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %13, align 4
  br label %63

51:                                               ; preds = %28
  %52 = load i32, i32* @RT1011_FS_SYS_PRE_RCCLK, align 4
  %53 = load i32, i32* %13, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %13, align 4
  br label %63

55:                                               ; preds = %28
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %57 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %81

63:                                               ; preds = %51, %47, %43, %34
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %65 = load i32, i32* @RT1011_CLK_2, align 4
  %66 = load i32, i32* @RT1011_FS_SYS_PRE_MASK, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.rt1011_priv*, %struct.rt1011_priv** %12, align 8
  %71 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.rt1011_priv*, %struct.rt1011_priv** %12, align 8
  %74 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %76 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79)
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %63, %55, %27
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local %struct.rt1011_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
