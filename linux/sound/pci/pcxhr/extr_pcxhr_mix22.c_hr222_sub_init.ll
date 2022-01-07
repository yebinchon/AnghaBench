; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_sub_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mix22.c_hr222_sub_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@PCXHR_CFG_SYNCDSP_MASK = common dso_local global i32 0, align 4
@PCXHR_XLX_STATUS = common dso_local global i32 0, align 4
@PCXHR_STAT_MIC_CAPS = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [26 x i8] c"MIC input available = %d\0A\00", align 1
@PCXHR_DSP_RESET = common dso_local global i32 0, align 4
@PCXHR_DSP_RESET_DSP = common dso_local global i32 0, align 4
@PCXHR_DSP_RESET_MUTE = common dso_local global i32 0, align 4
@PCXHR_DSP_RESET_CODEC = common dso_local global i32 0, align 4
@AKM_POWER_CONTROL_CMD = common dso_local global i32 0, align 4
@AKM_CLOCK_INF_55K_CMD = common dso_local global i32 0, align 4
@AKM_UNMUTE_CMD = common dso_local global i32 0, align 4
@AKM_RESET_OFF_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hr222_sub_init(%struct.pcxhr_mgr* %0) #0 {
  %2 = alloca %struct.pcxhr_mgr*, align 8
  %3 = alloca i8, align 1
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %2, align 8
  %4 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %5 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %4, i32 0, i32 0
  store i32 1, i32* %5, align 8
  %6 = load i32, i32* @PCXHR_CFG_SYNCDSP_MASK, align 4
  %7 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %8 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %7, i32 0, i32 4
  store i32 %6, i32* %8, align 8
  %9 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %10 = load i32, i32* @PCXHR_XLX_STATUS, align 4
  %11 = call zeroext i8 @PCXHR_INPB(%struct.pcxhr_mgr* %9, i32 %10)
  store i8 %11, i8* %3, align 1
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @PCXHR_STAT_MIC_CAPS, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %20 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %23 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %27 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_dbg(i32* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %31 = load i32, i32* @PCXHR_DSP_RESET, align 4
  %32 = load i32, i32* @PCXHR_DSP_RESET_DSP, align 4
  %33 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %30, i32 %31, i32 %32)
  %34 = call i32 @msleep(i32 5)
  %35 = load i32, i32* @PCXHR_DSP_RESET_DSP, align 4
  %36 = load i32, i32* @PCXHR_DSP_RESET_MUTE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @PCXHR_DSP_RESET_CODEC, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %41 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %43 = load i32, i32* @PCXHR_DSP_RESET, align 4
  %44 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %45 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @PCXHR_OUTPB(%struct.pcxhr_mgr* %42, i32 %43, i32 %46)
  %48 = call i32 @msleep(i32 5)
  %49 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %50 = load i32, i32* @AKM_POWER_CONTROL_CMD, align 4
  %51 = call i32 @hr222_config_akm(%struct.pcxhr_mgr* %49, i32 %50)
  %52 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %53 = load i32, i32* @AKM_CLOCK_INF_55K_CMD, align 4
  %54 = call i32 @hr222_config_akm(%struct.pcxhr_mgr* %52, i32 %53)
  %55 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %56 = load i32, i32* @AKM_UNMUTE_CMD, align 4
  %57 = call i32 @hr222_config_akm(%struct.pcxhr_mgr* %55, i32 %56)
  %58 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %59 = load i32, i32* @AKM_RESET_OFF_CMD, align 4
  %60 = call i32 @hr222_config_akm(%struct.pcxhr_mgr* %58, i32 %59)
  %61 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %62 = call i32 @hr222_micro_boost(%struct.pcxhr_mgr* %61, i32 0)
  ret i32 0
}

declare dso_local zeroext i8 @PCXHR_INPB(%struct.pcxhr_mgr*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @PCXHR_OUTPB(%struct.pcxhr_mgr*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hr222_config_akm(%struct.pcxhr_mgr*, i32) #1

declare dso_local i32 @hr222_micro_boost(%struct.pcxhr_mgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
