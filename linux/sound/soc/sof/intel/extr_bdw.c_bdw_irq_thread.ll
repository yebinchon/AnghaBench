; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_bdw.c_bdw_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_bdw.c_bdw_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }

@BDW_DSP_BAR = common dso_local global i32 0, align 4
@SHIM_IMRX = common dso_local global i32 0, align 4
@SHIM_IPCX = common dso_local global i32 0, align 4
@SHIM_IPCX_DONE = common dso_local global i32 0, align 4
@SHIM_IMRX_DONE = common dso_local global i32 0, align 4
@SHIM_IPCD = common dso_local global i32 0, align 4
@SHIM_IPCD_BUSY = common dso_local global i32 0, align 4
@SHIM_IMRX_BUSY = common dso_local global i32 0, align 4
@SOF_IPC_PANIC_MAGIC_MASK = common dso_local global i32 0, align 4
@SOF_IPC_PANIC_MAGIC = common dso_local global i32 0, align 4
@MBOX_OFFSET = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bdw_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdw_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_sof_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.snd_sof_dev*
  store %struct.snd_sof_dev* %10, %struct.snd_sof_dev** %5, align 8
  %11 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %12 = load i32, i32* @BDW_DSP_BAR, align 4
  %13 = load i32, i32* @SHIM_IMRX, align 4
  %14 = call i32 @snd_sof_dsp_read64(%struct.snd_sof_dev* %11, i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %16 = load i32, i32* @BDW_DSP_BAR, align 4
  %17 = load i32, i32* @SHIM_IPCX, align 4
  %18 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %15, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SHIM_IPCX_DONE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @SHIM_IMRX_DONE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %23
  %29 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %30 = load i32, i32* @BDW_DSP_BAR, align 4
  %31 = load i32, i32* @SHIM_IMRX, align 4
  %32 = load i32, i32* @SHIM_IMRX_DONE, align 4
  %33 = load i32, i32* @SHIM_IMRX_DONE, align 4
  %34 = call i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev* %29, i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %36 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %35, i32 0, i32 0
  %37 = call i32 @spin_lock_irq(i32* %36)
  %38 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %39 = call i32 @bdw_get_reply(%struct.snd_sof_dev* %38)
  %40 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @snd_sof_ipc_reply(%struct.snd_sof_dev* %40, i32 %41)
  %43 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %44 = call i32 @bdw_dsp_done(%struct.snd_sof_dev* %43)
  %45 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %46 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock_irq(i32* %46)
  br label %48

48:                                               ; preds = %28, %23, %2
  %49 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %50 = load i32, i32* @BDW_DSP_BAR, align 4
  %51 = load i32, i32* @SHIM_IPCD, align 4
  %52 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %49, i32 %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @SHIM_IPCD_BUSY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %48
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @SHIM_IMRX_BUSY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %87, label %62

62:                                               ; preds = %57
  %63 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %64 = load i32, i32* @BDW_DSP_BAR, align 4
  %65 = load i32, i32* @SHIM_IMRX, align 4
  %66 = load i32, i32* @SHIM_IMRX_BUSY, align 4
  %67 = load i32, i32* @SHIM_IMRX_BUSY, align 4
  %68 = call i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev* %63, i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @SOF_IPC_PANIC_MAGIC_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @SOF_IPC_PANIC_MAGIC, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %62
  %75 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @BDW_PANIC_OFFSET(i32 %76)
  %78 = load i64, i64* @MBOX_OFFSET, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @snd_sof_dsp_panic(%struct.snd_sof_dev* %75, i64 %79)
  br label %84

81:                                               ; preds = %62
  %82 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %83 = call i32 @snd_sof_ipc_msgs_rx(%struct.snd_sof_dev* %82)
  br label %84

84:                                               ; preds = %81, %74
  %85 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %86 = call i32 @bdw_host_done(%struct.snd_sof_dev* %85)
  br label %87

87:                                               ; preds = %84, %57, %48
  %88 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %88
}

declare dso_local i32 @snd_sof_dsp_read64(%struct.snd_sof_dev*, i32, i32) #1

declare dso_local i32 @snd_sof_dsp_read(%struct.snd_sof_dev*, i32, i32) #1

declare dso_local i32 @snd_sof_dsp_update_bits_unlocked(%struct.snd_sof_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @bdw_get_reply(%struct.snd_sof_dev*) #1

declare dso_local i32 @snd_sof_ipc_reply(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @bdw_dsp_done(%struct.snd_sof_dev*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_sof_dsp_panic(%struct.snd_sof_dev*, i64) #1

declare dso_local i64 @BDW_PANIC_OFFSET(i32) #1

declare dso_local i32 @snd_sof_ipc_msgs_rx(%struct.snd_sof_dev*) #1

declare dso_local i32 @bdw_host_done(%struct.snd_sof_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
