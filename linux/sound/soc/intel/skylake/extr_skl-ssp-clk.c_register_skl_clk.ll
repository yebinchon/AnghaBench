; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-ssp-clk.c_register_skl_clk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-ssp-clk.c_register_skl_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_clk = type { i32, i32, %struct.TYPE_3__, %struct.skl_clk_pdata* }
%struct.TYPE_3__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i32, i32, i32*, i32, i32* }
%struct.device = type { i32 }
%struct.skl_ssp_clk = type { i32, i32 }
%struct.skl_clk_pdata = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@skl_clk_ops = common dso_local global i32 0, align 4
@CLK_SET_RATE_GATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.skl_clk* (%struct.device*, %struct.skl_ssp_clk*, %struct.skl_clk_pdata*, i32)* @register_skl_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.skl_clk* @register_skl_clk(%struct.device* %0, %struct.skl_ssp_clk* %1, %struct.skl_clk_pdata* %2, i32 %3) #0 {
  %5 = alloca %struct.skl_clk*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.skl_ssp_clk*, align 8
  %8 = alloca %struct.skl_clk_pdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.clk_init_data, align 8
  %11 = alloca %struct.skl_clk*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.skl_ssp_clk* %1, %struct.skl_ssp_clk** %7, align 8
  store %struct.skl_clk_pdata* %2, %struct.skl_clk_pdata** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.skl_clk* @devm_kzalloc(%struct.device* %13, i32 24, i32 %14)
  store %struct.skl_clk* %15, %struct.skl_clk** %11, align 8
  %16 = load %struct.skl_clk*, %struct.skl_clk** %11, align 8
  %17 = icmp ne %struct.skl_clk* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.skl_clk* @ERR_PTR(i32 %20)
  store %struct.skl_clk* %21, %struct.skl_clk** %5, align 8
  br label %71

22:                                               ; preds = %4
  %23 = load %struct.skl_ssp_clk*, %struct.skl_ssp_clk** %7, align 8
  %24 = getelementptr inbounds %struct.skl_ssp_clk, %struct.skl_ssp_clk* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 4
  store i32* @skl_clk_ops, i32** %27, align 8
  %28 = load i32, i32* @CLK_SET_RATE_GATE, align 4
  %29 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = load %struct.skl_ssp_clk*, %struct.skl_ssp_clk** %7, align 8
  %31 = getelementptr inbounds %struct.skl_ssp_clk, %struct.skl_ssp_clk* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 2
  store i32* %31, i32** %32, align 8
  %33 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.skl_clk*, %struct.skl_clk** %11, align 8
  %35 = getelementptr inbounds %struct.skl_clk, %struct.skl_clk* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store %struct.clk_init_data* %10, %struct.clk_init_data** %36, align 8
  %37 = load %struct.skl_clk_pdata*, %struct.skl_clk_pdata** %8, align 8
  %38 = load %struct.skl_clk*, %struct.skl_clk** %11, align 8
  %39 = getelementptr inbounds %struct.skl_clk, %struct.skl_clk* %38, i32 0, i32 3
  store %struct.skl_clk_pdata* %37, %struct.skl_clk_pdata** %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.skl_clk*, %struct.skl_clk** %11, align 8
  %42 = getelementptr inbounds %struct.skl_clk, %struct.skl_clk* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = load %struct.skl_clk*, %struct.skl_clk** %11, align 8
  %45 = getelementptr inbounds %struct.skl_clk, %struct.skl_clk* %44, i32 0, i32 2
  %46 = call i32 @devm_clk_hw_register(%struct.device* %43, %struct.TYPE_3__* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %22
  %50 = load i32, i32* %12, align 4
  %51 = call %struct.skl_clk* @ERR_PTR(i32 %50)
  store %struct.skl_clk* %51, %struct.skl_clk** %11, align 8
  %52 = load %struct.skl_clk*, %struct.skl_clk** %11, align 8
  store %struct.skl_clk* %52, %struct.skl_clk** %5, align 8
  br label %71

53:                                               ; preds = %22
  %54 = load %struct.skl_clk*, %struct.skl_clk** %11, align 8
  %55 = getelementptr inbounds %struct.skl_clk, %struct.skl_clk* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @clkdev_hw_create(%struct.TYPE_3__* %55, i32 %57, i32* null)
  %59 = load %struct.skl_clk*, %struct.skl_clk** %11, align 8
  %60 = getelementptr inbounds %struct.skl_clk, %struct.skl_clk* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.skl_clk*, %struct.skl_clk** %11, align 8
  %62 = getelementptr inbounds %struct.skl_clk, %struct.skl_clk* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %53
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  %68 = call %struct.skl_clk* @ERR_PTR(i32 %67)
  store %struct.skl_clk* %68, %struct.skl_clk** %11, align 8
  br label %69

69:                                               ; preds = %65, %53
  %70 = load %struct.skl_clk*, %struct.skl_clk** %11, align 8
  store %struct.skl_clk* %70, %struct.skl_clk** %5, align 8
  br label %71

71:                                               ; preds = %69, %49, %18
  %72 = load %struct.skl_clk*, %struct.skl_clk** %5, align 8
  ret %struct.skl_clk* %72
}

declare dso_local %struct.skl_clk* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.skl_clk* @ERR_PTR(i32) #1

declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.TYPE_3__*) #1

declare dso_local i32 @clkdev_hw_create(%struct.TYPE_3__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
