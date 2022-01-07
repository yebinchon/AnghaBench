; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-ipc.c_hda_dsp_ipc_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-ipc.c_hda_dsp_ipc_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, i32, i32, i64 }

@HDA_DSP_BAR = common dso_local global i32 0, align 4
@HDA_DSP_REG_HIPCIE = common dso_local global i32 0, align 4
@HDA_DSP_REG_HIPCT = common dso_local global i32 0, align 4
@HDA_DSP_REG_HIPCI = common dso_local global i32 0, align 4
@HDA_DSP_REG_HIPCTE = common dso_local global i32 0, align 4
@HDA_DSP_REG_HIPCIE_DONE = common dso_local global i32 0, align 4
@HDA_DSP_REG_HIPCI_MSG_MASK = common dso_local global i32 0, align 4
@HDA_DSP_REG_HIPCIE_MSG_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ipc: firmware response, msg:0x%x, msg_ext:0x%x\0A\00", align 1
@HDA_DSP_REG_HIPCCTL = common dso_local global i32 0, align 4
@HDA_DSP_REG_HIPCCTL_DONE = common dso_local global i32 0, align 4
@HDA_DSP_REG_HIPCT_BUSY = common dso_local global i32 0, align 4
@HDA_DSP_REG_HIPCT_MSG_MASK = common dso_local global i32 0, align 4
@HDA_DSP_REG_HIPCTE_MSG_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"ipc: firmware initiated, msg:0x%x, msg_ext:0x%x\0A\00", align 1
@HDA_DSP_REG_HIPCCTL_BUSY = common dso_local global i32 0, align 4
@SOF_IPC_PANIC_MAGIC_MASK = common dso_local global i32 0, align 4
@SOF_IPC_PANIC_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"nothing to do in IPC IRQ thread\0A\00", align 1
@HDA_DSP_REG_ADSPIC = common dso_local global i32 0, align 4
@HDA_DSP_ADSPIC_IPC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_dsp_ipc_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_sof_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.snd_sof_dev*
  store %struct.snd_sof_dev* %14, %struct.snd_sof_dev** %5, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %16 = load i32, i32* @HDA_DSP_BAR, align 4
  %17 = load i32, i32* @HDA_DSP_REG_HIPCIE, align 4
  %18 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %15, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %20 = load i32, i32* @HDA_DSP_BAR, align 4
  %21 = load i32, i32* @HDA_DSP_REG_HIPCT, align 4
  %22 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %19, i32 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %24 = load i32, i32* @HDA_DSP_BAR, align 4
  %25 = load i32, i32* @HDA_DSP_REG_HIPCI, align 4
  %26 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %28 = load i32, i32* @HDA_DSP_BAR, align 4
  %29 = load i32, i32* @HDA_DSP_REG_HIPCTE, align 4
  %30 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %27, i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @HDA_DSP_REG_HIPCIE_DONE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %82

35:                                               ; preds = %2
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @HDA_DSP_REG_HIPCI_MSG_MASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @HDA_DSP_REG_HIPCIE_MSG_MASK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %11, align 4
  %42 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %43 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @dev_vdbg(i32 %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %49 = load i32, i32* @HDA_DSP_BAR, align 4
  %50 = load i32, i32* @HDA_DSP_REG_HIPCCTL, align 4
  %51 = load i32, i32* @HDA_DSP_REG_HIPCCTL_DONE, align 4
  %52 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %48, i32 %49, i32 %50, i32 %51, i32 0)
  %53 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %54 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %53, i32 0, i32 1
  %55 = call i32 @spin_lock_irq(i32* %54)
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @hda_dsp_ipc_is_sof(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %35
  %60 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %61 = call i32 @hda_dsp_ipc_get_reply(%struct.snd_sof_dev* %60)
  %62 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @snd_sof_ipc_reply(%struct.snd_sof_dev* %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %35
  %66 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %67 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %72 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %74 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %73, i32 0, i32 2
  %75 = call i32 @wake_up(i32* %74)
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %78 = call i32 @hda_dsp_ipc_dsp_done(%struct.snd_sof_dev* %77)
  %79 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %80 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %79, i32 0, i32 1
  %81 = call i32 @spin_unlock_irq(i32* %80)
  store i32 1, i32* %12, align 4
  br label %82

82:                                               ; preds = %76, %2
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @HDA_DSP_REG_HIPCT_BUSY, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %121

87:                                               ; preds = %82
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @HDA_DSP_REG_HIPCT_MSG_MASK, align 4
  %90 = and i32 %88, %89
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @HDA_DSP_REG_HIPCTE_MSG_MASK, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %11, align 4
  %94 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %95 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @dev_vdbg(i32 %96, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %98)
  %100 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %101 = load i32, i32* @HDA_DSP_BAR, align 4
  %102 = load i32, i32* @HDA_DSP_REG_HIPCCTL, align 4
  %103 = load i32, i32* @HDA_DSP_REG_HIPCCTL_BUSY, align 4
  %104 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %100, i32 %101, i32 %102, i32 %103, i32 0)
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @SOF_IPC_PANIC_MAGIC_MASK, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* @SOF_IPC_PANIC_MAGIC, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %87
  %111 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @HDA_DSP_PANIC_OFFSET(i32 %112)
  %114 = call i32 @snd_sof_dsp_panic(%struct.snd_sof_dev* %111, i32 %113)
  br label %118

115:                                              ; preds = %87
  %116 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %117 = call i32 @snd_sof_ipc_msgs_rx(%struct.snd_sof_dev* %116)
  br label %118

118:                                              ; preds = %115, %110
  %119 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %120 = call i32 @hda_dsp_ipc_host_done(%struct.snd_sof_dev* %119)
  store i32 1, i32* %12, align 4
  br label %121

121:                                              ; preds = %118, %82
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %121
  %125 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %126 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @dev_dbg_ratelimited(i32 %127, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %129

129:                                              ; preds = %124, %121
  %130 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %131 = load i32, i32* @HDA_DSP_BAR, align 4
  %132 = load i32, i32* @HDA_DSP_REG_ADSPIC, align 4
  %133 = load i32, i32* @HDA_DSP_ADSPIC_IPC, align 4
  %134 = load i32, i32* @HDA_DSP_ADSPIC_IPC, align 4
  %135 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %130, i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %136
}

declare dso_local i32 @snd_sof_dsp_read(%struct.snd_sof_dev*, i32, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32) #1

declare dso_local i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @hda_dsp_ipc_is_sof(i32) #1

declare dso_local i32 @hda_dsp_ipc_get_reply(%struct.snd_sof_dev*) #1

declare dso_local i32 @snd_sof_ipc_reply(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @hda_dsp_ipc_dsp_done(%struct.snd_sof_dev*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_sof_dsp_panic(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @HDA_DSP_PANIC_OFFSET(i32) #1

declare dso_local i32 @snd_sof_ipc_msgs_rx(%struct.snd_sof_dev*) #1

declare dso_local i32 @hda_dsp_ipc_host_done(%struct.snd_sof_dev*) #1

declare dso_local i32 @dev_dbg_ratelimited(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
