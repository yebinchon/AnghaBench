; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda.c_hda_dsp_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda.c_hda_dsp_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.snd_sof_dev = type { i32 }

@HDA_DSP_BAR = common dso_local global i32 0, align 4
@HDA_DSP_SRAM_REG_ROM_STATUS = common dso_local global i32 0, align 4
@hda_dsp_rom_msg = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s - code %8.8x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"unknown ROM status value %8.8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_sof_dev*)* @hda_dsp_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hda_dsp_get_status(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca %struct.snd_sof_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %2, align 8
  %5 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %6 = load i32, i32* @HDA_DSP_BAR, align 4
  %7 = load i32, i32* @HDA_DSP_SRAM_REG_ROM_STATUS, align 4
  %8 = call i64 @snd_sof_dsp_read(%struct.snd_sof_dev* %5, i32 %6, i32 %7)
  store i64 %8, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %36, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hda_dsp_rom_msg, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %9
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hda_dsp_rom_msg, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %15, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %14
  %24 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %25 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hda_dsp_rom_msg, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %33)
  br label %45

35:                                               ; preds = %14
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %9

39:                                               ; preds = %9
  %40 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %41 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  br label %45

45:                                               ; preds = %39, %23
  ret void
}

declare dso_local i64 @snd_sof_dsp_read(%struct.snd_sof_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
