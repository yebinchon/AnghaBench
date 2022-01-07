; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_slim_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_slim_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.wcd9335_codec = type { i8*, %struct.slim_device*, i8*, %struct.slim_device* }

@.str = private unnamed_addr constant [13 x i8] c"slim-ifc-dev\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"No Interface device found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Unable to get SLIM Interface device\0A\00", align 1
@wcd9335_regmap_config = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to allocate slim register map\0A\00", align 1
@wcd9335_ifc_regmap_config = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to allocate ifc register map\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to bringup WCD9335\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slim_device*, i32)* @wcd9335_slim_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_slim_status(%struct.slim_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.slim_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.wcd9335_codec*, align 8
  %9 = alloca i32, align 4
  store %struct.slim_device* %0, %struct.slim_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.slim_device*, %struct.slim_device** %4, align 8
  %11 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.wcd9335_codec* @dev_get_drvdata(%struct.device* %12)
  store %struct.wcd9335_codec* %13, %struct.wcd9335_codec** %8, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.device_node* @of_parse_phandle(i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %17, %struct.device_node** %7, align 8
  %18 = load %struct.device_node*, %struct.device_node** %7, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %107

25:                                               ; preds = %2
  %26 = load %struct.slim_device*, %struct.slim_device** %4, align 8
  %27 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %28 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %27, i32 0, i32 3
  store %struct.slim_device* %26, %struct.slim_device** %28, align 8
  %29 = load %struct.slim_device*, %struct.slim_device** %4, align 8
  %30 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.device_node*, %struct.device_node** %7, align 8
  %33 = call %struct.slim_device* @of_slim_get_device(i32 %31, %struct.device_node* %32)
  %34 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %35 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %34, i32 0, i32 1
  store %struct.slim_device* %33, %struct.slim_device** %35, align 8
  %36 = load %struct.device_node*, %struct.device_node** %7, align 8
  %37 = call i32 @of_node_put(%struct.device_node* %36)
  %38 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %39 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %38, i32 0, i32 1
  %40 = load %struct.slim_device*, %struct.slim_device** %39, align 8
  %41 = icmp ne %struct.slim_device* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %25
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %107

47:                                               ; preds = %25
  %48 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %49 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %48, i32 0, i32 1
  %50 = load %struct.slim_device*, %struct.slim_device** %49, align 8
  %51 = call i32 @slim_get_logical_addr(%struct.slim_device* %50)
  %52 = load %struct.slim_device*, %struct.slim_device** %4, align 8
  %53 = call i8* @regmap_init_slimbus(%struct.slim_device* %52, i32* @wcd9335_regmap_config)
  %54 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %55 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %57 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @IS_ERR(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %47
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %65 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @PTR_ERR(i8* %66)
  store i32 %67, i32* %3, align 4
  br label %107

68:                                               ; preds = %47
  %69 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %70 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %69, i32 0, i32 1
  %71 = load %struct.slim_device*, %struct.slim_device** %70, align 8
  %72 = call i8* @regmap_init_slimbus(%struct.slim_device* %71, i32* @wcd9335_ifc_regmap_config)
  %73 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %74 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %76 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @IS_ERR(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %68
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %83 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %84 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @PTR_ERR(i8* %85)
  store i32 %86, i32* %3, align 4
  br label %107

87:                                               ; preds = %68
  %88 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %89 = call i32 @wcd9335_bring_up(%struct.wcd9335_codec* %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.device*, %struct.device** %6, align 8
  %94 = call i32 @dev_err(%struct.device* %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %107

96:                                               ; preds = %87
  %97 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %98 = call i32 @wcd9335_irq_init(%struct.wcd9335_codec* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %3, align 4
  br label %107

103:                                              ; preds = %96
  %104 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %8, align 8
  %105 = call i32 @wcd9335_probe(%struct.wcd9335_codec* %104)
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %103, %101, %92, %80, %61, %42, %20
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.wcd9335_codec* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.slim_device* @of_slim_get_device(i32, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @slim_get_logical_addr(%struct.slim_device*) #1

declare dso_local i8* @regmap_init_slimbus(%struct.slim_device*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @wcd9335_bring_up(%struct.wcd9335_codec*) #1

declare dso_local i32 @wcd9335_irq_init(%struct.wcd9335_codec*) #1

declare dso_local i32 @wcd9335_probe(%struct.wcd9335_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
