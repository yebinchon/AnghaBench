; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1308.c_rt1308_set_component_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1308.c_rt1308_set_component_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt1308_priv = type { i32, i32 }

@RT1308_SEL_FS_SYS_SRC_MCLK = common dso_local global i32 0, align 4
@RT1308_CLK_DET = common dso_local global i32 0, align 4
@RT1308_MCLK_DET_EN_MASK = common dso_local global i32 0, align 4
@RT1308_MCLK_DET_EN = common dso_local global i32 0, align 4
@RT1308_SEL_FS_SYS_SRC_BCLK = common dso_local global i32 0, align 4
@RT1308_SEL_FS_SYS_SRC_PLL = common dso_local global i32 0, align 4
@RT1308_SEL_FS_SYS_SRC_RCCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid clock id (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RT1308_CLK_1 = common dso_local global i32 0, align 4
@RT1308_SEL_FS_SYS_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Sysclk is %dHz and clock id is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @rt1308_set_component_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1308_set_component_sysclk(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rt1308_priv*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = call %struct.rt1308_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.rt1308_priv* %15, %struct.rt1308_priv** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.rt1308_priv*, %struct.rt1308_priv** %12, align 8
  %18 = getelementptr inbounds %struct.rt1308_priv, %struct.rt1308_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.rt1308_priv*, %struct.rt1308_priv** %12, align 8
  %24 = getelementptr inbounds %struct.rt1308_priv, %struct.rt1308_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %77

28:                                               ; preds = %21, %5
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %51 [
    i32 130, label %30
    i32 131, label %39
    i32 129, label %43
    i32 128, label %47
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @RT1308_SEL_FS_SYS_SRC_MCLK, align 4
  %32 = load i32, i32* %13, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %13, align 4
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %35 = load i32, i32* @RT1308_CLK_DET, align 4
  %36 = load i32, i32* @RT1308_MCLK_DET_EN_MASK, align 4
  %37 = load i32, i32* @RT1308_MCLK_DET_EN, align 4
  %38 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %34, i32 %35, i32 %36, i32 %37)
  br label %59

39:                                               ; preds = %28
  %40 = load i32, i32* @RT1308_SEL_FS_SYS_SRC_BCLK, align 4
  %41 = load i32, i32* %13, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %13, align 4
  br label %59

43:                                               ; preds = %28
  %44 = load i32, i32* @RT1308_SEL_FS_SYS_SRC_PLL, align 4
  %45 = load i32, i32* %13, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %13, align 4
  br label %59

47:                                               ; preds = %28
  %48 = load i32, i32* @RT1308_SEL_FS_SYS_SRC_RCCLK, align 4
  %49 = load i32, i32* %13, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %13, align 4
  br label %59

51:                                               ; preds = %28
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %53 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %77

59:                                               ; preds = %47, %43, %39, %30
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %61 = load i32, i32* @RT1308_CLK_1, align 4
  %62 = load i32, i32* @RT1308_SEL_FS_SYS_MASK, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %60, i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.rt1308_priv*, %struct.rt1308_priv** %12, align 8
  %67 = getelementptr inbounds %struct.rt1308_priv, %struct.rt1308_priv* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.rt1308_priv*, %struct.rt1308_priv** %12, align 8
  %70 = getelementptr inbounds %struct.rt1308_priv, %struct.rt1308_priv* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %72 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @dev_dbg(i32 %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %59, %51, %27
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local %struct.rt1308_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
