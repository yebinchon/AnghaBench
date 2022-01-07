; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.tlv320dac33_platform_data* }
%struct.tlv320dac33_platform_data = type { i64, i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.tlv320dac33_priv = type { i64, i32, %struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, %struct.i2c_client*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Platform data not set\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dac33_reg = common dso_local global %struct.TYPE_11__* null, align 8
@DAC33_FIFO_BYPASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"tlv320dac33 reset\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to request reset GPIO (%d)\0A\00", align 1
@dac33_supply_names = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@soc_component_dev_tlv320dac33 = common dso_local global i32 0, align 4
@dac33_dai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @dac33_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac33_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tlv320dac33_platform_data*, align 8
  %7 = alloca %struct.tlv320dac33_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.tlv320dac33_platform_data*, %struct.tlv320dac33_platform_data** %12, align 8
  %14 = icmp eq %struct.tlv320dac33_platform_data* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %192

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load %struct.tlv320dac33_platform_data*, %struct.tlv320dac33_platform_data** %24, align 8
  store %struct.tlv320dac33_platform_data* %25, %struct.tlv320dac33_platform_data** %6, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.tlv320dac33_priv* @devm_kzalloc(%struct.TYPE_10__* %27, i32 64, i32 %28)
  store %struct.tlv320dac33_priv* %29, %struct.tlv320dac33_priv** %7, align 8
  %30 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %31 = icmp eq %struct.tlv320dac33_priv* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %192

35:                                               ; preds = %21
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dac33_reg, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dac33_reg, align 8
  %40 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %39)
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32 @devm_kmemdup(%struct.TYPE_10__* %37, %struct.TYPE_11__* %38, i32 %43, i32 %44)
  %46 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %47 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 8
  %48 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %49 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %35
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %192

55:                                               ; preds = %35
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %58 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %57, i32 0, i32 9
  store %struct.i2c_client* %56, %struct.i2c_client** %58, align 8
  %59 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %60 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %59, i32 0, i32 8
  %61 = call i32 @mutex_init(i32* %60)
  %62 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %63 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %62, i32 0, i32 7
  %64 = call i32 @spin_lock_init(i32* %63)
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %67 = call i32 @i2c_set_clientdata(%struct.i2c_client* %65, %struct.tlv320dac33_priv* %66)
  %68 = load %struct.tlv320dac33_platform_data*, %struct.tlv320dac33_platform_data** %6, align 8
  %69 = getelementptr inbounds %struct.tlv320dac33_platform_data, %struct.tlv320dac33_platform_data* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %72 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.tlv320dac33_platform_data*, %struct.tlv320dac33_platform_data** %6, align 8
  %74 = getelementptr inbounds %struct.tlv320dac33_platform_data, %struct.tlv320dac33_platform_data* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %77 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  %78 = load %struct.tlv320dac33_platform_data*, %struct.tlv320dac33_platform_data** %6, align 8
  %79 = getelementptr inbounds %struct.tlv320dac33_platform_data, %struct.tlv320dac33_platform_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %82 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load %struct.tlv320dac33_platform_data*, %struct.tlv320dac33_platform_data** %6, align 8
  %84 = getelementptr inbounds %struct.tlv320dac33_platform_data, %struct.tlv320dac33_platform_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %87 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %89 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %55
  %93 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %94 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %93, i32 0, i32 1
  store i32 10000, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %55
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %100 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @DAC33_FIFO_BYPASS, align 4
  %102 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %103 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 8
  %104 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %105 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp sge i64 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %95
  %109 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %110 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @gpio_request(i64 %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %108
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 0
  %118 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %119 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %117, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %120)
  br label %190

122:                                              ; preds = %108
  %123 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %124 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 @gpio_direction_output(i32 %126, i32 0)
  br label %128

128:                                              ; preds = %122, %95
  store i32 0, i32* %9, align 4
  br label %129

129:                                              ; preds = %149, %128
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %132 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %131, i32 0, i32 2
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %133)
  %135 = icmp slt i32 %130, %134
  br i1 %135, label %136, label %152

136:                                              ; preds = %129
  %137 = load i32*, i32** @dac33_supply_names, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %143 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %142, i32 0, i32 2
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  store i32 %141, i32* %148, align 4
  br label %149

149:                                              ; preds = %136
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %129

152:                                              ; preds = %129
  %153 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %154 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %153, i32 0, i32 0
  %155 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %156 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %155, i32 0, i32 2
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %157)
  %159 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %160 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %159, i32 0, i32 2
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = call i32 @devm_regulator_bulk_get(%struct.TYPE_10__* %154, i32 %158, %struct.TYPE_11__* %161)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %152
  %166 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %167 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %166, i32 0, i32 0
  %168 = load i32, i32* %8, align 4
  %169 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %167, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %168)
  br label %179

170:                                              ; preds = %152
  %171 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %172 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %171, i32 0, i32 0
  %173 = call i32 @devm_snd_soc_register_component(%struct.TYPE_10__* %172, i32* @soc_component_dev_tlv320dac33, i32* @dac33_dai, i32 1)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  br label %179

177:                                              ; preds = %170
  %178 = load i32, i32* %8, align 4
  store i32 %178, i32* %3, align 4
  br label %192

179:                                              ; preds = %176, %165
  %180 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %181 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp sge i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %7, align 8
  %186 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @gpio_free(i64 %187)
  br label %189

189:                                              ; preds = %184, %179
  br label %190

190:                                              ; preds = %189, %115
  %191 = load i32, i32* %8, align 4
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %190, %177, %52, %32, %15
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local %struct.tlv320dac33_priv* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @devm_kmemdup(%struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tlv320dac33_priv*) #1

declare dso_local i32 @gpio_request(i64, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.TYPE_10__*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @devm_snd_soc_register_component(%struct.TYPE_10__*, i32*, i32*, i32) #1

declare dso_local i32 @gpio_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
