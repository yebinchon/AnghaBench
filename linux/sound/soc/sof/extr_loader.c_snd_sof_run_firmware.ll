; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_loader.c_snd_sof_run_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_loader.c_snd_sof_run_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"fw_version\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"error: snd_sof_debugfs_buf_item failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"error: failed pre fw run op\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"booting DSP firmware\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"error: failed to reset DSP\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"error: firmware boot failure\0A\00", align 1
@SOF_DBG_REGS = common dso_local global i32 0, align 4
@SOF_DBG_MBOX = common dso_local global i32 0, align 4
@SOF_DBG_TEXT = common dso_local global i32 0, align 4
@SOF_DBG_PCI = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"firmware boot complete\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"error: failed post fw run op\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sof_run_firmware(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  %6 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %7 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %6, i32 0, i32 4
  %8 = call i32 @init_waitqueue_head(i32* %7)
  %9 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %10 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %12 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %17 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %18 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %17, i32 0, i32 5
  %19 = call i32 @snd_sof_debugfs_buf_item(%struct.snd_sof_dev* %16, i32* %18, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 292)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %24 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %107

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %31 = call i32 @snd_sof_dsp_pre_fw_run(%struct.snd_sof_dev* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %36 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %107

40:                                               ; preds = %29
  %41 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %42 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %45 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %46 = call i32 @snd_sof_dsp_run(%struct.snd_sof_dev* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %51 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %107

55:                                               ; preds = %40
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %5, align 4
  %57 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %58 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %61 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %64 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @msecs_to_jiffies(i32 %65)
  %67 = call i32 @wait_event_timeout(i32 %59, i32 %62, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %55
  %71 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %72 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %75 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %76 = load i32, i32* @SOF_DBG_REGS, align 4
  %77 = load i32, i32* @SOF_DBG_MBOX, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @SOF_DBG_TEXT, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @SOF_DBG_PCI, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @snd_sof_dsp_dbg_dump(%struct.snd_sof_dev* %75, i32 %82)
  %84 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %85 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %107

88:                                               ; preds = %55
  %89 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %90 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_info(i32 %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %93 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %94 = call i32 @snd_sof_dsp_post_fw_run(%struct.snd_sof_dev* %93)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %88
  %98 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %99 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @dev_err(i32 %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %107

103:                                              ; preds = %88
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %106 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %103, %97, %70, %49, %34, %22
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @snd_sof_debugfs_buf_item(%struct.snd_sof_dev*, i32*, i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_sof_dsp_pre_fw_run(%struct.snd_sof_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @snd_sof_dsp_run(%struct.snd_sof_dev*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @snd_sof_dsp_dbg_dump(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @snd_sof_dsp_post_fw_run(%struct.snd_sof_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
