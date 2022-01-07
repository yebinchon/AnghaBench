; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_slim_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_slim_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_device = type { %struct.device }
%struct.device = type { i32 }
%struct.wcd9335_codec = type { %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Error parsing DT: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slim_device*)* @wcd9335_slim_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_slim_probe(%struct.slim_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slim_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.wcd9335_codec*, align 8
  %6 = alloca i32, align 4
  store %struct.slim_device* %0, %struct.slim_device** %3, align 8
  %7 = load %struct.slim_device*, %struct.slim_device** %3, align 8
  %8 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.wcd9335_codec* @devm_kzalloc(%struct.device* %9, i32 8, i32 %10)
  store %struct.wcd9335_codec* %11, %struct.wcd9335_codec** %5, align 8
  %12 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %5, align 8
  %13 = icmp ne %struct.wcd9335_codec* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %41

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %5, align 8
  %20 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %19, i32 0, i32 0
  store %struct.device* %18, %struct.device** %20, align 8
  %21 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %5, align 8
  %22 = call i32 @wcd9335_parse_dt(%struct.wcd9335_codec* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %41

30:                                               ; preds = %17
  %31 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %5, align 8
  %32 = call i32 @wcd9335_power_on_reset(%struct.wcd9335_codec* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %41

37:                                               ; preds = %30
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %5, align 8
  %40 = call i32 @dev_set_drvdata(%struct.device* %38, %struct.wcd9335_codec* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %35, %25, %14
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.wcd9335_codec* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @wcd9335_parse_dt(%struct.wcd9335_codec*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @wcd9335_power_on_reset(%struct.wcd9335_codec*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.wcd9335_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
