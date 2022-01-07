; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_hsw_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_hsw_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32 }
%struct.sst_hsw = type { i32, %struct.sst_generic_ipc }
%struct.sst_generic_ipc = type { i32 }

@SST_IPCD = common dso_local global i32 0, align 4
@SST_IPCX_DONE = common dso_local global i32 0, align 4
@SST_IPCX = common dso_local global i32 0, align 4
@SST_IMRX = common dso_local global i32 0, align 4
@SST_IMRX_DONE = common dso_local global i32 0, align 4
@SST_IPCD_BUSY = common dso_local global i32 0, align 4
@SST_IPCD_DONE = common dso_local global i32 0, align 4
@SST_IMRX_BUSY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hsw_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sst_dsp*, align 8
  %6 = alloca %struct.sst_hsw*, align 8
  %7 = alloca %struct.sst_generic_ipc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.sst_dsp*
  store %struct.sst_dsp* %12, %struct.sst_dsp** %5, align 8
  %13 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %14 = call %struct.sst_hsw* @sst_dsp_get_thread_context(%struct.sst_dsp* %13)
  store %struct.sst_hsw* %14, %struct.sst_hsw** %6, align 8
  %15 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %16 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %15, i32 0, i32 1
  store %struct.sst_generic_ipc* %16, %struct.sst_generic_ipc** %7, align 8
  %17 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %18 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %17, i32 0, i32 0
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %22 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sst_dsp_ipc_msg_rx(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %26 = load i32, i32* @SST_IPCD, align 4
  %27 = call i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @SST_IPCX_DONE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %2
  %33 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @hsw_process_reply(%struct.sst_hsw* %33, i32 %34)
  %36 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %37 = load i32, i32* @SST_IPCX, align 4
  %38 = load i32, i32* @SST_IPCX_DONE, align 4
  %39 = call i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp* %36, i32 %37, i32 %38, i32 0)
  %40 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %41 = load i32, i32* @SST_IMRX, align 4
  %42 = load i32, i32* @SST_IMRX_DONE, align 4
  %43 = call i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp* %40, i32 %41, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %32, %2
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @SST_IPCD_BUSY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load %struct.sst_hsw*, %struct.sst_hsw** %6, align 8
  %51 = call i32 @hsw_process_notification(%struct.sst_hsw* %50)
  %52 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %53 = load i32, i32* @SST_IPCD, align 4
  %54 = load i32, i32* @SST_IPCD_BUSY, align 4
  %55 = load i32, i32* @SST_IPCD_DONE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @SST_IPCD_DONE, align 4
  %58 = call i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp* %52, i32 %53, i32 %56, i32 %57)
  %59 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %60 = load i32, i32* @SST_IMRX, align 4
  %61 = load i32, i32* @SST_IMRX_BUSY, align 4
  %62 = call i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp* %59, i32 %60, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %49, %44
  %64 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %65 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %64, i32 0, i32 0
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %7, align 8
  %69 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %68, i32 0, i32 0
  %70 = call i32 @schedule_work(i32* %69)
  %71 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %71
}

declare dso_local %struct.sst_hsw* @sst_dsp_get_thread_context(%struct.sst_dsp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sst_dsp_ipc_msg_rx(i32) #1

declare dso_local i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp*, i32) #1

declare dso_local i32 @hsw_process_reply(%struct.sst_hsw*, i32) #1

declare dso_local i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp*, i32, i32, i32) #1

declare dso_local i32 @hsw_process_notification(%struct.sst_hsw*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
