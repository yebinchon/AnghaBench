; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_smdk_wm8994.c_smdk_audio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_smdk_wm8994.c_smdk_audio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_8__ = type { i64, i32* }
%struct.platform_device = type { %struct.TYPE_11__ }
%struct.smdk_wm8994_data = type { i32 }
%struct.of_device_id = type { i64 }

@smdk = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@smdk_dai = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"samsung,i2s-controller\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Property 'samsung,i2s-controller' missing or invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@samsung_wm8994_of_match = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"snd_soc_register_card() failed:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @smdk_audio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smdk_audio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.snd_soc_card*, align 8
  %7 = alloca %struct.smdk_wm8994_data*, align 8
  %8 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  store %struct.snd_soc_card* @smdk, %struct.snd_soc_card** %6, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %16 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %15, i32 0, i32 0
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %16, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.smdk_wm8994_data* @devm_kzalloc(%struct.TYPE_11__* %18, i32 4, i32 %19)
  store %struct.smdk_wm8994_data* %20, %struct.smdk_wm8994_data** %7, align 8
  %21 = load %struct.smdk_wm8994_data*, %struct.smdk_wm8994_data** %7, align 8
  %22 = icmp ne %struct.smdk_wm8994_data* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %105

26:                                               ; preds = %1
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = icmp ne %struct.device_node* %27, null
  br i1 %28, label %29, label %72

29:                                               ; preds = %26
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** @smdk_dai, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.device_node*, %struct.device_node** %5, align 8
  %36 = call i64 @of_parse_phandle(%struct.device_node* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 0)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** @smdk_dai, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i64 %36, i64* %41, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** @smdk_dai, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %29
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %51, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %49, %29
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** @smdk_dai, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** @smdk_dai, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** @smdk_dai, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i64 %66, i64* %71, align 8
  br label %72

72:                                               ; preds = %55, %26
  %73 = load i32, i32* @samsung_wm8994_of_match, align 4
  %74 = call i32 @of_match_ptr(i32 %73)
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call %struct.of_device_id* @of_match_device(i32 %74, %struct.TYPE_11__* %76)
  store %struct.of_device_id* %77, %struct.of_device_id** %8, align 8
  %78 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %79 = icmp ne %struct.of_device_id* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load %struct.smdk_wm8994_data*, %struct.smdk_wm8994_data** %7, align 8
  %82 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %83 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.smdk_wm8994_data*
  %86 = bitcast %struct.smdk_wm8994_data* %81 to i8*
  %87 = bitcast %struct.smdk_wm8994_data* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 4, i1 false)
  br label %88

88:                                               ; preds = %80, %72
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = load %struct.smdk_wm8994_data*, %struct.smdk_wm8994_data** %7, align 8
  %91 = call i32 @platform_set_drvdata(%struct.platform_device* %89, %struct.smdk_wm8994_data* %90)
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %95 = call i32 @devm_snd_soc_register_card(%struct.TYPE_11__* %93, %struct.snd_soc_card* %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %88
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = load i32, i32* %4, align 4
  %102 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %98, %88
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %23
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.smdk_wm8994_data* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @of_match_ptr(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.smdk_wm8994_data*) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.TYPE_11__*, %struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
