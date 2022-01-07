; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_pcm.c_sof_pcm_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_pcm.c_sof_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.snd_soc_component = type { i32 }
%struct.snd_sof_dev = type { i32 }
%struct.snd_sof_pcm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pcm: close stream %d dir %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"error: pcm close failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @sof_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_pcm_close(%struct.snd_pcm_substream* %0) #0 {
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
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

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
  br label %57

33:                                               ; preds = %24
  %34 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %35 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.snd_sof_pcm*, %struct.snd_sof_pcm** %7, align 8
  %38 = getelementptr inbounds %struct.snd_sof_pcm, %struct.snd_sof_pcm* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %47 = call i32 @snd_sof_pcm_platform_close(%struct.snd_sof_dev* %45, %struct.snd_pcm_substream* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %33
  %51 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %52 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %50, %33
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %30, %23
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.snd_sof_pcm* @snd_sof_find_spcm_dai(%struct.snd_sof_dev*, %struct.snd_soc_pcm_runtime*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @snd_sof_pcm_platform_close(%struct.snd_sof_dev*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
