; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4.c_aic32x4_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4.c_aic32x4_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node*, %struct.aic32x4_pdata* }
%struct.device_node = type { i32 }
%struct.aic32x4_pdata = type { i32, i32, i64, i64 }
%struct.regmap = type { i32 }
%struct.aic32x4_priv = type { i32, i32, i8*, i64, i64, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to parse DT node\0A\00", align 1
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"tlv320aic32x4 rstn\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to setup regulators\0A\00", align 1
@soc_component_dev_aic32x4 = common dso_local global i32 0, align 4
@aic32x4_dai = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to register component\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aic32x4_probe(%struct.device* %0, %struct.regmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.aic32x4_priv*, align 8
  %7 = alloca %struct.aic32x4_pdata*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.regmap* %1, %struct.regmap** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 1
  %12 = load %struct.aic32x4_pdata*, %struct.aic32x4_pdata** %11, align 8
  store %struct.aic32x4_pdata* %12, %struct.aic32x4_pdata** %7, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %8, align 8
  %16 = load %struct.regmap*, %struct.regmap** %5, align 8
  %17 = call i64 @IS_ERR(%struct.regmap* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.regmap*, %struct.regmap** %5, align 8
  %21 = call i32 @PTR_ERR(%struct.regmap* %20)
  store i32 %21, i32* %3, align 4
  br label %139

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.aic32x4_priv* @devm_kzalloc(%struct.device* %23, i32 40, i32 %24)
  store %struct.aic32x4_priv* %25, %struct.aic32x4_priv** %6, align 8
  %26 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %6, align 8
  %27 = icmp eq %struct.aic32x4_priv* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %139

31:                                               ; preds = %22
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %6, align 8
  %34 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %33, i32 0, i32 5
  store %struct.device* %32, %struct.device** %34, align 8
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %6, align 8
  %37 = call i32 @dev_set_drvdata(%struct.device* %35, %struct.aic32x4_priv* %36)
  %38 = load %struct.aic32x4_pdata*, %struct.aic32x4_pdata** %7, align 8
  %39 = icmp ne %struct.aic32x4_pdata* %38, null
  br i1 %39, label %40, label %63

40:                                               ; preds = %31
  %41 = load %struct.aic32x4_pdata*, %struct.aic32x4_pdata** %7, align 8
  %42 = getelementptr inbounds %struct.aic32x4_pdata, %struct.aic32x4_pdata* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %6, align 8
  %45 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  %46 = load %struct.aic32x4_pdata*, %struct.aic32x4_pdata** %7, align 8
  %47 = getelementptr inbounds %struct.aic32x4_pdata, %struct.aic32x4_pdata* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %6, align 8
  %50 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.aic32x4_pdata*, %struct.aic32x4_pdata** %7, align 8
  %52 = getelementptr inbounds %struct.aic32x4_pdata, %struct.aic32x4_pdata* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %6, align 8
  %55 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  %56 = load %struct.aic32x4_pdata*, %struct.aic32x4_pdata** %7, align 8
  %57 = getelementptr inbounds %struct.aic32x4_pdata, %struct.aic32x4_pdata* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %6, align 8
  %60 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %6, align 8
  %62 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %61, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %62, align 8
  br label %89

63:                                               ; preds = %31
  %64 = load %struct.device_node*, %struct.device_node** %8, align 8
  %65 = icmp ne %struct.device_node* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %6, align 8
  %68 = load %struct.device_node*, %struct.device_node** %8, align 8
  %69 = call i32 @aic32x4_parse_dt(%struct.aic32x4_priv* %67, %struct.device_node* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %3, align 4
  br label %139

76:                                               ; preds = %66
  br label %88

77:                                               ; preds = %63
  %78 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %6, align 8
  %79 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %78, i32 0, i32 4
  store i64 0, i64* %79, align 8
  %80 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %6, align 8
  %81 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %6, align 8
  %83 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %82, i32 0, i32 3
  store i64 0, i64* %83, align 8
  %84 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %6, align 8
  %85 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %84, i32 0, i32 1
  store i32 -1, i32* %85, align 4
  %86 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %6, align 8
  %87 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %86, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %87, align 8
  br label %88

88:                                               ; preds = %77, %76
  br label %89

89:                                               ; preds = %88, %40
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %6, align 8
  %92 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @aic32x4_register_clocks(%struct.device* %90, i8* %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %3, align 4
  br label %139

99:                                               ; preds = %89
  %100 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %6, align 8
  %101 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @gpio_is_valid(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %99
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %6, align 8
  %108 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %111 = call i32 @devm_gpio_request_one(%struct.device* %106, i32 %109, i32 %110, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %105
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %3, align 4
  br label %139

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116, %99
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %6, align 8
  %120 = call i32 @aic32x4_setup_regulators(%struct.device* %118, %struct.aic32x4_priv* %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = call i32 @dev_err(%struct.device* %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %3, align 4
  br label %139

127:                                              ; preds = %117
  %128 = load %struct.device*, %struct.device** %4, align 8
  %129 = call i32 @devm_snd_soc_register_component(%struct.device* %128, i32* @soc_component_dev_aic32x4, i32* @aic32x4_dai, i32 1)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = call i32 @dev_err(%struct.device* %133, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %135 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %6, align 8
  %136 = call i32 @aic32x4_disable_regulators(%struct.aic32x4_priv* %135)
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %3, align 4
  br label %139

138:                                              ; preds = %127
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %132, %123, %114, %97, %72, %28, %19
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.aic32x4_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.aic32x4_priv*) #1

declare dso_local i32 @aic32x4_parse_dt(%struct.aic32x4_priv*, %struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @aic32x4_register_clocks(%struct.device*, i8*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.device*, i32, i32, i8*) #1

declare dso_local i32 @aic32x4_setup_regulators(%struct.device*, %struct.aic32x4_priv*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.device*, i32*, i32*, i32) #1

declare dso_local i32 @aic32x4_disable_regulators(%struct.aic32x4_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
