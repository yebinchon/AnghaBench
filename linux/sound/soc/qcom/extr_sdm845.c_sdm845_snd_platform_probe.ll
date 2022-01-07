; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_sdm845.c_sdm845_snd_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_sdm845.c_sdm845_snd_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.snd_soc_card = type { %struct.snd_soc_card*, %struct.snd_soc_card*, %struct.device*, i32, i32 }
%struct.sdm845_snd_data = type { %struct.sdm845_snd_data*, %struct.sdm845_snd_data*, %struct.device*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sdm845_snd_widgets = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error parsing OF data\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Sound card registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdm845_snd_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdm845_snd_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca %struct.sdm845_snd_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.snd_soc_card* @kzalloc(i32 32, i32 %10)
  store %struct.snd_soc_card* %11, %struct.snd_soc_card** %4, align 8
  %12 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %13 = icmp ne %struct.snd_soc_card* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %80

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.snd_soc_card* @kzalloc(i32 32, i32 %18)
  %20 = bitcast %struct.snd_soc_card* %19 to %struct.sdm845_snd_data*
  store %struct.sdm845_snd_data* %20, %struct.sdm845_snd_data** %5, align 8
  %21 = load %struct.sdm845_snd_data*, %struct.sdm845_snd_data** %5, align 8
  %22 = icmp ne %struct.sdm845_snd_data* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %76

26:                                               ; preds = %17
  %27 = load i32, i32* @sdm845_snd_widgets, align 4
  %28 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %29 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @sdm845_snd_widgets, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %33 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %36 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %35, i32 0, i32 2
  store %struct.device* %34, %struct.device** %36, align 8
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %39 = call i32 @dev_set_drvdata(%struct.device* %37, %struct.snd_soc_card* %38)
  %40 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %41 = call i32 @qcom_snd_parse_of(%struct.snd_soc_card* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %26
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %72

47:                                               ; preds = %26
  %48 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %49 = bitcast %struct.snd_soc_card* %48 to %struct.sdm845_snd_data*
  %50 = load %struct.sdm845_snd_data*, %struct.sdm845_snd_data** %5, align 8
  %51 = getelementptr inbounds %struct.sdm845_snd_data, %struct.sdm845_snd_data* %50, i32 0, i32 1
  store %struct.sdm845_snd_data* %49, %struct.sdm845_snd_data** %51, align 8
  %52 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %53 = load %struct.sdm845_snd_data*, %struct.sdm845_snd_data** %5, align 8
  %54 = bitcast %struct.sdm845_snd_data* %53 to %struct.snd_soc_card*
  %55 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %52, %struct.snd_soc_card* %54)
  %56 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %57 = call i32 @sdm845_add_ops(%struct.snd_soc_card* %56)
  %58 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %59 = call i32 @snd_soc_register_card(%struct.snd_soc_card* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %47
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %67

65:                                               ; preds = %47
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %80

67:                                               ; preds = %62
  %68 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %69 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %68, i32 0, i32 0
  %70 = load %struct.snd_soc_card*, %struct.snd_soc_card** %69, align 8
  %71 = call i32 @kfree(%struct.snd_soc_card* %70)
  br label %72

72:                                               ; preds = %67, %44
  %73 = load %struct.sdm845_snd_data*, %struct.sdm845_snd_data** %5, align 8
  %74 = bitcast %struct.sdm845_snd_data* %73 to %struct.snd_soc_card*
  %75 = call i32 @kfree(%struct.snd_soc_card* %74)
  br label %76

76:                                               ; preds = %72, %23
  %77 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %78 = call i32 @kfree(%struct.snd_soc_card* %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %76, %65, %14
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.snd_soc_card* @kzalloc(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.snd_soc_card*) #1

declare dso_local i32 @qcom_snd_parse_of(%struct.snd_soc_card*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.snd_soc_card*) #1

declare dso_local i32 @sdm845_add_ops(%struct.snd_soc_card*) #1

declare dso_local i32 @snd_soc_register_card(%struct.snd_soc_card*) #1

declare dso_local i32 @kfree(%struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
