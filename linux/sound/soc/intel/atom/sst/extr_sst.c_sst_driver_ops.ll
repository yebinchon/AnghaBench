; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_sst_driver_ops.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_sst_driver_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32, i32, i32*, i32 }

@SST_TIME_STAMP_MRFLD = common dso_local global i32 0, align 4
@mrfld_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"SST Driver capabilities missing for dev_id: %x\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_driver_ops(%struct.intel_sst_drv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_sst_drv*, align 8
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %3, align 8
  %4 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %5 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %13 [
    i32 128, label %7
    i32 130, label %7
    i32 129, label %7
  ]

7:                                                ; preds = %1, %1, %1
  %8 = load i32, i32* @SST_TIME_STAMP_MRFLD, align 4
  %9 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %10 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %12 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %11, i32 0, i32 2
  store i32* @mrfld_ops, i32** %12, align 8
  store i32 0, i32* %2, align 4
  br label %23

13:                                               ; preds = %1
  %14 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %15 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %18 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %13, %7
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
