; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-ssp-clk.c_skl_register_parent_clks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-ssp-clk.c_skl_register_parent_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.skl_clk_parent = type { i32, i32 }
%struct.skl_clk_parent_src = type { i32, i32, i32 }

@SKL_MAX_CLK_SRC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.skl_clk_parent*, %struct.skl_clk_parent_src*)* @skl_register_parent_clks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_register_parent_clks(%struct.device* %0, %struct.skl_clk_parent* %1, %struct.skl_clk_parent_src* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.skl_clk_parent*, align 8
  %7 = alloca %struct.skl_clk_parent_src*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.skl_clk_parent* %1, %struct.skl_clk_parent** %6, align 8
  store %struct.skl_clk_parent_src* %2, %struct.skl_clk_parent_src** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %93, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @SKL_MAX_CLK_SRC, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %96

14:                                               ; preds = %10
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load %struct.skl_clk_parent_src*, %struct.skl_clk_parent_src** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.skl_clk_parent_src, %struct.skl_clk_parent_src* %16, i64 %18
  %20 = getelementptr inbounds %struct.skl_clk_parent_src, %struct.skl_clk_parent_src* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.skl_clk_parent_src*, %struct.skl_clk_parent_src** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.skl_clk_parent_src, %struct.skl_clk_parent_src* %22, i64 %24
  %26 = getelementptr inbounds %struct.skl_clk_parent_src, %struct.skl_clk_parent_src* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.skl_clk_parent_src*, %struct.skl_clk_parent_src** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.skl_clk_parent_src, %struct.skl_clk_parent_src* %28, i64 %30
  %32 = getelementptr inbounds %struct.skl_clk_parent_src, %struct.skl_clk_parent_src* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clk_hw_register_fixed_rate(%struct.device* %15, i32 %21, i32 %27, i32 0, i32 %33)
  %35 = load %struct.skl_clk_parent*, %struct.skl_clk_parent** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.skl_clk_parent, %struct.skl_clk_parent* %35, i64 %37
  %39 = getelementptr inbounds %struct.skl_clk_parent, %struct.skl_clk_parent* %38, i32 0, i32 0
  store i32 %34, i32* %39, align 4
  %40 = load %struct.skl_clk_parent*, %struct.skl_clk_parent** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.skl_clk_parent, %struct.skl_clk_parent* %40, i64 %42
  %44 = getelementptr inbounds %struct.skl_clk_parent, %struct.skl_clk_parent* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %14
  %49 = load %struct.skl_clk_parent*, %struct.skl_clk_parent** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.skl_clk_parent, %struct.skl_clk_parent* %49, i64 %51
  %53 = getelementptr inbounds %struct.skl_clk_parent, %struct.skl_clk_parent* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @PTR_ERR(i32 %54)
  store i32 %55, i32* %9, align 4
  br label %97

56:                                               ; preds = %14
  %57 = load %struct.skl_clk_parent*, %struct.skl_clk_parent** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.skl_clk_parent, %struct.skl_clk_parent* %57, i64 %59
  %61 = getelementptr inbounds %struct.skl_clk_parent, %struct.skl_clk_parent* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.skl_clk_parent_src*, %struct.skl_clk_parent_src** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.skl_clk_parent_src, %struct.skl_clk_parent_src* %63, i64 %65
  %67 = getelementptr inbounds %struct.skl_clk_parent_src, %struct.skl_clk_parent_src* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @clkdev_hw_create(i32 %62, i32 %68, i32* null)
  %70 = load %struct.skl_clk_parent*, %struct.skl_clk_parent** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.skl_clk_parent, %struct.skl_clk_parent* %70, i64 %72
  %74 = getelementptr inbounds %struct.skl_clk_parent, %struct.skl_clk_parent* %73, i32 0, i32 1
  store i32 %69, i32* %74, align 4
  %75 = load %struct.skl_clk_parent*, %struct.skl_clk_parent** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.skl_clk_parent, %struct.skl_clk_parent* %75, i64 %77
  %79 = getelementptr inbounds %struct.skl_clk_parent, %struct.skl_clk_parent* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %56
  %83 = load %struct.skl_clk_parent*, %struct.skl_clk_parent** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.skl_clk_parent, %struct.skl_clk_parent* %83, i64 %85
  %87 = getelementptr inbounds %struct.skl_clk_parent, %struct.skl_clk_parent* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @clk_hw_unregister_fixed_rate(i32 %88)
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %9, align 4
  br label %97

92:                                               ; preds = %56
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %10

96:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %102

97:                                               ; preds = %82, %48
  %98 = load %struct.skl_clk_parent*, %struct.skl_clk_parent** %6, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @unregister_parent_src_clk(%struct.skl_clk_parent* %98, i32 %99)
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %97, %96
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @clk_hw_register_fixed_rate(%struct.device*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clkdev_hw_create(i32, i32, i32*) #1

declare dso_local i32 @clk_hw_unregister_fixed_rate(i32) #1

declare dso_local i32 @unregister_parent_src_clk(%struct.skl_clk_parent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
