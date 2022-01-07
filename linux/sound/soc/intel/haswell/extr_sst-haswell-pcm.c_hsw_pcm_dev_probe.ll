; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_pcm_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_pcm_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sst_pdata = type { i32 }
%struct.hsw_priv_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@hsw_dai_component = common dso_local global i32 0, align 4
@hsw_dais = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hsw_pcm_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_pcm_dev_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sst_pdata*, align 8
  %5 = alloca %struct.hsw_priv_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.sst_pdata* @dev_get_platdata(i32* %8)
  store %struct.sst_pdata* %9, %struct.sst_pdata** %4, align 8
  %10 = load %struct.sst_pdata*, %struct.sst_pdata** %4, align 8
  %11 = icmp ne %struct.sst_pdata* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %59

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.hsw_priv_data* @devm_kzalloc(i32* %17, i32 4, i32 %18)
  store %struct.hsw_priv_data* %19, %struct.hsw_priv_data** %5, align 8
  %20 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %5, align 8
  %21 = icmp ne %struct.hsw_priv_data* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %59

25:                                               ; preds = %15
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.sst_pdata*, %struct.sst_pdata** %4, align 8
  %29 = call i32 @sst_hsw_dsp_init(i32* %27, %struct.sst_pdata* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %59

35:                                               ; preds = %25
  %36 = load %struct.sst_pdata*, %struct.sst_pdata** %4, align 8
  %37 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %5, align 8
  %40 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %5, align 8
  %43 = call i32 @platform_set_drvdata(%struct.platform_device* %41, %struct.hsw_priv_data* %42)
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load i32, i32* @hsw_dais, align 4
  %47 = load i32, i32* @hsw_dais, align 4
  %48 = call i32 @ARRAY_SIZE(i32 %47)
  %49 = call i32 @devm_snd_soc_register_component(i32* %45, i32* @hsw_dai_component, i32 %46, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %35
  br label %54

53:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %59

54:                                               ; preds = %52
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.sst_pdata*, %struct.sst_pdata** %4, align 8
  %58 = call i32 @sst_hsw_dsp_free(i32* %56, %struct.sst_pdata* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %54, %53, %32, %22, %12
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.sst_pdata* @dev_get_platdata(i32*) #1

declare dso_local %struct.hsw_priv_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @sst_hsw_dsp_init(i32*, %struct.sst_pdata*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hsw_priv_data*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @sst_hsw_dsp_free(i32*, %struct.sst_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
