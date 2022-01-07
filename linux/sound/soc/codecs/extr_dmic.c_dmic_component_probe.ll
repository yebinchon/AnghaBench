; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_dmic.c_dmic_component_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_dmic.c_dmic_component_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.dmic = type { i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"dmicen\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"wakeup-delay-ms\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"modeswitch-delay-ms\00", align 1
@wakeup_delay = common dso_local global i64 0, align 8
@modeswitch_delay = common dso_local global i64 0, align 8
@MAX_MODESWITCH_DELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @dmic_component_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmic_component_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.dmic*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %6 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.dmic* @devm_kzalloc(i32 %7, i32 24, i32 %8)
  store %struct.dmic* %9, %struct.dmic** %4, align 8
  %10 = load %struct.dmic*, %struct.dmic** %4, align 8
  %11 = icmp ne %struct.dmic* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %73

15:                                               ; preds = %1
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %20 = call i32 @devm_gpiod_get_optional(i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.dmic*, %struct.dmic** %4, align 8
  %22 = getelementptr inbounds %struct.dmic, %struct.dmic* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.dmic*, %struct.dmic** %4, align 8
  %24 = getelementptr inbounds %struct.dmic, %struct.dmic* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %15
  %29 = load %struct.dmic*, %struct.dmic** %4, align 8
  %30 = getelementptr inbounds %struct.dmic, %struct.dmic* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %73

33:                                               ; preds = %15
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %35 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dmic*, %struct.dmic** %4, align 8
  %38 = getelementptr inbounds %struct.dmic, %struct.dmic* %37, i32 0, i32 0
  %39 = call i32 @device_property_read_u32(i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64* %38)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %41 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dmic*, %struct.dmic** %4, align 8
  %44 = getelementptr inbounds %struct.dmic, %struct.dmic* %43, i32 0, i32 1
  %45 = call i32 @device_property_read_u32(i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64* %44)
  %46 = load i64, i64* @wakeup_delay, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %33
  %49 = load i64, i64* @wakeup_delay, align 8
  %50 = load %struct.dmic*, %struct.dmic** %4, align 8
  %51 = getelementptr inbounds %struct.dmic, %struct.dmic* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %33
  %53 = load i64, i64* @modeswitch_delay, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i64, i64* @modeswitch_delay, align 8
  %57 = load %struct.dmic*, %struct.dmic** %4, align 8
  %58 = getelementptr inbounds %struct.dmic, %struct.dmic* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %52
  %60 = load %struct.dmic*, %struct.dmic** %4, align 8
  %61 = getelementptr inbounds %struct.dmic, %struct.dmic* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MAX_MODESWITCH_DELAY, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i64, i64* @MAX_MODESWITCH_DELAY, align 8
  %67 = load %struct.dmic*, %struct.dmic** %4, align 8
  %68 = getelementptr inbounds %struct.dmic, %struct.dmic* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %71 = load %struct.dmic*, %struct.dmic** %4, align 8
  %72 = call i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component* %70, %struct.dmic* %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %28, %12
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.dmic* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @devm_gpiod_get_optional(i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @device_property_read_u32(i32, i8*, i64*) #1

declare dso_local i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component*, %struct.dmic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
