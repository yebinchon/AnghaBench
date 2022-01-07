; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-digital.c_msm8916_wcd_digital_get_clks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_msm8916-wcd-digital.c_msm8916_wcd_digital_get_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.msm8916_wcd_digital_priv = type { i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"ahbix-clk\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to get ahbix clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"failed to get mclk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.msm8916_wcd_digital_priv*)* @msm8916_wcd_digital_get_clks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm8916_wcd_digital_get_clks(%struct.platform_device* %0, %struct.msm8916_wcd_digital_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.msm8916_wcd_digital_priv*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.msm8916_wcd_digital_priv* %1, %struct.msm8916_wcd_digital_priv** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %6, align 8
  %9 = load %struct.device*, %struct.device** %6, align 8
  %10 = call i8* @devm_clk_get(%struct.device* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.msm8916_wcd_digital_priv*, %struct.msm8916_wcd_digital_priv** %5, align 8
  %12 = getelementptr inbounds %struct.msm8916_wcd_digital_priv, %struct.msm8916_wcd_digital_priv* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load %struct.msm8916_wcd_digital_priv*, %struct.msm8916_wcd_digital_priv** %5, align 8
  %14 = getelementptr inbounds %struct.msm8916_wcd_digital_priv, %struct.msm8916_wcd_digital_priv* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @IS_ERR(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.msm8916_wcd_digital_priv*, %struct.msm8916_wcd_digital_priv** %5, align 8
  %22 = getelementptr inbounds %struct.msm8916_wcd_digital_priv, %struct.msm8916_wcd_digital_priv* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @PTR_ERR(i8* %23)
  store i32 %24, i32* %3, align 4
  br label %43

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call i8* @devm_clk_get(%struct.device* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.msm8916_wcd_digital_priv*, %struct.msm8916_wcd_digital_priv** %5, align 8
  %29 = getelementptr inbounds %struct.msm8916_wcd_digital_priv, %struct.msm8916_wcd_digital_priv* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.msm8916_wcd_digital_priv*, %struct.msm8916_wcd_digital_priv** %5, align 8
  %31 = getelementptr inbounds %struct.msm8916_wcd_digital_priv, %struct.msm8916_wcd_digital_priv* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @IS_ERR(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %25
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.msm8916_wcd_digital_priv*, %struct.msm8916_wcd_digital_priv** %5, align 8
  %39 = getelementptr inbounds %struct.msm8916_wcd_digital_priv, %struct.msm8916_wcd_digital_priv* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @PTR_ERR(i8* %40)
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %35, %18
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
