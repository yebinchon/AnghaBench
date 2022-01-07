; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4270.c_cs4270_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4270.c_cs4270_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs4270_private = type { i32 }

@CS4270_MUTE = common dso_local global i32 0, align 4
@CS4270_MUTE_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"i2c write failed\0A\00", align 1
@CS4270_TRANS = common dso_local global i32 0, align 4
@CS4270_TRANS_SOFT = common dso_local global i32 0, align 4
@CS4270_TRANS_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @cs4270_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4270_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.cs4270_private*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.cs4270_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.cs4270_private* %7, %struct.cs4270_private** %4, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = load i32, i32* @CS4270_MUTE, align 4
  %10 = load i32, i32* @CS4270_MUTE_AUTO, align 4
  %11 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %8, i32 %9, i32 %10, i32 0)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %16 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %45

20:                                               ; preds = %1
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %22 = load i32, i32* @CS4270_TRANS, align 4
  %23 = load i32, i32* @CS4270_TRANS_SOFT, align 4
  %24 = load i32, i32* @CS4270_TRANS_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %21, i32 %22, i32 %25, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %31 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %45

35:                                               ; preds = %20
  %36 = load %struct.cs4270_private*, %struct.cs4270_private** %4, align 8
  %37 = getelementptr inbounds %struct.cs4270_private, %struct.cs4270_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ARRAY_SIZE(i32 %38)
  %40 = load %struct.cs4270_private*, %struct.cs4270_private** %4, align 8
  %41 = getelementptr inbounds %struct.cs4270_private, %struct.cs4270_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @regulator_bulk_enable(i32 %39, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %35, %29, %14
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.cs4270_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
