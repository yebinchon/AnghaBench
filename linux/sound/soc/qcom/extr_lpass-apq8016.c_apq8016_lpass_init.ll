; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-apq8016.c_apq8016_lpass_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-apq8016.c_apq8016_lpass_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.lpass_data = type { i8*, i8* }

@.str = private unnamed_addr constant [16 x i8] c"pcnoc-mport-clk\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"error getting pcnoc-mport-clk: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Error enabling pcnoc-mport-clk: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"pcnoc-sway-clk\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"error getting pcnoc-sway-clk: %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Error enabling pcnoc_sway_clk: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @apq8016_lpass_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apq8016_lpass_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lpass_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.lpass_data* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.lpass_data* %8, %struct.lpass_data** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call i8* @devm_clk_get(%struct.device* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.lpass_data*, %struct.lpass_data** %4, align 8
  %14 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.lpass_data*, %struct.lpass_data** %4, align 8
  %16 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @IS_ERR(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.lpass_data*, %struct.lpass_data** %4, align 8
  %24 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @PTR_ERR(i8* %25)
  %27 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.lpass_data*, %struct.lpass_data** %4, align 8
  %29 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @PTR_ERR(i8* %30)
  store i32 %31, i32* %2, align 4
  br label %81

32:                                               ; preds = %1
  %33 = load %struct.lpass_data*, %struct.lpass_data** %4, align 8
  %34 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @clk_prepare_enable(i8* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %81

45:                                               ; preds = %32
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = call i8* @devm_clk_get(%struct.device* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.lpass_data*, %struct.lpass_data** %4, align 8
  %49 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.lpass_data*, %struct.lpass_data** %4, align 8
  %51 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @IS_ERR(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %45
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load %struct.lpass_data*, %struct.lpass_data** %4, align 8
  %59 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @PTR_ERR(i8* %60)
  %62 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load %struct.lpass_data*, %struct.lpass_data** %4, align 8
  %64 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @PTR_ERR(i8* %65)
  store i32 %66, i32* %2, align 4
  br label %81

67:                                               ; preds = %45
  %68 = load %struct.lpass_data*, %struct.lpass_data** %4, align 8
  %69 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @clk_prepare_enable(i8* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %81

80:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %74, %55, %39, %20
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.lpass_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
