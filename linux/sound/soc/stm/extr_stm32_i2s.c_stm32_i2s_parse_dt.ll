; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_i2s.c_stm32_i2s_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_i2s.c_stm32_i2s_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.stm32_i2s_data = type { %struct.reset_control*, %struct.reset_control*, %struct.reset_control*, %struct.reset_control*, i32, %struct.reset_control*, %struct.regmap_config* }
%struct.reset_control = type { i32 }
%struct.regmap_config = type { i32 }
%struct.of_device_id = type { i64 }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@stm32_i2s_ids = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Could not get pclk\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"i2sclk\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Could not get i2sclk\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"x8k\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"missing x8k parent clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"x11k\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"missing x11k parent clock\0A\00", align 1
@stm32_i2s_isr = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"irq request returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.stm32_i2s_data*)* @stm32_i2s_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_i2s_parse_dt(%struct.platform_device* %0, %struct.stm32_i2s_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.stm32_i2s_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca %struct.reset_control*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.stm32_i2s_data* %1, %struct.stm32_i2s_data** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %6, align 8
  %16 = load %struct.device_node*, %struct.device_node** %6, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %183

21:                                               ; preds = %2
  %22 = load i32, i32* @stm32_i2s_ids, align 4
  %23 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call %struct.of_device_id* @of_match_device(i32 %22, %struct.TYPE_8__* %24)
  store %struct.of_device_id* %25, %struct.of_device_id** %7, align 8
  %26 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %27 = icmp ne %struct.of_device_id* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %30 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.regmap_config*
  %33 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %5, align 8
  %34 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %33, i32 0, i32 6
  store %struct.regmap_config* %32, %struct.regmap_config** %34, align 8
  br label %38

35:                                               ; preds = %21
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %183

