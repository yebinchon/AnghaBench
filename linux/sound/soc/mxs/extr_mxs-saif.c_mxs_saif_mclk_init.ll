; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-saif.c_mxs_saif_mclk_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-saif.c_mxs_saif_mclk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mxs_saif = type { i64, i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"mxs_saif_mclk\00", align 1
@SAIF_CTRL = common dso_local global i64 0, align 8
@BP_SAIF_CTRL_BITCLK_MULT_RATE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to register mclk: %d\0A\00", align 1
@of_clk_src_simple_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mxs_saif_mclk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_saif_mclk_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mxs_saif*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.mxs_saif* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.mxs_saif* %9, %struct.mxs_saif** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load %struct.mxs_saif*, %struct.mxs_saif** %4, align 8
  %17 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @__clk_get_name(i32 %18)
  %20 = load %struct.mxs_saif*, %struct.mxs_saif** %4, align 8
  %21 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SAIF_CTRL, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* @BP_SAIF_CTRL_BITCLK_MULT_RATE, align 4
  %26 = call %struct.clk* @clk_register_divider(%struct.TYPE_3__* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %19, i32 0, i64 %24, i32 %25, i32 3, i32 0, i32* null)
  store %struct.clk* %26, %struct.clk** %6, align 8
  %27 = load %struct.clk*, %struct.clk** %6, align 8
  %28 = call i64 @IS_ERR(%struct.clk* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %1
  %31 = load %struct.clk*, %struct.clk** %6, align 8
  %32 = call i32 @PTR_ERR(%struct.clk* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @EEXIST, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %55

38:                                               ; preds = %30
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dev_err(%struct.TYPE_3__* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.clk*, %struct.clk** %6, align 8
  %44 = call i32 @PTR_ERR(%struct.clk* %43)
  store i32 %44, i32* %2, align 4
  br label %55

45:                                               ; preds = %1
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = load i32, i32* @of_clk_src_simple_get, align 4
  %48 = load %struct.clk*, %struct.clk** %6, align 8
  %49 = call i32 @of_clk_add_provider(%struct.device_node* %46, i32 %47, %struct.clk* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %55

54:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %52, %38, %37
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.mxs_saif* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.clk* @clk_register_divider(%struct.TYPE_3__*, i8*, i32, i32, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @__clk_get_name(i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, %struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
