; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2602.c_ssm260x_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2602.c_ssm260x_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.ssm2602_priv = type { i32, i32 }

@SSM2602_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to issue reset: %d\0A\00", align 1
@SSM2602_LINVOL = common dso_local global i32 0, align 4
@LINVOL_LRIN_BOTH = common dso_local global i32 0, align 4
@SSM2602_RINVOL = common dso_local global i32 0, align 4
@RINVOL_RLIN_BOTH = common dso_local global i32 0, align 4
@SSM2602_APANA = common dso_local global i32 0, align 4
@APANA_SELECT_DAC = common dso_local global i32 0, align 4
@APANA_ENABLE_MIC_BOOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @ssm260x_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssm260x_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.ssm2602_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.ssm2602_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.ssm2602_priv* %7, %struct.ssm2602_priv** %4, align 8
  %8 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %4, align 8
  %9 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SSM2602_RESET, align 4
  %12 = call i32 @regmap_write(i32 %10, i32 %11, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %56

22:                                               ; preds = %1
  %23 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %4, align 8
  %24 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SSM2602_LINVOL, align 4
  %27 = load i32, i32* @LINVOL_LRIN_BOTH, align 4
  %28 = load i32, i32* @LINVOL_LRIN_BOTH, align 4
  %29 = call i32 @regmap_update_bits(i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %4, align 8
  %31 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SSM2602_RINVOL, align 4
  %34 = load i32, i32* @RINVOL_RLIN_BOTH, align 4
  %35 = load i32, i32* @RINVOL_RLIN_BOTH, align 4
  %36 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %4, align 8
  %38 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SSM2602_APANA, align 4
  %41 = load i32, i32* @APANA_SELECT_DAC, align 4
  %42 = load i32, i32* @APANA_ENABLE_MIC_BOOST, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @regmap_write(i32 %39, i32 %40, i32 %43)
  %45 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %4, align 8
  %46 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %54 [
    i32 129, label %48
    i32 128, label %51
  ]

48:                                               ; preds = %22
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %50 = call i32 @ssm2602_component_probe(%struct.snd_soc_component* %49)
  store i32 %50, i32* %5, align 4
  br label %54

51:                                               ; preds = %22
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %53 = call i32 @ssm2604_component_probe(%struct.snd_soc_component* %52)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %22, %51, %48
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %15
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.ssm2602_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ssm2602_component_probe(%struct.snd_soc_component*) #1

declare dso_local i32 @ssm2604_component_probe(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
