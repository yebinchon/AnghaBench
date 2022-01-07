; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_byt.c_byt_run.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_byt.c_byt_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }

@BYT_DSP_BAR = common dso_local global i32 0, align 4
@SHIM_CSR = common dso_local global i32 0, align 4
@SHIM_BYT_CSR_STALL = common dso_local global i32 0, align 4
@SHIM_BYT_CSR_PWAITMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"error:  unable to run DSP firmware\0A\00", align 1
@SOF_DBG_REGS = common dso_local global i32 0, align 4
@SOF_DBG_MBOX = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_dev*)* @byt_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byt_run(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  store i32 10, i32* %4, align 4
  %5 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %6 = load i32, i32* @BYT_DSP_BAR, align 4
  %7 = load i32, i32* @SHIM_CSR, align 4
  %8 = load i32, i32* @SHIM_BYT_CSR_STALL, align 4
  %9 = call i32 @snd_sof_dsp_update_bits64(%struct.snd_sof_dev* %5, i32 %6, i32 %7, i32 %8, i32 0)
  br label %10

10:                                               ; preds = %23, %1
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %4, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %16 = load i32, i32* @BYT_DSP_BAR, align 4
  %17 = load i32, i32* @SHIM_CSR, align 4
  %18 = call i32 @snd_sof_dsp_read64(%struct.snd_sof_dev* %15, i32 %16, i32 %17)
  %19 = load i32, i32* @SHIM_BYT_CSR_PWAITMODE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %25

23:                                               ; preds = %14
  %24 = call i32 @msleep(i32 100)
  br label %10

25:                                               ; preds = %22, %10
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %30 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %34 = load i32, i32* @SOF_DBG_REGS, align 4
  %35 = load i32, i32* @SOF_DBG_MBOX, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @byt_dump(%struct.snd_sof_dev* %33, i32 %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @snd_sof_dsp_update_bits64(%struct.snd_sof_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_sof_dsp_read64(%struct.snd_sof_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @byt_dump(%struct.snd_sof_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
