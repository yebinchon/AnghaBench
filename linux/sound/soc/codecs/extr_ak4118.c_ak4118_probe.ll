; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4118.c_ak4118_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4118.c_ak4118_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.ak4118_priv = type { i32, i32, %struct.snd_soc_component* }

@AK4118_REG_INT1_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to write regmap 0x%x 0x%x: %d\0A\00", align 1
@AK4118_REG_RX_DETECT = common dso_local global i32 0, align 4
@ak4118_iec958_controls = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to add component kcontrols: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @ak4118_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4118_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.ak4118_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.ak4118_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.ak4118_priv* %7, %struct.ak4118_priv** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = load %struct.ak4118_priv*, %struct.ak4118_priv** %4, align 8
  %10 = getelementptr inbounds %struct.ak4118_priv, %struct.ak4118_priv* %9, i32 0, i32 2
  store %struct.snd_soc_component* %8, %struct.snd_soc_component** %10, align 8
  %11 = load %struct.ak4118_priv*, %struct.ak4118_priv** %4, align 8
  %12 = getelementptr inbounds %struct.ak4118_priv, %struct.ak4118_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @gpiod_set_value(i32 %13, i32 0)
  %15 = load %struct.ak4118_priv*, %struct.ak4118_priv** %4, align 8
  %16 = getelementptr inbounds %struct.ak4118_priv, %struct.ak4118_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AK4118_REG_INT1_MASK, align 4
  %19 = call i32 @regmap_write(i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %24 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AK4118_REG_INT1_MASK, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26, i32 0, i32 %27)
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %62

30:                                               ; preds = %1
  %31 = load %struct.ak4118_priv*, %struct.ak4118_priv** %4, align 8
  %32 = getelementptr inbounds %struct.ak4118_priv, %struct.ak4118_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @AK4118_REG_RX_DETECT, align 4
  %35 = call i32 @regmap_write(i32 %33, i32 %34, i32 255)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %40 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @AK4118_REG_RX_DETECT, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %42, i32 255, i32 %43)
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %62

46:                                               ; preds = %30
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %48 = load i32, i32* @ak4118_iec958_controls, align 4
  %49 = load i32, i32* @ak4118_iec958_controls, align 4
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %47, i32 %48, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %56 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %54, %38, %22
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.ak4118_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
