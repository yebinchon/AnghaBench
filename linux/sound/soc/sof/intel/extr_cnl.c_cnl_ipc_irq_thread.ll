; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_cnl.c_cnl_ipc_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_cnl.c_cnl_ipc_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, i32, i32, i64 }

@HDA_DSP_BAR = common dso_local global i32 0, align 4
@CNL_DSP_REG_HIPCIDA = common dso_local global i32 0, align 4
@CNL_DSP_REG_HIPCTDR = common dso_local global i32 0, align 4
@CNL_DSP_REG_HIPCTDD = common dso_local global i32 0, align 4
@CNL_DSP_REG_HIPCIDR = common dso_local global i32 0, align 4
@CNL_DSP_REG_HIPCIDA_DONE = common dso_local global i32 0, align 4
@CNL_DSP_REG_HIPCIDR_MSG_MASK = common dso_local global i32 0, align 4
@CNL_DSP_REG_HIPCIDA_MSG_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ipc: firmware response, msg:0x%x, msg_ext:0x%x\0A\00", align 1
@CNL_DSP_REG_HIPCCTL = common dso_local global i32 0, align 4
@CNL_DSP_REG_HIPCCTL_DONE = common dso_local global i32 0, align 4
@CNL_DSP_REG_HIPCTDR_BUSY = common dso_local global i32 0, align 4
@CNL_DSP_REG_HIPCTDR_MSG_MASK = common dso_local global i32 0, align 4
@CNL_DSP_REG_HIPCTDD_MSG_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"ipc: firmware initiated, msg:0x%x, msg_ext:0x%x\0A\00", align 1
@SOF_IPC_PANIC_MAGIC_MASK = common dso_local global i32 0, align 4
@SOF_IPC_PANIC_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"nothing to do in IPC IRQ thread\0A\00", align 1
@HDA_DSP_REG_ADSPIC = common dso_local global i32 0, align 4
@HDA_DSP_ADSPIC_IPC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cnl_ipc_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnl_ipc_irq_thread(i32 %0, i8* %1) #0 {
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
  %17 = load i32, i32* @CNL_DSP_REG_HIPCIDA, align 4
  %18 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %15, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %20 = load i32, i32* @HDA_DSP_BAR, align 4
  %21 = load i32, i32* @CNL_DSP_REG_HIPCTDR, align 4
  %22 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %19, i32 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %24 = load i32, i32* @HDA_DSP_BAR, align 4
  %25 = load i32, i32* @CNL_DSP_REG_HIPCTDD, align 4
  %26 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %23, i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %28 = load i32, i32* @HDA_DSP_BAR, align 4
  %29 = load i32, i32* @CNL_DSP_REG_HIPCIDR, align 4
  %30 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %27, i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @CNL_DSP_REG_HIPCIDA_DONE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %2
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @CNL_DSP_REG_HIPCIDR_MSG_MASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @CNL_DSP_REG_HIPCIDA_MSG_MASK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %10, align 4
  %42 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %43 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @dev_vdbg(i32 %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %49 = load i32, i32* @HDA_DSP_BAR, align 4
  %50 = load i32, i32* @CNL_DSP_REG_HIPCCTL, align 4
  %51 = load i32, i32* @CNL_DSP_REG_HIPCCTL_DONE, align 4
  %52 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %48, i32 %49, i32 %50, i32 %51, i32 0)
  %53 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %54 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %53, i32 0, i32 1
  %55 = call i32 @spin_lock_irq(i32* %54)
  %56 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %57 = call i32 @hda_dsp_ipc_get_reply(%struct.snd_sof_dev* %56)
  %58 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @snd_sof_ipc_reply(%struct.snd_sof_dev* %58, i32 %59)
  %61 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %62 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %35
  %66 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %67 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %69 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %68, i32 0, i32 2
  %70 = call i32 @wake_up(i32* %69)
  br label %71

71:                                               ; preds = %65, %35
  %72 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %73 = call i32 @cnl_ipc_dsp_done(%struct.snd_sof_dev* %72)
  %74 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %75 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %74, i32 0, i32 1
  %76 = call i32 @spin_unlock_irq(i32* %75)
  store i32 1, i32* %12, align 4
  br label %77

77:                                               ; preds = %71, %2
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @CNL_DSP_REG_HIPCTDR_BUSY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %111

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @CNL_DSP_REG_HIPCTDR_MSG_MASK, align 4
  %85 = and i32 %83, %84
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @CNL_DSP_REG_HIPCTDD_MSG_MASK, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %11, align 4
  %89 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %90 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @dev_vdbg(i32 %91, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @SOF_IPC_PANIC_MAGIC_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @SOF_IPC_PANIC_MAGIC, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %82
  %101 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @HDA_DSP_PANIC_OFFSET(i32 %102)
  %104 = call i32 @snd_sof_dsp_panic(%struct.snd_sof_dev* %101, i32 %103)
  br label %108

105:                                              ; preds = %82
  %106 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %107 = call i32 @snd_sof_ipc_msgs_rx(%struct.snd_sof_dev* %106)
  br label %108

108:                                              ; preds = %105, %100
  %109 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %110 = call i32 @cnl_ipc_host_done(%struct.snd_sof_dev* %109)
  store i32 1, i32* %12, align 4
  br label %111

111:                                              ; preds = %108, %77
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  %115 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %116 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @dev_dbg_ratelimited(i32 %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %119

119:                                              ; preds = %114, %111
  %120 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %5, align 8
  %121 = load i32, i32* @HDA_DSP_BAR, align 4
  %122 = load i32, i32* @HDA_DSP_REG_ADSPIC, align 4
  %123 = load i32, i32* @HDA_DSP_ADSPIC_IPC, align 4
  %124 = load i32, i32* @HDA_DSP_ADSPIC_IPC, align 4
  %125 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %120, i32 %121, i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %126
}

declare dso_local i32 @snd_sof_dsp_read(%struct.snd_sof_dev*, i32, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32) #1

declare dso_local i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @hda_dsp_ipc_get_reply(%struct.snd_sof_dev*) #1

declare dso_local i32 @snd_sof_ipc_reply(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @cnl_ipc_dsp_done(%struct.snd_sof_dev*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_sof_dsp_panic(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @HDA_DSP_PANIC_OFFSET(i32) #1

declare dso_local i32 @snd_sof_ipc_msgs_rx(%struct.snd_sof_dev*) #1

declare dso_local i32 @cnl_ipc_host_done(%struct.snd_sof_dev*) #1

declare dso_local i32 @dev_dbg_ratelimited(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
