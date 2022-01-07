; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514.c_rt5514_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514.c_rt5514_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.rt5514_platform_data = type { i32 }
%struct.rt5514_priv = type { i32, i32, %struct.rt5514_platform_data }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rt5514_i2c_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@rt5514_regmap = common dso_local global i32 0, align 4
@RT5514_VENDOR_ID2 = common dso_local global i32 0, align 4
@RT5514_DEVICE_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Device with ID register %x is not rt5514\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@rt5514_i2c_patch = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to apply i2c_regmap patch: %d\0A\00", align 1
@rt5514_patch = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to apply regmap patch: %d\0A\00", align 1
@soc_component_dev_rt5514 = common dso_local global i32 0, align 4
@rt5514_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rt5514_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5514_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.rt5514_platform_data*, align 8
  %7 = alloca %struct.rt5514_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.rt5514_platform_data* @dev_get_platdata(i32* %11)
  store %struct.rt5514_platform_data* %12, %struct.rt5514_platform_data** %6, align 8
  store i32 -1, i32* %9, align 4
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.rt5514_priv* @devm_kzalloc(i32* %14, i32 12, i32 %15)
  store %struct.rt5514_priv* %16, %struct.rt5514_priv** %7, align 8
  %17 = load %struct.rt5514_priv*, %struct.rt5514_priv** %7, align 8
  %18 = icmp eq %struct.rt5514_priv* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %150

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.rt5514_priv*, %struct.rt5514_priv** %7, align 8
  %25 = call i32 @i2c_set_clientdata(%struct.i2c_client* %23, %struct.rt5514_priv* %24)
  %26 = load %struct.rt5514_platform_data*, %struct.rt5514_platform_data** %6, align 8
  %27 = icmp ne %struct.rt5514_platform_data* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.rt5514_priv*, %struct.rt5514_priv** %7, align 8
  %30 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %29, i32 0, i32 2
  %31 = load %struct.rt5514_platform_data*, %struct.rt5514_platform_data** %6, align 8
  %32 = bitcast %struct.rt5514_platform_data* %30 to i8*
  %33 = bitcast %struct.rt5514_platform_data* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  br label %39

34:                                               ; preds = %22
  %35 = load %struct.rt5514_priv*, %struct.rt5514_priv** %7, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 @rt5514_parse_dp(%struct.rt5514_priv* %35, i32* %37)
  br label %39

39:                                               ; preds = %34, %28
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %40, i32* @rt5514_i2c_regmap)
  %42 = load %struct.rt5514_priv*, %struct.rt5514_priv** %7, align 8
  %43 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.rt5514_priv*, %struct.rt5514_priv** %7, align 8
  %45 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %39
  %50 = load %struct.rt5514_priv*, %struct.rt5514_priv** %7, align 8
  %51 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %150

59:                                               ; preds = %39
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = call i32 @devm_regmap_init(i32* %61, i32* null, %struct.i2c_client* %62, i32* @rt5514_regmap)
  %64 = load %struct.rt5514_priv*, %struct.rt5514_priv** %7, align 8
  %65 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.rt5514_priv*, %struct.rt5514_priv** %7, align 8
  %67 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %59
  %72 = load %struct.rt5514_priv*, %struct.rt5514_priv** %7, align 8
  %73 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %150

81:                                               ; preds = %59
  %82 = load %struct.rt5514_priv*, %struct.rt5514_priv** %7, align 8
  %83 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RT5514_VENDOR_ID2, align 4
  %86 = call i32 @regmap_read(i32 %84, i32 %85, i32* %9)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @RT5514_DEVICE_ID, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89, %81
  %94 = load %struct.rt5514_priv*, %struct.rt5514_priv** %7, align 8
  %95 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @RT5514_VENDOR_ID2, align 4
  %98 = call i32 @regmap_read(i32 %96, i32 %97, i32* %9)
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %93, %89
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @RT5514_DEVICE_ID, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %102, %99
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 0
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @dev_err(i32* %108, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @ENODEV, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %150

113:                                              ; preds = %102
  %114 = load %struct.rt5514_priv*, %struct.rt5514_priv** %7, align 8
  %115 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @rt5514_i2c_patch, align 4
  %118 = load i32, i32* @rt5514_i2c_patch, align 4
  %119 = call i32 @ARRAY_SIZE(i32 %118)
  %120 = call i32 @regmap_multi_reg_write(i32 %116, i32 %117, i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %113
  %124 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %125 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %124, i32 0, i32 0
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @dev_warn(i32* %125, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %123, %113
  %129 = load %struct.rt5514_priv*, %struct.rt5514_priv** %7, align 8
  %130 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @rt5514_patch, align 4
  %133 = load i32, i32* @rt5514_patch, align 4
  %134 = call i32 @ARRAY_SIZE(i32 %133)
  %135 = call i32 @regmap_register_patch(i32 %131, i32 %132, i32 %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %128
  %139 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %140 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %139, i32 0, i32 0
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @dev_warn(i32* %140, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %138, %128
  %144 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %145 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %144, i32 0, i32 0
  %146 = load i32, i32* @rt5514_dai, align 4
  %147 = load i32, i32* @rt5514_dai, align 4
  %148 = call i32 @ARRAY_SIZE(i32 %147)
  %149 = call i32 @devm_snd_soc_register_component(i32* %145, i32* @soc_component_dev_rt5514, i32 %146, i32 %148)
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %143, %106, %71, %49, %19
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.rt5514_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.rt5514_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rt5514_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rt5514_parse_dp(%struct.rt5514_priv*, i32*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @devm_regmap_init(i32*, i32*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_multi_reg_write(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @regmap_register_patch(i32, i32, i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
