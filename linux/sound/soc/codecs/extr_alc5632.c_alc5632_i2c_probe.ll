; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5632.c_alc5632_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5632.c_alc5632_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.alc5632_priv = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@alc5632_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"regmap_init() failed: %d\0A\00", align 1
@ALC5632_VENDOR_ID1 = common dso_local global i32 0, align 4
@ALC5632_VENDOR_ID2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to read chip ID: ret1=%d, ret2=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Device is not a ALC5632: VID1=0x%x, VID2=0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to issue reset\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"alc5632-hifi\00", align 1
@alc5632_dai = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@soc_component_device_alc5632 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to register component: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @alc5632_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc5632_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.alc5632_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.alc5632_priv* @devm_kzalloc(i32* %13, i32 8, i32 %14)
  store %struct.alc5632_priv* %15, %struct.alc5632_priv** %6, align 8
  %16 = load %struct.alc5632_priv*, %struct.alc5632_priv** %6, align 8
  %17 = icmp eq %struct.alc5632_priv* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %124

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.alc5632_priv*, %struct.alc5632_priv** %6, align 8
  %24 = call i32 @i2c_set_clientdata(%struct.i2c_client* %22, %struct.alc5632_priv* %23)
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %25, i32* @alc5632_regmap)
  %27 = load %struct.alc5632_priv*, %struct.alc5632_priv** %6, align 8
  %28 = getelementptr inbounds %struct.alc5632_priv, %struct.alc5632_priv* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.alc5632_priv*, %struct.alc5632_priv** %6, align 8
  %30 = getelementptr inbounds %struct.alc5632_priv, %struct.alc5632_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %21
  %35 = load %struct.alc5632_priv*, %struct.alc5632_priv** %6, align 8
  %36 = getelementptr inbounds %struct.alc5632_priv, %struct.alc5632_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i32*, i8*, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %124

44:                                               ; preds = %21
  %45 = load %struct.alc5632_priv*, %struct.alc5632_priv** %6, align 8
  %46 = getelementptr inbounds %struct.alc5632_priv, %struct.alc5632_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ALC5632_VENDOR_ID1, align 4
  %49 = call i32 @regmap_read(i32 %47, i32 %48, i32* %10)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.alc5632_priv*, %struct.alc5632_priv** %6, align 8
  %51 = getelementptr inbounds %struct.alc5632_priv, %struct.alc5632_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ALC5632_VENDOR_ID2, align 4
  %54 = call i32 @regmap_read(i32 %52, i32 %53, i32* %11)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57, %44
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i32*, i8*, ...) @dev_err(i32* %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %124

68:                                               ; preds = %57
  %69 = load i32, i32* %11, align 4
  %70 = lshr i32 %69, 8
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 4332
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %76 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %73, %68
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 (i32*, i8*, ...) @dev_err(i32* %81, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %124

87:                                               ; preds = %73
  %88 = load %struct.alc5632_priv*, %struct.alc5632_priv** %6, align 8
  %89 = getelementptr inbounds %struct.alc5632_priv, %struct.alc5632_priv* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @alc5632_reset(i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = call i32 (i32*, i8*, ...) @dev_err(i32* %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %124

99:                                               ; preds = %87
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.alc5632_priv*, %struct.alc5632_priv** %6, align 8
  %102 = getelementptr inbounds %struct.alc5632_priv, %struct.alc5632_priv* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.alc5632_priv*, %struct.alc5632_priv** %6, align 8
  %104 = getelementptr inbounds %struct.alc5632_priv, %struct.alc5632_priv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  switch i32 %105, label %107 [
    i32 92, label %106
  ]

106:                                              ; preds = %99
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @alc5632_dai, i32 0, i32 0), align 8
  br label %110

107:                                              ; preds = %99
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %124

110:                                              ; preds = %106
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 0
  %113 = call i32 @devm_snd_soc_register_component(i32* %112, i32* @soc_component_device_alc5632, %struct.TYPE_3__* @alc5632_dai, i32 1)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 0
  %119 = load i32, i32* %7, align 4
  %120 = call i32 (i32*, i8*, ...) @dev_err(i32* %118, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %3, align 4
  br label %124

122:                                              ; preds = %110
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %116, %107, %94, %79, %60, %34, %18
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.alc5632_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.alc5632_priv*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @alc5632_reset(i32) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
