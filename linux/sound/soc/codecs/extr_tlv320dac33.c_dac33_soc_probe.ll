; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_soc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_soc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32, i32 }
%struct.tlv320dac33_priv = type { i32, i32, %struct.snd_soc_component* }

@.str = private unnamed_addr constant [34 x i8] c"Failed to power up component: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to read chip ID: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@dac33_interrupt_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Could not request IRQ%d (%d)\0A\00", align 1
@dac33_work = common dso_local global i32 0, align 4
@dac33_mode_snd_controls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @dac33_soc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac33_soc_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.tlv320dac33_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %6 = call %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %5)
  store %struct.tlv320dac33_priv* %6, %struct.tlv320dac33_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %3, align 8
  %9 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %8, i32 0, i32 2
  store %struct.snd_soc_component* %7, %struct.snd_soc_component** %9, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %11 = call i32 @dac33_hard_power(%struct.snd_soc_component* %10, i32 1)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %16 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %87

20:                                               ; preds = %1
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %22 = call i32 @dac33_read_id(%struct.snd_soc_component* %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %24 = call i32 @dac33_hard_power(%struct.snd_soc_component* %23, i32 0)
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %29 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %87

35:                                               ; preds = %20
  %36 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %3, align 8
  %37 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %75

40:                                               ; preds = %35
  %41 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %3, align 8
  %42 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @dac33_interrupt_handler, align 4
  %45 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %47 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %50 = call i32 @request_irq(i32 %43, i32 %44, i32 %45, i32 %48, %struct.snd_soc_component* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %40
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %55 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %3, align 8
  %58 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %3, align 8
  %63 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  br label %64

64:                                               ; preds = %53, %40
  %65 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %3, align 8
  %66 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %3, align 8
  %71 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %70, i32 0, i32 1
  %72 = load i32, i32* @dac33_work, align 4
  %73 = call i32 @INIT_WORK(i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %64
  br label %75

75:                                               ; preds = %74, %35
  %76 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %3, align 8
  %77 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %82 = load i32, i32* @dac33_mode_snd_controls, align 4
  %83 = load i32, i32* @dac33_mode_snd_controls, align 4
  %84 = call i32 @ARRAY_SIZE(i32 %83)
  %85 = call i32 @snd_soc_add_component_controls(%struct.snd_soc_component* %81, i32 %82, i32 %84)
  br label %86

86:                                               ; preds = %80, %75
  br label %87

87:                                               ; preds = %86, %27, %14
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dac33_hard_power(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @dac33_read_id(%struct.snd_soc_component*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.snd_soc_component*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @snd_soc_add_component_controls(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
