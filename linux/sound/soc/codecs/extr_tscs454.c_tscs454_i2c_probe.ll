; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_tscs454_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_tscs454_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tscs454 = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PLL_INPUT_XTAL = common dso_local global i32 0, align 4
@PLL_INPUT_BCLK = common dso_local global i32 0, align 4
@src_names = common dso_local global i32* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to get sysclk (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"PLL input is %s\0A\00", align 1
@R_RESET = common dso_local global i32 0, align 4
@FV_RESET_PWR_ON_DEFAULTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to reset the component (%d)\0A\00", align 1
@tscs454_patch = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to apply patch (%d)\0A\00", align 1
@R_PAGESEL = common dso_local global i32 0, align 4
@soc_component_dev_tscs454 = common dso_local global i32 0, align 4
@tscs454_dais = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to register component (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tscs454_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tscs454_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tscs454*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tscs454* @devm_kzalloc(i32* %10, i32 12, i32 %11)
  store %struct.tscs454* %12, %struct.tscs454** %6, align 8
  %13 = load %struct.tscs454*, %struct.tscs454** %6, align 8
  %14 = icmp ne %struct.tscs454* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %142

18:                                               ; preds = %2
  %19 = load %struct.tscs454*, %struct.tscs454** %6, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = call i32 @tscs454_data_init(%struct.tscs454* %19, %struct.i2c_client* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %142

26:                                               ; preds = %18
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = load %struct.tscs454*, %struct.tscs454** %6, align 8
  %29 = call i32 @i2c_set_clientdata(%struct.i2c_client* %27, %struct.tscs454* %28)
  %30 = load i32, i32* @PLL_INPUT_XTAL, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %72, %26
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @PLL_INPUT_BCLK, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %31
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32*, i32** @src_names, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @devm_clk_get(i32* %37, i32 %42)
  %44 = load %struct.tscs454*, %struct.tscs454** %6, align 8
  %45 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.tscs454*, %struct.tscs454** %6, align 8
  %47 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @IS_ERR(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %35
  br label %75

52:                                               ; preds = %35
  %53 = load %struct.tscs454*, %struct.tscs454** %6, align 8
  %54 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PTR_ERR(i32 %55)
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %52
  %61 = load %struct.tscs454*, %struct.tscs454** %6, align 8
  %62 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @PTR_ERR(i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %142

70:                                               ; preds = %52
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %31

75:                                               ; preds = %51, %31
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = load i32*, i32** @src_names, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_dbg(i32* %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.tscs454*, %struct.tscs454** %6, align 8
  %86 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.tscs454*, %struct.tscs454** %6, align 8
  %88 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @R_RESET, align 4
  %91 = load i32, i32* @FV_RESET_PWR_ON_DEFAULTS, align 4
  %92 = call i32 @regmap_write(i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %75
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %142

101:                                              ; preds = %75
  %102 = load %struct.tscs454*, %struct.tscs454** %6, align 8
  %103 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @regcache_mark_dirty(i32 %104)
  %106 = load %struct.tscs454*, %struct.tscs454** %6, align 8
  %107 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @tscs454_patch, align 4
  %110 = load i32, i32* @tscs454_patch, align 4
  %111 = call i32 @ARRAY_SIZE(i32 %110)
  %112 = call i32 @regmap_register_patch(i32 %108, i32 %109, i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %101
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 0
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @dev_err(i32* %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %3, align 4
  br label %142

121:                                              ; preds = %101
  %122 = load %struct.tscs454*, %struct.tscs454** %6, align 8
  %123 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @R_PAGESEL, align 4
  %126 = call i32 @regmap_write(i32 %124, i32 %125, i32 0)
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %128 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %127, i32 0, i32 0
  %129 = load i32, i32* @tscs454_dais, align 4
  %130 = load i32, i32* @tscs454_dais, align 4
  %131 = call i32 @ARRAY_SIZE(i32 %130)
  %132 = call i32 @devm_snd_soc_register_component(i32* %128, i32* @soc_component_dev_tscs454, i32 %129, i32 %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %121
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %136, i32 0, i32 0
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @dev_err(i32* %137, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %3, align 4
  br label %142

141:                                              ; preds = %121
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %135, %115, %95, %60, %24, %15
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.tscs454* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @tscs454_data_init(%struct.tscs454*, %struct.i2c_client*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tscs454*) #1

declare dso_local i32 @devm_clk_get(i32*, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

declare dso_local i32 @regmap_register_patch(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
