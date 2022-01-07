; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_dsp_load_sample.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_dsp_load_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dsp_segment_desc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"dsp_spos: module got no sample segment\0A\00", align 1
@DSP_SAMPLE_BYTE_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"dsp_spos: downloading sample data to chip (%08x-%08x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"dsp_spos: failed to sample data to DSP\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_cs46xx*, %struct.dsp_segment_desc*)* @dsp_load_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp_load_sample(%struct.snd_cs46xx* %0, %struct.dsp_segment_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_cs46xx*, align 8
  %5 = alloca %struct.dsp_segment_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %4, align 8
  store %struct.dsp_segment_desc* %1, %struct.dsp_segment_desc** %5, align 8
  %8 = load %struct.dsp_segment_desc*, %struct.dsp_segment_desc** %5, align 8
  %9 = icmp ne %struct.dsp_segment_desc* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %12 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i8*, ...) @dev_dbg(i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %56

17:                                               ; preds = %2
  %18 = load %struct.dsp_segment_desc*, %struct.dsp_segment_desc** %5, align 8
  %19 = getelementptr inbounds %struct.dsp_segment_desc, %struct.dsp_segment_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 4
  %22 = load i32, i32* @DSP_SAMPLE_BYTE_OFFSET, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.dsp_segment_desc*, %struct.dsp_segment_desc** %5, align 8
  %25 = getelementptr inbounds %struct.dsp_segment_desc, %struct.dsp_segment_desc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %29 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %34, %35
  %37 = call i32 (i32, i8*, ...) @dev_dbg(i32 %32, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %39 = load %struct.dsp_segment_desc*, %struct.dsp_segment_desc** %5, align 8
  %40 = getelementptr inbounds %struct.dsp_segment_desc, %struct.dsp_segment_desc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @snd_cs46xx_download(%struct.snd_cs46xx* %38, i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %17
  %47 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %48 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %46, %10
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @snd_cs46xx_download(%struct.snd_cs46xx*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