38:                                               ; preds = %28
  %39 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %40 = load i32, i32* @IORESOURCE_MEM, align 4
  %41 = call %struct.resource* @platform_get_resource(%struct.platform_device* %39, i32 %40, i32 0)
  store %struct.resource* %41, %struct.resource** %9, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.resource*, %struct.resource** %9, align 8
  %45 = call %struct.reset_control* @devm_ioremap_resource(%struct.TYPE_8__* %43, %struct.resource* %44)
  %46 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %5, align 8
  %47 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %46, i32 0, i32 5
  store %struct.reset_control* %45, %struct.reset_control** %47, align 8
  %48 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %5, align 8
  %49 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %48, i32 0, i32 5
  %50 = load %struct.reset_control*, %struct.reset_control** %49, align 8
  %51 = call i64 @IS_ERR(%struct.reset_control* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %38
  %54 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %5, align 8
  %55 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %54, i32 0, i32 5
  %56 = load %struct.reset_control*, %struct.reset_control** %55, align 8
  %57 = call i32 @PTR_ERR(%struct.reset_control* %56)
  store i32 %57, i32* %3, align 4
  br label %183

58:                                               ; preds = %38
  %59 = load %struct.resource*, %struct.resource** %9, align 8
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %5, align 8
  %63 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i8* @devm_clk_get(%struct.TYPE_8__* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %67 = bitcast i8* %66 to %struct.reset_control*
  %68 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %5, align 8
  %69 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %68, i32 0, i32 3
  store %struct.reset_control* %67, %struct.reset_control** %69, align 8
  %70 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %5, align 8
  %71 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %70, i32 0, i32 3
  %72 = load %struct.reset_control*, %struct.reset_control** %71, align 8
  %73 = call i64 @IS_ERR(%struct.reset_control* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %58
  %76 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %5, align 8
  %80 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %79, i32 0, i32 3
  %81 = load %struct.reset_control*, %struct.reset_control** %80, align 8
  %82 = call i32 @PTR_ERR(%struct.reset_control* %81)
  store i32 %82, i32* %3, align 4
  br label %183

83:                                               ; preds = %58
  %84 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i8* @devm_clk_get(%struct.TYPE_8__* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %87 = bitcast i8* %86 to %struct.reset_control*
  %88 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %5, align 8
  %89 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %88, i32 0, i32 2
  store %struct.reset_control* %87, %struct.reset_control** %89, align 8
  %90 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %5, align 8
  %91 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %90, i32 0, i32 2
  %92 = load %struct.reset_control*, %struct.reset_control** %91, align 8
  %93 = call i64 @IS_ERR(%struct.reset_control* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %83
  %96 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %99 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %5, align 8
  %100 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %99, i32 0, i32 2
  %101 = load %struct.reset_control*, %struct.reset_control** %100, align 8
  %102 = call i32 @PTR_ERR(%struct.reset_control* %101)
  store i32 %102, i32* %3, align 4
  br label %183

103:                                              ; preds = %83
  %104 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i8* @devm_clk_get(%struct.TYPE_8__* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %107 = bitcast i8* %106 to %struct.reset_control*
  %108 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %5, align 8
  %109 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %108, i32 0, i32 1
  store %struct.reset_control* %107, %struct.reset_control** %109, align 8
  %110 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %5, align 8
  %111 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %110, i32 0, i32 1
  %112 = load %struct.reset_control*, %struct.reset_control** %111, align 8
  %113 = call i64 @IS_ERR(%struct.reset_control* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %103
  %116 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %117, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %119 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %5, align 8
  %120 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %119, i32 0, i32 1
  %121 = load %struct.reset_control*, %struct.reset_control** %120, align 8
  %122 = call i32 @PTR_ERR(%struct.reset_control* %121)
  store i32 %122, i32* %3, align 4
  br label %183

123:                                              ; preds = %103
  %124 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i8* @devm_clk_get(%struct.TYPE_8__* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %127 = bitcast i8* %126 to %struct.reset_control*
  %128 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %5, align 8
  %129 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %128, i32 0, i32 0
  store %struct.reset_control* %127, %struct.reset_control** %129, align 8
  %130 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %5, align 8
  %131 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %130, i32 0, i32 0
  %132 = load %struct.reset_control*, %struct.reset_control** %131, align 8
  %133 = call i64 @IS_ERR(%struct.reset_control* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %123
  %136 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %137, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %139 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %5, align 8
  %140 = getelementptr inbounds %struct.stm32_i2s_data, %struct.stm32_i2s_data* %139, i32 0, i32 0
  %141 = load %struct.reset_control*, %struct.reset_control** %140, align 8
  %142 = call i32 @PTR_ERR(%struct.reset_control* %141)
  store i32 %142, i32* %3, align 4
  br label %183

143:                                              ; preds = %123
  %144 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %145 = call i32 @platform_get_irq(%struct.platform_device* %144, i32 0)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %3, align 4
  br label %183

150:                                              ; preds = %143
  %151 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @stm32_i2s_isr, align 4
  %155 = load i32, i32* @IRQF_ONESHOT, align 4
  %156 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = call i32 @dev_name(%struct.TYPE_8__* %157)
  %159 = load %struct.stm32_i2s_data*, %struct.stm32_i2s_data** %5, align 8
  %160 = call i32 @devm_request_irq(%struct.TYPE_8__* %152, i32 %153, i32 %154, i32 %155, i32 %158, %struct.stm32_i2s_data* %159)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %150
  %164 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = load i32, i32* %11, align 4
  %167 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* %11, align 4
  store i32 %168, i32* %3, align 4
  br label %183

169:                                              ; preds = %150
  %170 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = call %struct.reset_control* @devm_reset_control_get_exclusive(%struct.TYPE_8__* %171, i32* null)
  store %struct.reset_control* %172, %struct.reset_control** %8, align 8
  %173 = load %struct.reset_control*, %struct.reset_control** %8, align 8
  %174 = call i64 @IS_ERR(%struct.reset_control* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %169
  %177 = load %struct.reset_control*, %struct.reset_control** %8, align 8
  %178 = call i32 @reset_control_assert(%struct.reset_control* %177)
  %179 = call i32 @udelay(i32 2)
  %180 = load %struct.reset_control*, %struct.reset_control** %8, align 8
  %181 = call i32 @reset_control_deassert(%struct.reset_control* %180)
  br label %182

182:                                              ; preds = %176, %169
  store i32 0, i32* %3, align 4
  br label %183

183:                                              ; preds = %182, %163, %148, %135, %115, %95, %75, %53, %35, %18
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_8__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.reset_control* @devm_ioremap_resource(%struct.TYPE_8__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @PTR_ERR(%struct.reset_control*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_8__*, i32, i32, i32, i32, %struct.stm32_i2s_data*) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

declare dso_local %struct.reset_control* @devm_reset_control_get_exclusive(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @reset_control_assert(%struct.reset_control*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_control_deassert(%struct.reset_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
