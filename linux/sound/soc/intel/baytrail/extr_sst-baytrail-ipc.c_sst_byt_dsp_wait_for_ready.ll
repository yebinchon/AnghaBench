; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_dsp_wait_for_ready.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_dsp_wait_for_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sst_pdata = type { %struct.sst_byt* }
%struct.sst_byt = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"wait for dsp reboot\0A\00", align 1
@IPC_BOOT_MSECS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ipc: error DSP boot timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"dsp rebooted\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_byt_dsp_wait_for_ready(%struct.device* %0, %struct.sst_pdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sst_pdata*, align 8
  %6 = alloca %struct.sst_byt*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.sst_pdata* %1, %struct.sst_pdata** %5, align 8
  %8 = load %struct.sst_pdata*, %struct.sst_pdata** %5, align 8
  %9 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %8, i32 0, i32 0
  %10 = load %struct.sst_byt*, %struct.sst_byt** %9, align 8
  store %struct.sst_byt* %10, %struct.sst_byt** %6, align 8
  %11 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %12 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %16 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %19 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IPC_BOOT_MSECS, align 4
  %22 = call i32 @msecs_to_jiffies(i32 %21)
  %23 = call i32 @wait_event_timeout(i32 %17, i32 %20, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %28 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %38

33:                                               ; preds = %2
  %34 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %35 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %26
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
