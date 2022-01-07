; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_pm.c_sof_resume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_pm.c_sof_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_sof_dev = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"error: failed to power up DSP after resume\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"error: failed to load DSP firmware after resume %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"error: failed to boot DSP firmware after resume %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"warning: failed to init trace after resume %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"error: failed to restore pipeline after resume %d\0A\00", align 1
@SOF_IPC_PM_CTX_RESTORE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"error: ctx_restore ipc error during resume %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @sof_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_resume(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_sof_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.snd_sof_dev* @dev_get_drvdata(%struct.device* %8)
  store %struct.snd_sof_dev* %9, %struct.snd_sof_dev** %6, align 8
  %10 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %11 = call %struct.TYPE_2__* @sof_ops(%struct.snd_sof_dev* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %17 = call %struct.TYPE_2__* @sof_ops(%struct.snd_sof_dev* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %101

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %27 = call i32 @snd_sof_dsp_runtime_resume(%struct.snd_sof_dev* %26)
  store i32 %27, i32* %7, align 4
  br label %31

28:                                               ; preds = %22
  %29 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %30 = call i32 @snd_sof_dsp_resume(%struct.snd_sof_dev* %29)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %36 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @dev_err(i32 %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %101

40:                                               ; preds = %31
  %41 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %42 = call i32 @snd_sof_load_firmware(%struct.snd_sof_dev* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %47 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (i32, i8*, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %101

52:                                               ; preds = %40
  %53 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %54 = call i32 @snd_sof_run_firmware(%struct.snd_sof_dev* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %59 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i32, i8*, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %101

64:                                               ; preds = %52
  %65 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %66 = call i32 @snd_sof_init_trace_ipc(%struct.snd_sof_dev* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %71 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @dev_warn(i32 %72, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %69, %64
  %76 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %77 = call i32 @sof_restore_pipelines(%struct.snd_sof_dev* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %82 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 (i32, i8*, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %101

87:                                               ; preds = %75
  %88 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %89 = load i32, i32* @SOF_IPC_PM_CTX_RESTORE, align 4
  %90 = call i32 @sof_send_pm_ipc(%struct.snd_sof_dev* %88, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %95 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 (i32, i8*, ...) @dev_err(i32 %96, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %93, %87
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %80, %57, %45, %34, %21
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.snd_sof_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @sof_ops(%struct.snd_sof_dev*) #1

declare dso_local i32 @snd_sof_dsp_runtime_resume(%struct.snd_sof_dev*) #1

declare dso_local i32 @snd_sof_dsp_resume(%struct.snd_sof_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_sof_load_firmware(%struct.snd_sof_dev*) #1

declare dso_local i32 @snd_sof_run_firmware(%struct.snd_sof_dev*) #1

declare dso_local i32 @snd_sof_init_trace_ipc(%struct.snd_sof_dev*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @sof_restore_pipelines(%struct.snd_sof_dev*) #1

declare dso_local i32 @sof_send_pm_ipc(%struct.snd_sof_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
