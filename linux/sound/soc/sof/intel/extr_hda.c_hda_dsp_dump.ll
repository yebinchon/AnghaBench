; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda.c_hda_dsp_dump.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda.c_hda_dsp_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, i64 }
%struct.sof_ipc_dsp_oops_xtensa = type { i32 }
%struct.sof_ipc_panic_info = type { i32 }

@HDA_DSP_STACK_DUMP_SIZE = common dso_local global i32 0, align 4
@HDA_DSP_BAR = common dso_local global i32 0, align 4
@HDA_DSP_SRAM_REG_FW_STATUS = common dso_local global i32 0, align 4
@HDA_DSP_SRAM_REG_FW_TRACEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"error: status = 0x%8.8x panic = 0x%8.8x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hda_dsp_dump(%struct.snd_sof_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sof_ipc_dsp_oops_xtensa, align 4
  %6 = alloca %struct.sof_ipc_panic_info, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @HDA_DSP_STACK_DUMP_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %16 = call i32 @hda_dsp_get_status(%struct.snd_sof_dev* %15)
  %17 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %18 = load i32, i32* @HDA_DSP_BAR, align 4
  %19 = load i32, i32* @HDA_DSP_SRAM_REG_FW_STATUS, align 4
  %20 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %17, i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %22 = load i32, i32* @HDA_DSP_BAR, align 4
  %23 = load i32, i32* @HDA_DSP_SRAM_REG_FW_TRACEP, align 4
  %24 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %21, i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %26 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %31 = load i32, i32* @HDA_DSP_STACK_DUMP_SIZE, align 4
  %32 = call i32 @hda_dsp_get_registers(%struct.snd_sof_dev* %30, %struct.sof_ipc_dsp_oops_xtensa* %5, %struct.sof_ipc_panic_info* %6, i32* %14, i32 %31)
  %33 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @HDA_DSP_STACK_DUMP_SIZE, align 4
  %37 = call i32 @snd_sof_get_status(%struct.snd_sof_dev* %33, i32 %34, i32 %35, %struct.sof_ipc_dsp_oops_xtensa* %5, %struct.sof_ipc_panic_info* %6, i32* %14, i32 %36)
  br label %47

38:                                               ; preds = %2
  %39 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %40 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %46 = call i32 @hda_dsp_get_status(%struct.snd_sof_dev* %45)
  br label %47

47:                                               ; preds = %38, %29
  %48 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %48)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @hda_dsp_get_status(%struct.snd_sof_dev*) #2

declare dso_local i32 @snd_sof_dsp_read(%struct.snd_sof_dev*, i32, i32) #2

declare dso_local i32 @hda_dsp_get_registers(%struct.snd_sof_dev*, %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_panic_info*, i32*, i32) #2

declare dso_local i32 @snd_sof_get_status(%struct.snd_sof_dev*, i32, i32, %struct.sof_ipc_dsp_oops_xtensa*, %struct.sof_ipc_panic_info*, i32*, i32) #2

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
