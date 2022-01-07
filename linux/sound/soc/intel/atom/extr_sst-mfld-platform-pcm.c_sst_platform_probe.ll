; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-pcm.c_sst_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-pcm.c_sst_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sst_data = type { i32, %struct.platform_device*, %struct.sst_platform_data* }
%struct.sst_platform_data = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dpcm_strm_map = common dso_local global i32 0, align 4
@sst_soc_platform_drv = common dso_local global i32 0, align 4
@sst_platform_dai = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"registering cpu dais failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sst_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sst_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sst_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @devm_kzalloc(i32* %8, i32 24, i32 %9)
  %11 = bitcast i8* %10 to %struct.sst_data*
  store %struct.sst_data* %11, %struct.sst_data** %4, align 8
  %12 = load %struct.sst_data*, %struct.sst_data** %4, align 8
  %13 = icmp eq %struct.sst_data* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %63

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @devm_kzalloc(i32* %19, i32 8, i32 %20)
  %22 = bitcast i8* %21 to %struct.sst_platform_data*
  store %struct.sst_platform_data* %22, %struct.sst_platform_data** %6, align 8
  %23 = load %struct.sst_platform_data*, %struct.sst_platform_data** %6, align 8
  %24 = icmp eq %struct.sst_platform_data* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %63

28:                                               ; preds = %17
  %29 = load i32, i32* @dpcm_strm_map, align 4
  %30 = load %struct.sst_platform_data*, %struct.sst_platform_data** %6, align 8
  %31 = getelementptr inbounds %struct.sst_platform_data, %struct.sst_platform_data* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @dpcm_strm_map, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = load %struct.sst_platform_data*, %struct.sst_platform_data** %6, align 8
  %35 = getelementptr inbounds %struct.sst_platform_data, %struct.sst_platform_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.sst_platform_data*, %struct.sst_platform_data** %6, align 8
  %37 = load %struct.sst_data*, %struct.sst_data** %4, align 8
  %38 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %37, i32 0, i32 2
  store %struct.sst_platform_data* %36, %struct.sst_platform_data** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.sst_data*, %struct.sst_data** %4, align 8
  %41 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %40, i32 0, i32 1
  store %struct.platform_device* %39, %struct.platform_device** %41, align 8
  %42 = load %struct.sst_data*, %struct.sst_data** %4, align 8
  %43 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %42, i32 0, i32 0
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.sst_data*, %struct.sst_data** %4, align 8
  %48 = call i32 @dev_set_drvdata(i32* %46, %struct.sst_data* %47)
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load i32, i32* @sst_platform_dai, align 4
  %52 = load i32, i32* @sst_platform_dai, align 4
  %53 = call i32 @ARRAY_SIZE(i32 %52)
  %54 = call i32 @devm_snd_soc_register_component(i32* %50, i32* @sst_soc_platform_drv, i32 %51, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %28
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %28
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %25, %14
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.sst_data*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
