; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98088.c_max98088_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98088.c_max98088_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.max98088_priv = type { i32, i64, i64, i64, i64, i64, i64, %struct.max98088_cdata*, i64, i32 }
%struct.max98088_cdata = type { i32, i32, i64 }

@M98088_REG_FF_REV_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to read device revision: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"revision %c\0A\00", align 1
@M98088_REG_51_PWR_SYS = common dso_local global i32 0, align 4
@M98088_PWRSV = common dso_local global i32 0, align 4
@M98088_REG_0F_IRQ_ENABLE = common dso_local global i32 0, align 4
@M98088_REG_22_MIX_DAC = common dso_local global i32 0, align 4
@M98088_DAI1L_TO_DACL = common dso_local global i32 0, align 4
@M98088_DAI2L_TO_DACL = common dso_local global i32 0, align 4
@M98088_DAI1R_TO_DACR = common dso_local global i32 0, align 4
@M98088_DAI2R_TO_DACR = common dso_local global i32 0, align 4
@M98088_REG_4E_BIAS_CNTL = common dso_local global i32 0, align 4
@M98088_REG_50_DAC_BIAS2 = common dso_local global i32 0, align 4
@M98088_REG_16_DAI1_IOCFG = common dso_local global i32 0, align 4
@M98088_S1NORMAL = common dso_local global i32 0, align 4
@M98088_SDATA = common dso_local global i32 0, align 4
@M98088_REG_1E_DAI2_IOCFG = common dso_local global i32 0, align 4
@M98088_S2NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @max98088_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98088_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.max98088_priv*, align 8
  %4 = alloca %struct.max98088_cdata*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = call %struct.max98088_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.max98088_priv* %7, %struct.max98088_priv** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.max98088_priv*, %struct.max98088_priv** %3, align 8
  %9 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %8, i32 0, i32 9
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @regcache_mark_dirty(i32 %10)
  %12 = load %struct.max98088_priv*, %struct.max98088_priv** %3, align 8
  %13 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 8
  %14 = load %struct.max98088_priv*, %struct.max98088_priv** %3, align 8
  %15 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %14, i32 0, i32 8
  store i64 0, i64* %15, align 8
  %16 = load %struct.max98088_priv*, %struct.max98088_priv** %3, align 8
  %17 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %16, i32 0, i32 7
  %18 = load %struct.max98088_cdata*, %struct.max98088_cdata** %17, align 8
  %19 = getelementptr inbounds %struct.max98088_cdata, %struct.max98088_cdata* %18, i64 0
  store %struct.max98088_cdata* %19, %struct.max98088_cdata** %4, align 8
  %20 = load %struct.max98088_cdata*, %struct.max98088_cdata** %4, align 8
  %21 = getelementptr inbounds %struct.max98088_cdata, %struct.max98088_cdata* %20, i32 0, i32 0
  store i32 -1, i32* %21, align 8
  %22 = load %struct.max98088_cdata*, %struct.max98088_cdata** %4, align 8
  %23 = getelementptr inbounds %struct.max98088_cdata, %struct.max98088_cdata* %22, i32 0, i32 1
  store i32 -1, i32* %23, align 4
  %24 = load %struct.max98088_cdata*, %struct.max98088_cdata** %4, align 8
  %25 = getelementptr inbounds %struct.max98088_cdata, %struct.max98088_cdata* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.max98088_priv*, %struct.max98088_priv** %3, align 8
  %27 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %26, i32 0, i32 7
  %28 = load %struct.max98088_cdata*, %struct.max98088_cdata** %27, align 8
  %29 = getelementptr inbounds %struct.max98088_cdata, %struct.max98088_cdata* %28, i64 1
  store %struct.max98088_cdata* %29, %struct.max98088_cdata** %4, align 8
  %30 = load %struct.max98088_cdata*, %struct.max98088_cdata** %4, align 8
  %31 = getelementptr inbounds %struct.max98088_cdata, %struct.max98088_cdata* %30, i32 0, i32 0
  store i32 -1, i32* %31, align 8
  %32 = load %struct.max98088_cdata*, %struct.max98088_cdata** %4, align 8
  %33 = getelementptr inbounds %struct.max98088_cdata, %struct.max98088_cdata* %32, i32 0, i32 1
  store i32 -1, i32* %33, align 4
  %34 = load %struct.max98088_cdata*, %struct.max98088_cdata** %4, align 8
  %35 = getelementptr inbounds %struct.max98088_cdata, %struct.max98088_cdata* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.max98088_priv*, %struct.max98088_priv** %3, align 8
  %37 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load %struct.max98088_priv*, %struct.max98088_priv** %3, align 8
  %39 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %38, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = load %struct.max98088_priv*, %struct.max98088_priv** %3, align 8
  %41 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.max98088_priv*, %struct.max98088_priv** %3, align 8
  %43 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.max98088_priv*, %struct.max98088_priv** %3, align 8
  %45 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.max98088_priv*, %struct.max98088_priv** %3, align 8
  %47 = getelementptr inbounds %struct.max98088_priv, %struct.max98088_priv* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %49 = load i32, i32* @M98088_REG_FF_REV_ID, align 4
  %50 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %1
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %55 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %104

59:                                               ; preds = %1
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %61 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 %63, 64
  %65 = add nsw i32 %64, 65
  %66 = call i32 @dev_info(i32 %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %68 = load i32, i32* @M98088_REG_51_PWR_SYS, align 4
  %69 = load i32, i32* @M98088_PWRSV, align 4
  %70 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %67, i32 %68, i32 %69)
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %72 = load i32, i32* @M98088_REG_0F_IRQ_ENABLE, align 4
  %73 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %71, i32 %72, i32 0)
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %75 = load i32, i32* @M98088_REG_22_MIX_DAC, align 4
  %76 = load i32, i32* @M98088_DAI1L_TO_DACL, align 4
  %77 = load i32, i32* @M98088_DAI2L_TO_DACL, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @M98088_DAI1R_TO_DACR, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @M98088_DAI2R_TO_DACR, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %74, i32 %75, i32 %82)
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %85 = load i32, i32* @M98088_REG_4E_BIAS_CNTL, align 4
  %86 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %84, i32 %85, i32 240)
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %88 = load i32, i32* @M98088_REG_50_DAC_BIAS2, align 4
  %89 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %87, i32 %88, i32 15)
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %91 = load i32, i32* @M98088_REG_16_DAI1_IOCFG, align 4
  %92 = load i32, i32* @M98088_S1NORMAL, align 4
  %93 = load i32, i32* @M98088_SDATA, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %90, i32 %91, i32 %94)
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %97 = load i32, i32* @M98088_REG_1E_DAI2_IOCFG, align 4
  %98 = load i32, i32* @M98088_S2NORMAL, align 4
  %99 = load i32, i32* @M98088_SDATA, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %96, i32 %97, i32 %100)
  %102 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %103 = call i32 @max98088_handle_pdata(%struct.snd_soc_component* %102)
  br label %104

104:                                              ; preds = %59, %53
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.max98088_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @max98088_handle_pdata(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
