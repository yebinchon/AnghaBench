; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-ssp-clk.c_skl_clk_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-ssp-clk.c_skl_clk_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device* }
%struct.skl_clk_parent_src = type { i32 }
%struct.skl_clk_pdata = type { i32, %struct.skl_ssp_clk*, %struct.skl_clk_parent_src* }
%struct.skl_ssp_clk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.skl_clk_data = type { i64, i32, i32* }

@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SKL_MAX_CLK_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @skl_clk_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_clk_dev_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.skl_clk_parent_src*, align 8
  %7 = alloca %struct.skl_clk_pdata*, align 8
  %8 = alloca %struct.skl_clk_data*, align 8
  %9 = alloca %struct.skl_ssp_clk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call %struct.skl_clk_pdata* @dev_get_platdata(%struct.device* %18)
  store %struct.skl_clk_pdata* %19, %struct.skl_clk_pdata** %7, align 8
  %20 = load %struct.skl_clk_pdata*, %struct.skl_clk_pdata** %7, align 8
  %21 = getelementptr inbounds %struct.skl_clk_pdata, %struct.skl_clk_pdata* %20, i32 0, i32 2
  %22 = load %struct.skl_clk_parent_src*, %struct.skl_clk_parent_src** %21, align 8
  store %struct.skl_clk_parent_src* %22, %struct.skl_clk_parent_src** %6, align 8
  %23 = load %struct.skl_clk_pdata*, %struct.skl_clk_pdata** %7, align 8
  %24 = getelementptr inbounds %struct.skl_clk_pdata, %struct.skl_clk_pdata* %23, i32 0, i32 1
  %25 = load %struct.skl_ssp_clk*, %struct.skl_ssp_clk** %24, align 8
  store %struct.skl_ssp_clk* %25, %struct.skl_ssp_clk** %9, align 8
  %26 = load %struct.skl_clk_parent_src*, %struct.skl_clk_parent_src** %6, align 8
  %27 = icmp ne %struct.skl_clk_parent_src* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.skl_ssp_clk*, %struct.skl_ssp_clk** %9, align 8
  %30 = icmp ne %struct.skl_ssp_clk* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28, %1
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %127

34:                                               ; preds = %28
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.skl_clk_data* @devm_kzalloc(%struct.device* %35, i32 24, i32 %36)
  store %struct.skl_clk_data* %37, %struct.skl_clk_data** %8, align 8
  %38 = load %struct.skl_clk_data*, %struct.skl_clk_data** %8, align 8
  %39 = icmp ne %struct.skl_clk_data* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %127

43:                                               ; preds = %34
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load %struct.skl_clk_data*, %struct.skl_clk_data** %8, align 8
  %46 = getelementptr inbounds %struct.skl_clk_data, %struct.skl_clk_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.skl_clk_parent_src*, %struct.skl_clk_parent_src** %6, align 8
  %49 = call i32 @skl_register_parent_clks(%struct.device* %44, i32 %47, %struct.skl_clk_parent_src* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %2, align 4
  br label %127

54:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %111, %54
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.skl_clk_pdata*, %struct.skl_clk_pdata** %7, align 8
  %58 = getelementptr inbounds %struct.skl_clk_pdata, %struct.skl_clk_pdata* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %114

61:                                               ; preds = %55
  %62 = load %struct.skl_ssp_clk*, %struct.skl_ssp_clk** %9, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.skl_ssp_clk, %struct.skl_ssp_clk* %62, i64 %64
  %66 = getelementptr inbounds %struct.skl_ssp_clk, %struct.skl_ssp_clk* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %111

73:                                               ; preds = %61
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load %struct.skl_ssp_clk*, %struct.skl_ssp_clk** %9, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.skl_ssp_clk, %struct.skl_ssp_clk* %75, i64 %77
  %79 = load %struct.skl_clk_pdata*, %struct.skl_clk_pdata** %7, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @register_skl_clk(%struct.device* %74, %struct.skl_ssp_clk* %78, %struct.skl_clk_pdata* %79, i32 %80)
  %82 = load %struct.skl_clk_data*, %struct.skl_clk_data** %8, align 8
  %83 = getelementptr inbounds %struct.skl_clk_data, %struct.skl_clk_data* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.skl_clk_data*, %struct.skl_clk_data** %8, align 8
  %86 = getelementptr inbounds %struct.skl_clk_data, %struct.skl_clk_data* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 %81, i32* %88, align 4
  %89 = load %struct.skl_clk_data*, %struct.skl_clk_data** %8, align 8
  %90 = getelementptr inbounds %struct.skl_clk_data, %struct.skl_clk_data* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.skl_clk_data*, %struct.skl_clk_data** %8, align 8
  %93 = getelementptr inbounds %struct.skl_clk_data, %struct.skl_clk_data* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @IS_ERR(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %73
  %100 = load %struct.skl_clk_data*, %struct.skl_clk_data** %8, align 8
  %101 = getelementptr inbounds %struct.skl_clk_data, %struct.skl_clk_data* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.skl_clk_data*, %struct.skl_clk_data** %8, align 8
  %104 = getelementptr inbounds %struct.skl_clk_data, %struct.skl_clk_data* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = getelementptr inbounds i32, i32* %102, i64 %105
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @PTR_ERR(i32 %108)
  store i32 %109, i32* %10, align 4
  br label %118

110:                                              ; preds = %73
  br label %111

111:                                              ; preds = %110, %72
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %55

114:                                              ; preds = %55
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = load %struct.skl_clk_data*, %struct.skl_clk_data** %8, align 8
  %117 = call i32 @platform_set_drvdata(%struct.platform_device* %115, %struct.skl_clk_data* %116)
  store i32 0, i32* %2, align 4
  br label %127

118:                                              ; preds = %99
  %119 = load %struct.skl_clk_data*, %struct.skl_clk_data** %8, align 8
  %120 = call i32 @unregister_src_clk(%struct.skl_clk_data* %119)
  %121 = load %struct.skl_clk_data*, %struct.skl_clk_data** %8, align 8
  %122 = getelementptr inbounds %struct.skl_clk_data, %struct.skl_clk_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @SKL_MAX_CLK_SRC, align 4
  %125 = call i32 @unregister_parent_src_clk(i32 %123, i32 %124)
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %118, %114, %52, %40, %31
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.skl_clk_pdata* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.skl_clk_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @skl_register_parent_clks(%struct.device*, i32, %struct.skl_clk_parent_src*) #1

declare dso_local i32 @register_skl_clk(%struct.device*, %struct.skl_ssp_clk*, %struct.skl_clk_pdata*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.skl_clk_data*) #1

declare dso_local i32 @unregister_src_clk(%struct.skl_clk_data*) #1

declare dso_local i32 @unregister_parent_src_clk(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
