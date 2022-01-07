; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_send_byte_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_send_byte_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_sst_bytes_v2 = type { i32 }
%struct.intel_sst_drv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.snd_sst_bytes_v2*)* @sst_send_byte_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_send_byte_stream(%struct.device* %0, %struct.snd_sst_bytes_v2* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.snd_sst_bytes_v2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_sst_drv*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.snd_sst_bytes_v2* %1, %struct.snd_sst_bytes_v2** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.intel_sst_drv* @dev_get_drvdata(%struct.device* %8)
  store %struct.intel_sst_drv* %9, %struct.intel_sst_drv** %7, align 8
  %10 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %11 = icmp eq %struct.snd_sst_bytes_v2* null, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %7, align 8
  %17 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pm_runtime_get_sync(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %7, align 8
  %24 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pm_runtime_put_sync(i32 %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %35

28:                                               ; preds = %15
  %29 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %7, align 8
  %30 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %5, align 8
  %31 = call i32 @sst_send_byte_stream_mrfld(%struct.intel_sst_drv* %29, %struct.snd_sst_bytes_v2* %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %7, align 8
  %33 = call i32 @sst_pm_runtime_put(%struct.intel_sst_drv* %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %28, %22, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.intel_sst_drv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @sst_send_byte_stream_mrfld(%struct.intel_sst_drv*, %struct.snd_sst_bytes_v2*) #1

declare dso_local i32 @sst_pm_runtime_put(%struct.intel_sst_drv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
