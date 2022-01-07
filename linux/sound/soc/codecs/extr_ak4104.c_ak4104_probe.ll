; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4104.c_ak4104_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4104.c_ak4104_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.ak4104_private = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Unable to enable regulator: %d\0A\00", align 1
@AK4104_REG_CONTROL1 = common dso_local global i32 0, align 4
@AK4104_CONTROL1_PW = common dso_local global i32 0, align 4
@AK4104_CONTROL1_RSTN = common dso_local global i32 0, align 4
@AK4104_REG_TX = common dso_local global i32 0, align 4
@AK4104_TX_TXE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @ak4104_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4104_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.ak4104_private*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.ak4104_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.ak4104_private* %7, %struct.ak4104_private** %4, align 8
  %8 = load %struct.ak4104_private*, %struct.ak4104_private** %4, align 8
  %9 = getelementptr inbounds %struct.ak4104_private, %struct.ak4104_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @regulator_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %16 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %54

21:                                               ; preds = %1
  %22 = load %struct.ak4104_private*, %struct.ak4104_private** %4, align 8
  %23 = getelementptr inbounds %struct.ak4104_private, %struct.ak4104_private* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AK4104_REG_CONTROL1, align 4
  %26 = load i32, i32* @AK4104_CONTROL1_PW, align 4
  %27 = load i32, i32* @AK4104_CONTROL1_RSTN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @AK4104_CONTROL1_PW, align 4
  %30 = load i32, i32* @AK4104_CONTROL1_RSTN, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %28, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %48

36:                                               ; preds = %21
  %37 = load %struct.ak4104_private*, %struct.ak4104_private** %4, align 8
  %38 = getelementptr inbounds %struct.ak4104_private, %struct.ak4104_private* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AK4104_REG_TX, align 4
  %41 = load i32, i32* @AK4104_TX_TXE, align 4
  %42 = load i32, i32* @AK4104_TX_TXE, align 4
  %43 = call i32 @regmap_update_bits(i32 %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %48

47:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %54

48:                                               ; preds = %46, %35
  %49 = load %struct.ak4104_private*, %struct.ak4104_private** %4, align 8
  %50 = getelementptr inbounds %struct.ak4104_private, %struct.ak4104_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @regulator_disable(i32 %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %48, %47, %14
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.ak4104_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
