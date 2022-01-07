; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32 }
%struct.sst_byt = type { %struct.sst_generic_ipc }
%struct.sst_generic_ipc = type { i32 }

@SST_IPCD = common dso_local global i32 0, align 4
@SST_BYT_IPCD_BUSY = common dso_local global i32 0, align 4
@IPC_NOTIFICATION = common dso_local global i32 0, align 4
@SST_BYT_IPCD_DONE = common dso_local global i32 0, align 4
@IPC_HEADER_DATA_MASK = common dso_local global i32 0, align 4
@SST_IMRX = common dso_local global i32 0, align 4
@SST_BYT_IMRX_REQUEST = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sst_byt_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_byt_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sst_dsp*, align 8
  %6 = alloca %struct.sst_byt*, align 8
  %7 = alloca %struct.sst_generic_ipc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.sst_dsp*
  store %struct.sst_dsp* %11, %struct.sst_dsp** %5, align 8
  %12 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %13 = call %struct.sst_byt* @sst_dsp_get_thread_context(%struct.sst_dsp* %12)
  store %struct.sst_byt* %13, %struct.sst_byt** %6, align 8
  %14 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %15 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %14, i32 0, i32 0
  store %struct.sst_generic_ipc* %15, %struct.sst_generic_ipc** %7, align 8
  %16 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %17 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %16, i32 0, i32 0
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %21 = load i32, i32* @SST_IPCD, align 4
  %22 = call i32 @sst_dsp_shim_read64_unlocked(%struct.sst_dsp* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @SST_BYT_IPCD_BUSY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @IPC_NOTIFICATION, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %34 = call i32 @sst_byt_process_notification(%struct.sst_byt* %33, i64* %9)
  br label %39

35:                                               ; preds = %27
  %36 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @sst_byt_process_reply(%struct.sst_byt* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %41 = load i32, i32* @SST_IPCD, align 4
  %42 = load i32, i32* @SST_BYT_IPCD_DONE, align 4
  %43 = load i32, i32* @SST_BYT_IPCD_BUSY, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @IPC_HEADER_DATA_MASK, align 4
  %46 = call i32 @IPC_HEADER_DATA(i32 %45)
  %47 = or i32 %44, %46
  %48 = load i32, i32* @SST_BYT_IPCD_DONE, align 4
  %49 = call i32 @sst_dsp_shim_update_bits64_unlocked(%struct.sst_dsp* %40, i32 %41, i32 %47, i32 %48)
  %50 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %51 = load i32, i32* @SST_IMRX, align 4
  %52 = load i32, i32* @SST_BYT_IMRX_REQUEST, align 4
  %53 = call i32 @sst_dsp_shim_update_bits64_unlocked(%struct.sst_dsp* %50, i32 %51, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %39, %2
  %55 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %56 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %55, i32 0, i32 0
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %7, align 8
  %60 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %59, i32 0, i32 0
  %61 = call i32 @schedule_work(i32* %60)
  %62 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %62
}

declare dso_local %struct.sst_byt* @sst_dsp_get_thread_context(%struct.sst_dsp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sst_dsp_shim_read64_unlocked(%struct.sst_dsp*, i32) #1

declare dso_local i32 @sst_byt_process_notification(%struct.sst_byt*, i64*) #1

declare dso_local i32 @sst_byt_process_reply(%struct.sst_byt*, i32) #1

declare dso_local i32 @sst_dsp_shim_update_bits64_unlocked(%struct.sst_dsp*, i32, i32, i32) #1

declare dso_local i32 @IPC_HEADER_DATA(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
