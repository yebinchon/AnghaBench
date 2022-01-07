; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-pcm.c_dw_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-pcm.c_dw_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.dw_i2s_dev* }
%struct.dw_i2s_dev = type { i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"invalid channels number\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@dw_pcm_tx_16 = common dso_local global i32 0, align 4
@dw_pcm_rx_16 = common dso_local global i32 0, align 4
@dw_pcm_tx_32 = common dso_local global i32 0, align 4
@dw_pcm_rx_32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"invalid format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @dw_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.dw_i2s_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %6, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 0
  %14 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %13, align 8
  store %struct.dw_i2s_dev* %14, %struct.dw_i2s_dev** %7, align 8
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %16 = call i32 @params_channels(%struct.snd_pcm_hw_params* %15)
  switch i32 %16, label %18 [
    i32 2, label %17
  ]

17:                                               ; preds = %2
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %7, align 8
  %20 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %59

25:                                               ; preds = %17
  %26 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %27 = call i32 @params_format(%struct.snd_pcm_hw_params* %26)
  switch i32 %27, label %42 [
    i32 130, label %28
    i32 129, label %35
    i32 128, label %35
  ]

28:                                               ; preds = %25
  %29 = load i32, i32* @dw_pcm_tx_16, align 4
  %30 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %7, align 8
  %31 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @dw_pcm_rx_16, align 4
  %33 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %7, align 8
  %34 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %49

35:                                               ; preds = %25, %25
  %36 = load i32, i32* @dw_pcm_tx_32, align 4
  %37 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %7, align 8
  %38 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @dw_pcm_rx_32, align 4
  %40 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %7, align 8
  %41 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %49

42:                                               ; preds = %25
  %43 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %7, align 8
  %44 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %59

49:                                               ; preds = %35, %28
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %51 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %52 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %51)
  %53 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %50, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %56, %42, %18
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
