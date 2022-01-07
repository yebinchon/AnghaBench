; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_read3.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_read3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SNDRV_PCM_STATE_XRUN = common dso_local global i64 0, align 8
@SNDRV_PCM_STATE_SUSPENDED = common dso_local global i64 0, align 8
@SNDRV_PCM_IOCTL_DRAIN = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_SETUP = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_DRAINING = common dso_local global i64 0, align 8
@SNDRV_PCM_IOCTL_DROP = common dso_local global i32 0, align 4
@ESTRPIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_oss_read3(%struct.snd_pcm_substream* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 1
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %9, align 8
  br label %15

15:                                               ; preds = %4, %87, %94
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SNDRV_PCM_STATE_XRUN, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %15
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SNDRV_PCM_STATE_SUSPENDED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %23, %15
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %33 = load i32, i32* @SNDRV_PCM_IOCTL_DRAIN, align 4
  %34 = call i32 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream* %32, i32 %33, i32* null)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %95

38:                                               ; preds = %31
  br label %55

39:                                               ; preds = %23
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SNDRV_PCM_STATE_SETUP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %49 = call i32 @snd_pcm_oss_prepare(%struct.snd_pcm_substream* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %95

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %39
  br label %55

55:                                               ; preds = %54, %38
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %57 = call i32 @snd_pcm_oss_capture_position_fixup(%struct.snd_pcm_substream* %56, i32* %10)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %95

61:                                               ; preds = %55
  %62 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @__snd_pcm_lib_xfer(%struct.snd_pcm_substream* %62, i8* %63, i32 1, i32 %64, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @EPIPE, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %61
  %72 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SNDRV_PCM_STATE_DRAINING, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %71
  %80 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %81 = load i32, i32* @SNDRV_PCM_IOCTL_DROP, align 4
  %82 = call i32 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream* %80, i32 %81, i32* null)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %95

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %71
  br label %15

88:                                               ; preds = %61
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @ESTRPIPE, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %95

94:                                               ; preds = %88
  br label %15

95:                                               ; preds = %93, %85, %60, %52, %37
  %96 = load i32, i32* %11, align 4
  ret i32 %96
}

declare dso_local i32 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream*, i32, i32*) #1

declare dso_local i32 @snd_pcm_oss_prepare(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_oss_capture_position_fixup(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @__snd_pcm_lib_xfer(%struct.snd_pcm_substream*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
