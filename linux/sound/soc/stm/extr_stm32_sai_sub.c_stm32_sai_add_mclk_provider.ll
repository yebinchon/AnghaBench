; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_add_mclk_provider.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_add_mclk_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_sai_sub_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.clk_hw = type { i32, i32 }
%struct.stm32_sai_mclk_data = type { %struct.clk_hw, %struct.stm32_sai_sub_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SAI_MCLK_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"a_mclk\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"b_mclk\00", align 1
@mclk_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Register master clock %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"mclk register returned %d\0A\00", align 1
@of_clk_hw_simple_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_sai_sub_data*)* @stm32_sai_add_mclk_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_sai_add_mclk_provider(%struct.stm32_sai_sub_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_sai_sub_data*, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.stm32_sai_mclk_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.stm32_sai_sub_data* %0, %struct.stm32_sai_sub_data** %3, align 8
  %13 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %14 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %18 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @__clk_get_name(i32 %19)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  store i8* %21, i8** %10, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.stm32_sai_mclk_data* @devm_kzalloc(%struct.device* %22, i32 16, i32 %23)
  store %struct.stm32_sai_mclk_data* %24, %struct.stm32_sai_mclk_data** %5, align 8
  %25 = load %struct.stm32_sai_mclk_data*, %struct.stm32_sai_mclk_data** %5, align 8
  %26 = icmp ne %struct.stm32_sai_mclk_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %116

30:                                               ; preds = %1
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load i32, i32* @SAI_MCLK_NAME_LEN, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @devm_kcalloc(%struct.device* %31, i32 1, i32 %32, i32 %33)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %116

40:                                               ; preds = %30
  %41 = load i8*, i8** %8, align 8
  store i8* %41, i8** %9, align 8
  br label %42

42:                                               ; preds = %59, %40
  %43 = load i8*, i8** %10, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load i8*, i8** %10, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 95
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @SAI_MCLK_NAME_LEN, align 4
  %55 = sub nsw i32 %54, 7
  %56 = icmp slt i32 %53, %55
  br label %57

57:                                               ; preds = %52, %47, %42
  %58 = phi i1 [ false, %47 ], [ false, %42 ], [ %56, %52 ]
  br i1 %58, label %59, label %67

59:                                               ; preds = %57
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %10, align 8
  %62 = load i8, i8* %60, align 1
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %9, align 8
  store i8 %62, i8* %63, align 1
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %42

67:                                               ; preds = %57
  %68 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %69 = call i64 @STM_SAI_IS_SUB_A(%struct.stm32_sai_sub_data* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @strcat(i8* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %77

74:                                               ; preds = %67
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @strcat(i8* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i32 [ %73, %71 ], [ %76, %74 ]
  %79 = load i8*, i8** %8, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @CLK_HW_INIT(i8* %79, i8* %80, i32* @mclk_ops, i32 0)
  %82 = load %struct.stm32_sai_mclk_data*, %struct.stm32_sai_mclk_data** %5, align 8
  %83 = getelementptr inbounds %struct.stm32_sai_mclk_data, %struct.stm32_sai_mclk_data* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %86 = load %struct.stm32_sai_mclk_data*, %struct.stm32_sai_mclk_data** %5, align 8
  %87 = getelementptr inbounds %struct.stm32_sai_mclk_data, %struct.stm32_sai_mclk_data* %86, i32 0, i32 1
  store %struct.stm32_sai_sub_data* %85, %struct.stm32_sai_sub_data** %87, align 8
  %88 = load %struct.stm32_sai_mclk_data*, %struct.stm32_sai_mclk_data** %5, align 8
  %89 = getelementptr inbounds %struct.stm32_sai_mclk_data, %struct.stm32_sai_mclk_data* %88, i32 0, i32 0
  store %struct.clk_hw* %89, %struct.clk_hw** %4, align 8
  %90 = load %struct.device*, %struct.device** %6, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @dev_dbg(%struct.device* %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %91)
  %93 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %94 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %98 = call i32 @devm_clk_hw_register(%struct.device* %96, %struct.clk_hw* %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %77
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @dev_err(%struct.device* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %2, align 4
  br label %116

106:                                              ; preds = %77
  %107 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %108 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %111 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.device*, %struct.device** %6, align 8
  %113 = load i32, i32* @of_clk_hw_simple_get, align 4
  %114 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %115 = call i32 @devm_of_clk_add_hw_provider(%struct.device* %112, i32 %113, %struct.clk_hw* %114)
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %106, %101, %37, %27
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i8* @__clk_get_name(i32) #1

declare dso_local %struct.stm32_sai_mclk_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @STM_SAI_IS_SUB_A(%struct.stm32_sai_sub_data*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @CLK_HW_INIT(i8*, i8*, i32*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*) #1

declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.clk_hw*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_of_clk_add_hw_provider(%struct.device*, i32, %struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
