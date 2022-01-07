; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vx_pipe* }
%struct.vx_pipe = type { i32, i32 }
%struct.vx_core = type { i32, i32 }

@VX_STAT_IS_STALE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"vx: cannot start stream\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"vx: cannot start pipe\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @vx_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vx_core*, align 8
  %7 = alloca %struct.vx_pipe*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.vx_core* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.vx_core* %10, %struct.vx_core** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.vx_pipe*, %struct.vx_pipe** %14, align 8
  store %struct.vx_pipe* %15, %struct.vx_pipe** %7, align 8
  %16 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %17 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @VX_STAT_IS_STALE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %101

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %97 [
    i32 130, label %27
    i32 131, label %27
    i32 129, label %65
    i32 128, label %65
    i32 133, label %81
    i32 132, label %89
  ]

27:                                               ; preds = %25, %25
  %28 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %29 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %35 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %36 = call i32 @vx_pcm_playback_transfer(%struct.vx_core* %33, %struct.snd_pcm_substream* %34, %struct.vx_pipe* %35, i32 2)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %39 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %40 = call i32 @vx_start_stream(%struct.vx_core* %38, %struct.vx_pipe* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %101

46:                                               ; preds = %37
  %47 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %48 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %49 = call i32 @vx_toggle_pipe(%struct.vx_core* %47, %struct.vx_pipe* %48, i32 1)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %55 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %56 = call i32 @vx_stop_stream(%struct.vx_core* %54, %struct.vx_pipe* %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %101

58:                                               ; preds = %46
  %59 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %60 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %64 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  br label %100

65:                                               ; preds = %25, %25
  %66 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %67 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %68 = call i32 @vx_toggle_pipe(%struct.vx_core* %66, %struct.vx_pipe* %67, i32 0)
  %69 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %70 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %71 = call i32 @vx_stop_pipe(%struct.vx_core* %69, %struct.vx_pipe* %70)
  %72 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %73 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %74 = call i32 @vx_stop_stream(%struct.vx_core* %72, %struct.vx_pipe* %73)
  %75 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %76 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %80 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %79, i32 0, i32 0
  store i32 0, i32* %80, align 4
  br label %100

81:                                               ; preds = %25
  %82 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %83 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %84 = call i32 @vx_toggle_pipe(%struct.vx_core* %82, %struct.vx_pipe* %83, i32 0)
  store i32 %84, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %101

88:                                               ; preds = %81
  br label %100

89:                                               ; preds = %25
  %90 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %91 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %92 = call i32 @vx_toggle_pipe(%struct.vx_core* %90, %struct.vx_pipe* %91, i32 1)
  store i32 %92, i32* %8, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %101

96:                                               ; preds = %89
  br label %100

97:                                               ; preds = %25
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %101

100:                                              ; preds = %96, %88, %65, %58
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %97, %94, %86, %52, %43, %22
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.vx_core* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @vx_pcm_playback_transfer(%struct.vx_core*, %struct.snd_pcm_substream*, %struct.vx_pipe*, i32) #1

declare dso_local i32 @vx_start_stream(%struct.vx_core*, %struct.vx_pipe*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @vx_toggle_pipe(%struct.vx_core*, %struct.vx_pipe*, i32) #1

declare dso_local i32 @vx_stop_stream(%struct.vx_core*, %struct.vx_pipe*) #1

declare dso_local i32 @vx_stop_pipe(%struct.vx_core*, %struct.vx_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
