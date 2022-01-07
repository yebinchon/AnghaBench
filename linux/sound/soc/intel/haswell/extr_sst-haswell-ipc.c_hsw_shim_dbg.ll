; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_hsw_shim_dbg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_hsw_shim_dbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_generic_ipc = type { i32, %struct.sst_dsp* }
%struct.sst_dsp = type { i32 }

@SST_IPCX = common dso_local global i32 0, align 4
@SST_ISRX = common dso_local global i32 0, align 4
@SST_IPCD = common dso_local global i32 0, align 4
@SST_IMRX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"ipc: --%s-- ipcx 0x%8.8x isr 0x%8.8x ipcd 0x%8.8x imrx 0x%8.8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sst_generic_ipc*, i8*)* @hsw_shim_dbg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_shim_dbg(%struct.sst_generic_ipc* %0, i8* %1) #0 {
  %3 = alloca %struct.sst_generic_ipc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sst_dsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sst_generic_ipc* %0, %struct.sst_generic_ipc** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %3, align 8
  %11 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %10, i32 0, i32 1
  %12 = load %struct.sst_dsp*, %struct.sst_dsp** %11, align 8
  store %struct.sst_dsp* %12, %struct.sst_dsp** %5, align 8
  %13 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %14 = load i32, i32* @SST_IPCX, align 4
  %15 = call i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %17 = load i32, i32* @SST_ISRX, align 4
  %18 = call i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %20 = load i32, i32* @SST_IPCD, align 4
  %21 = call i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %23 = load i32, i32* @SST_IMRX, align 4
  %24 = call i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %3, align 8
  %26 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %29, i32 %30, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
