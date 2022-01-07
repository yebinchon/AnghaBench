; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_apq8096.c_apq8096_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_apq8096.c_apq8096_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.snd_soc_card = type { %struct.snd_soc_card*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error parsing OF data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @apq8096_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apq8096_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.snd_soc_card* @kzalloc(i32 16, i32 %9)
  store %struct.snd_soc_card* %10, %struct.snd_soc_card** %4, align 8
  %11 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %12 = icmp ne %struct.snd_soc_card* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %48

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %19 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %18, i32 0, i32 1
  store %struct.device* %17, %struct.device** %19, align 8
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %22 = call i32 @dev_set_drvdata(%struct.device* %20, %struct.snd_soc_card* %21)
  %23 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %24 = call i32 @qcom_snd_parse_of(%struct.snd_soc_card* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %44

30:                                               ; preds = %16
  %31 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %32 = call i32 @apq8096_add_be_ops(%struct.snd_soc_card* %31)
  %33 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %34 = call i32 @snd_soc_register_card(%struct.snd_soc_card* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %39

38:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %48

39:                                               ; preds = %37
  %40 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %41 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %40, i32 0, i32 0
  %42 = load %struct.snd_soc_card*, %struct.snd_soc_card** %41, align 8
  %43 = call i32 @kfree(%struct.snd_soc_card* %42)
  br label %44

44:                                               ; preds = %39, %27
  %45 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %46 = call i32 @kfree(%struct.snd_soc_card* %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %38, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.snd_soc_card* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.snd_soc_card*) #1

declare dso_local i32 @qcom_snd_parse_of(%struct.snd_soc_card*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @apq8096_add_be_ops(%struct.snd_soc_card*) #1

declare dso_local i32 @snd_soc_register_card(%struct.snd_soc_card*) #1

declare dso_local i32 @kfree(%struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
