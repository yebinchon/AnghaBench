; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_haswell.c_haswell_rtd_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_haswell.c_haswell_rtd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.sst_pdata = type { %struct.sst_hsw* }
%struct.sst_hsw = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@SST_HSW_DEVICE_SSP_0 = common dso_local global i32 0, align 4
@SST_HSW_DEVICE_MCLK_FREQ_24_MHZ = common dso_local global i32 0, align 4
@SST_HSW_DEVICE_CLOCK_MASTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to set device config\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_pcm_runtime*)* @haswell_rtd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @haswell_rtd_init(%struct.snd_soc_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.sst_pdata*, align 8
  %6 = alloca %struct.sst_hsw*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_pcm_runtime* %0, %struct.snd_soc_pcm_runtime** %3, align 8
  %8 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %9 = load i32, i32* @DRV_NAME, align 4
  %10 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %8, i32 %9)
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %4, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.sst_pdata* @dev_get_platdata(i32 %13)
  store %struct.sst_pdata* %14, %struct.sst_pdata** %5, align 8
  %15 = load %struct.sst_pdata*, %struct.sst_pdata** %5, align 8
  %16 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %15, i32 0, i32 0
  %17 = load %struct.sst_hsw*, %struct.sst_hsw** %16, align 8
  store %struct.sst_hsw* %17, %struct.sst_hsw** %6, align 8
  %18 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %19 = load i32, i32* @SST_HSW_DEVICE_SSP_0, align 4
  %20 = load i32, i32* @SST_HSW_DEVICE_MCLK_FREQ_24_MHZ, align 4
  %21 = load i32, i32* @SST_HSW_DEVICE_CLOCK_MASTER, align 4
  %22 = call i32 @sst_hsw_device_set_config(%struct.sst_hsw* %18, i32 %19, i32 %20, i32 %21, i32 9)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %27 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.sst_pdata* @dev_get_platdata(i32) #1

declare dso_local i32 @sst_hsw_device_set_config(%struct.sst_hsw*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
