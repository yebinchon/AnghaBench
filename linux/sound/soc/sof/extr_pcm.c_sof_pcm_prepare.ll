; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_pcm.c_sof_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_pcm.c_sof_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.snd_soc_component = type { i32 }
%struct.snd_sof_dev = type { i32 }
%struct.snd_sof_pcm = type { i32*, %struct.TYPE_4__, i64* }
%struct.TYPE_4__ = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"pcm: prepare stream %d dir %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"error: set pcm hw_params after resume\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @sof_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_sof_dev*, align 8
  %7 = alloca %struct.snd_sof_pcm*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  store %struct.snd_soc_pcm_runtime* %11, %struct.snd_soc_pcm_runtime** %4, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %13 = load i32, i32* @DRV_NAME, align 4
  %14 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %12, i32 %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %5, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %16 = call %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.snd_sof_dev* %16, %struct.snd_sof_dev** %6, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

24:                                               ; preds = %1
  %25 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %26 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %27 = call %struct.snd_sof_pcm* @snd_sof_find_spcm_dai(%struct.snd_sof_dev* %25, %struct.snd_soc_pcm_runtime* %26)
  store %struct.snd_sof_pcm* %27, %struct.snd_sof_pcm** %7, align 8
  %28 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %7, align 8
  %29 = icmp ne %struct.snd_sof_pcm* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %74

33:                                               ; preds = %24
  %34 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %7, align 8
  %35 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %74

44:                                               ; preds = %33
  %45 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %46 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %7, align 8
  %49 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %51, i64 %54)
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %57 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %7, align 8
  %58 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = call i32 @sof_pcm_hw_params(%struct.snd_pcm_substream* %56, i32* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %44
  %68 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %69 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %67, %43, %30, %23
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_sof_pcm* @snd_sof_find_spcm_dai(%struct.snd_sof_dev*, %struct.snd_soc_pcm_runtime*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @sof_pcm_hw_params(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
