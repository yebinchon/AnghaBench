; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_loader.c_sof_fw_ready.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_loader.c_sof_fw_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, i32, %struct.sof_ipc_fw_ready }
%struct.sof_ipc_fw_ready = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"error: have no mailbox offset\0A\00", align 1
@SOF_FW_BLK_TYPE_SRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"error: have no bar mapping\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"ipc: DSP is ready 0x%8.8x offset 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sof_fw_ready(%struct.snd_sof_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_sof_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sof_ipc_fw_ready*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %11 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %10, i32 0, i32 2
  store %struct.sof_ipc_fw_ready* %11, %struct.sof_ipc_fw_ready** %6, align 8
  %12 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %13 = call i32 @snd_sof_dsp_get_mailbox_offset(%struct.snd_sof_dev* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %18 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %69

22:                                               ; preds = %2
  %23 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %24 = load i32, i32* @SOF_FW_BLK_TYPE_SRAM, align 4
  %25 = call i32 @snd_sof_dsp_get_bar_index(%struct.snd_sof_dev* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %30 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %69

35:                                               ; preds = %22
  %36 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %37 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %43 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %69

47:                                               ; preds = %35
  %48 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.sof_ipc_fw_ready*, %struct.sof_ipc_fw_ready** %6, align 8
  %52 = call i32 @sof_block_read(%struct.snd_sof_dev* %48, i32 %49, i32 %50, %struct.sof_ipc_fw_ready* %51, i32 4)
  %53 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %54 = call i32 @snd_sof_ipc_valid(%struct.snd_sof_dev* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %69

59:                                               ; preds = %47
  %60 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = call i32 @snd_sof_fw_parse_ext_data(%struct.snd_sof_dev* %60, i32 %61, i32 %65)
  %67 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %68 = call i32 @sof_get_windows(%struct.snd_sof_dev* %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %59, %57, %46, %28, %16
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @snd_sof_dsp_get_mailbox_offset(%struct.snd_sof_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_sof_dsp_get_bar_index(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @sof_block_read(%struct.snd_sof_dev*, i32, i32, %struct.sof_ipc_fw_ready*, i32) #1

declare dso_local i32 @snd_sof_ipc_valid(%struct.snd_sof_dev*) #1

declare dso_local i32 @snd_sof_fw_parse_ext_data(%struct.snd_sof_dev*, i32, i32) #1

declare dso_local i32 @sof_get_windows(%struct.snd_sof_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
