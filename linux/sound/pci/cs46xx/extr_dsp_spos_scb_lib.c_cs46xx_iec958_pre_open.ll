; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_iec958_pre_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_iec958_pre_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.dsp_spos_instance* }
%struct.dsp_spos_instance = type { i32, i32, i32, i32 }

@DSP_SPDIF_STATUS_OUTPUT_ENABLED = common dso_local global i32 0, align 4
@DSP_SPDIF_STATUS_HW_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"AsynchFGTxSCB\00", align 1
@ASYNCTX_SCB_ADDR = common dso_local global i32 0, align 4
@SPDIFO_SCB_INST = common dso_local global i32 0, align 4
@SPDIFO_IP_OUTPUT_BUFFER1 = common dso_local global i32 0, align 4
@SCB_ON_PARENT_NEXT_SCB = common dso_local global i32 0, align 4
@SP_SPDOUT_CSUV = common dso_local global i32 0, align 4
@DSP_SPDIF_STATUS_PLAYBACK_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs46xx_iec958_pre_open(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca %struct.snd_cs46xx*, align 8
  %3 = alloca %struct.dsp_spos_instance*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %2, align 8
  %4 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %5 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %4, i32 0, i32 0
  %6 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  store %struct.dsp_spos_instance* %6, %struct.dsp_spos_instance** %3, align 8
  %7 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %3, align 8
  %8 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DSP_SPDIF_STATUS_OUTPUT_ENABLED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %15 = call i32 @cs46xx_dsp_disable_spdif_out(%struct.snd_cs46xx* %14)
  %16 = load i32, i32* @DSP_SPDIF_STATUS_OUTPUT_ENABLED, align 4
  %17 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %3, align 8
  %18 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %13, %1
  %22 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %3, align 8
  %23 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DSP_SPDIF_STATUS_HW_ENABLED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %30 = call i32 @cs46xx_dsp_enable_spdif_hw(%struct.snd_cs46xx* %29)
  br label %31

31:                                               ; preds = %28, %21
  %32 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %33 = load i32, i32* @ASYNCTX_SCB_ADDR, align 4
  %34 = load i32, i32* @SPDIFO_SCB_INST, align 4
  %35 = load i32, i32* @SPDIFO_IP_OUTPUT_BUFFER1, align 4
  %36 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %3, align 8
  %37 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SCB_ON_PARENT_NEXT_SCB, align 4
  %40 = call i32 @cs46xx_dsp_create_asynch_fg_tx_scb(%struct.snd_cs46xx* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %35, i32 %38, i32 %39)
  %41 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %3, align 8
  %42 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %2, align 8
  %44 = load i32, i32* @SP_SPDOUT_CSUV, align 4
  %45 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %3, align 8
  %46 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cs46xx_poke_via_dsp(%struct.snd_cs46xx* %43, i32 %44, i32 %47)
  %49 = load i32, i32* @DSP_SPDIF_STATUS_PLAYBACK_OPEN, align 4
  %50 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %3, align 8
  %51 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  ret i32 0
}

declare dso_local i32 @cs46xx_dsp_disable_spdif_out(%struct.snd_cs46xx*) #1

declare dso_local i32 @cs46xx_dsp_enable_spdif_hw(%struct.snd_cs46xx*) #1

declare dso_local i32 @cs46xx_dsp_create_asynch_fg_tx_scb(%struct.snd_cs46xx*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cs46xx_poke_via_dsp(%struct.snd_cs46xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
