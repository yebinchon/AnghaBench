; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-ctrl.c_hda_dsp_ctrl_link_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-ctrl.c_hda_dsp_ctrl_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }

@SOF_HDA_GCTL_RESET = common dso_local global i32 0, align 4
@HDA_DSP_HDA_BAR = common dso_local global i32 0, align 4
@SOF_HDA_GCTL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HDA_DSP_CTRL_RESET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"error: failed to %s HDA controller gctl 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ready\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_dsp_ctrl_link_reset(%struct.snd_sof_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_sof_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @SOF_HDA_GCTL_RESET, align 4
  br label %14

14:                                               ; preds = %12, %11
  %15 = phi i32 [ 0, %11 ], [ %13, %12 ]
  store i32 %15, i32* %8, align 4
  %16 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %17 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %18 = load i32, i32* @SOF_HDA_GCTL, align 4
  %19 = load i32, i32* @SOF_HDA_GCTL_RESET, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev* %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i32, i32* @HDA_DSP_CTRL_RESET_TIMEOUT, align 4
  %24 = call i64 @msecs_to_jiffies(i32 %23)
  %25 = add i64 %22, %24
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %42, %14
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @time_before(i64 %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %33 = load i32, i32* @HDA_DSP_HDA_BAR, align 4
  %34 = load i32, i32* @SOF_HDA_GCTL, align 4
  %35 = call i32 @snd_sof_dsp_read(%struct.snd_sof_dev* %32, i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @SOF_HDA_GCTL_RESET, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %56

42:                                               ; preds = %31
  %43 = call i32 @usleep_range(i32 500, i32 1000)
  br label %26

44:                                               ; preds = %26
  %45 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %46 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %51, i32 %52)
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %44, %41
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @snd_sof_dsp_update_bits(%struct.snd_sof_dev*, i32, i32, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @snd_sof_dsp_read(%struct.snd_sof_dev*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
