; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_clock_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_clock_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.platform_device_info = type { i32, i8*, i32, %struct.skl_clk_pdata*, i32*, i32* }
%struct.skl_clk_pdata = type { %struct.skl_dev*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@skl_clk_src = common dso_local global i32 0, align 4
@skl_ssp_clks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"skl-ssp-clk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skl_dev*)* @skl_clock_device_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_clock_device_register(%struct.skl_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skl_dev*, align 8
  %4 = alloca %struct.platform_device_info, align 8
  %5 = alloca %struct.skl_clk_pdata*, align 8
  store %struct.skl_dev* %0, %struct.skl_dev** %3, align 8
  %6 = bitcast %struct.platform_device_info* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 48, i1 false)
  %7 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %8 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.skl_clk_pdata* @devm_kzalloc(i32* %10, i32 24, i32 %11)
  store %struct.skl_clk_pdata* %12, %struct.skl_clk_pdata** %5, align 8
  %13 = load %struct.skl_clk_pdata*, %struct.skl_clk_pdata** %5, align 8
  %14 = icmp ne %struct.skl_clk_pdata* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %60

18:                                               ; preds = %1
  %19 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %20 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @init_skl_xtal_rate(i32 %23)
  %25 = load i32, i32* @skl_clk_src, align 4
  %26 = load %struct.skl_clk_pdata*, %struct.skl_clk_pdata** %5, align 8
  %27 = getelementptr inbounds %struct.skl_clk_pdata, %struct.skl_clk_pdata* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @skl_ssp_clks, align 4
  %29 = load %struct.skl_clk_pdata*, %struct.skl_clk_pdata** %5, align 8
  %30 = getelementptr inbounds %struct.skl_clk_pdata, %struct.skl_clk_pdata* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @skl_ssp_clks, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = load %struct.skl_clk_pdata*, %struct.skl_clk_pdata** %5, align 8
  %34 = getelementptr inbounds %struct.skl_clk_pdata, %struct.skl_clk_pdata* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %36 = load %struct.skl_clk_pdata*, %struct.skl_clk_pdata** %5, align 8
  %37 = getelementptr inbounds %struct.skl_clk_pdata, %struct.skl_clk_pdata* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @skl_get_clks(%struct.skl_dev* %35, i32 %38)
  %40 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %41 = load %struct.skl_clk_pdata*, %struct.skl_clk_pdata** %5, align 8
  %42 = getelementptr inbounds %struct.skl_clk_pdata, %struct.skl_clk_pdata* %41, i32 0, i32 0
  store %struct.skl_dev* %40, %struct.skl_dev** %42, align 8
  %43 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %44 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %4, i32 0, i32 4
  store i32* %46, i32** %47, align 8
  %48 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %4, i32 0, i32 0
  store i32 -1, i32* %48, align 8
  %49 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %4, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %49, align 8
  %50 = load %struct.skl_clk_pdata*, %struct.skl_clk_pdata** %5, align 8
  %51 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %4, i32 0, i32 3
  store %struct.skl_clk_pdata* %50, %struct.skl_clk_pdata** %51, align 8
  %52 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %4, i32 0, i32 2
  store i32 24, i32* %52, align 8
  %53 = call i32 @platform_device_register_full(%struct.platform_device_info* %4)
  %54 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %55 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %57 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @PTR_ERR_OR_ZERO(i32 %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %18, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.skl_clk_pdata* @devm_kzalloc(i32*, i32, i32) #2

declare dso_local i32 @init_skl_xtal_rate(i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @skl_get_clks(%struct.skl_dev*, i32) #2

declare dso_local i32 @platform_device_register_full(%struct.platform_device_info*) #2

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
