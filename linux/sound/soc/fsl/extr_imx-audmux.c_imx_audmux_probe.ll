; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-audmux.c_imx_audmux_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-audmux.c_imx_audmux_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.of_device_id = type { %struct.TYPE_7__* }

@imx_audmux_dt_ids = common dso_local global i32 0, align 4
@audmux_base = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"audmux\00", align 1
@audmux_clk = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"cannot get clock: %ld\0A\00", align 1
@audmux_type = common dso_local global i32 0, align 4
@reg_max = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"unsupported version!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@regcache = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_audmux_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_audmux_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load i32, i32* @imx_audmux_dt_ids, align 4
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.of_device_id* @of_match_device(i32 %5, %struct.TYPE_8__* %7)
  store %struct.of_device_id* %8, %struct.of_device_id** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call i32* @devm_platform_ioremap_resource(%struct.platform_device* %9, i32 0)
  store i32* %10, i32** @audmux_base, align 8
  %11 = load i32*, i32** @audmux_base, align 8
  %12 = call i64 @IS_ERR(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32*, i32** @audmux_base, align 8
  %16 = call i32 @PTR_ERR(i32* %15)
  store i32 %16, i32* %2, align 4
  br label %80

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32* @devm_clk_get(%struct.TYPE_8__* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** @audmux_clk, align 8
  %21 = load i32*, i32** @audmux_clk, align 8
  %22 = call i64 @IS_ERR(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32*, i32** @audmux_clk, align 8
  %28 = call i32 @PTR_ERR(i32* %27)
  %29 = call i32 @dev_dbg(%struct.TYPE_8__* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32* null, i32** @audmux_clk, align 8
  br label %30

30:                                               ; preds = %24, %17
  %31 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %32 = icmp ne %struct.of_device_id* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %35 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 1
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %38, align 8
  br label %39

39:                                               ; preds = %33, %30
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* @audmux_type, align 4
  %45 = load i32, i32* @audmux_type, align 4
  switch i32 %45, label %49 [
    i32 128, label %46
    i32 129, label %48
  ]

46:                                               ; preds = %39
  %47 = call i32 (...) @audmux_debugfs_init()
  store i32 14, i32* @reg_max, align 4
  br label %55

48:                                               ; preds = %39
  store i32 6, i32* @reg_max, align 4
  br label %55

49:                                               ; preds = %39
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @dev_err(%struct.TYPE_8__* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %80

55:                                               ; preds = %48, %46
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i32, i32* @reg_max, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 4, %59
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i32 @devm_kzalloc(%struct.TYPE_8__* %57, i32 %61, i32 %62)
  store i32 %63, i32* @regcache, align 4
  %64 = load i32, i32* @regcache, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %55
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %80

69:                                               ; preds = %55
  %70 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %71 = icmp ne %struct.of_device_id* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @imx_audmux_parse_dt_defaults(%struct.platform_device* %73, i32 %77)
  br label %79

79:                                               ; preds = %72, %69
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %66, %49, %14
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_8__*) #1

declare dso_local i32* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @devm_clk_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @audmux_debugfs_init(...) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @imx_audmux_parse_dt_defaults(%struct.platform_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
