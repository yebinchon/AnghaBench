; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/hiface/extr_pcm.c_hiface_pcm_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/hiface/extr_pcm.c_hiface_pcm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hiface_chip = type { %struct.pcm_runtime*, %struct.TYPE_5__*, i32 }
%struct.pcm_runtime = type { i32, %struct.TYPE_6__*, %struct.snd_pcm*, %struct.TYPE_4__, i32, i32, i32, %struct.hiface_chip* }
%struct.TYPE_6__ = type { %struct.pcm_runtime* }
%struct.snd_pcm = type { i32, i32, %struct.pcm_runtime* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@STREAM_DISABLED = common dso_local global i32 0, align 4
@PCM_N_URBS = common dso_local global i32 0, align 4
@OUT_EP = common dso_local global i32 0, align 4
@hiface_pcm_out_urb_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"USB-SPDIF Audio\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot create pcm instance\0A\00", align 1
@hiface_pcm_free = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@pcm_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hiface_pcm_init(%struct.hiface_chip* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hiface_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm*, align 8
  %9 = alloca %struct.pcm_runtime*, align 8
  store %struct.hiface_chip* %0, %struct.hiface_chip** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.pcm_runtime* @kzalloc(i32 48, i32 %10)
  store %struct.pcm_runtime* %11, %struct.pcm_runtime** %9, align 8
  %12 = load %struct.pcm_runtime*, %struct.pcm_runtime** %9, align 8
  %13 = icmp ne %struct.pcm_runtime* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %117

17:                                               ; preds = %2
  %18 = load %struct.hiface_chip*, %struct.hiface_chip** %4, align 8
  %19 = load %struct.pcm_runtime*, %struct.pcm_runtime** %9, align 8
  %20 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %19, i32 0, i32 7
  store %struct.hiface_chip* %18, %struct.hiface_chip** %20, align 8
  %21 = load i32, i32* @STREAM_DISABLED, align 4
  %22 = load %struct.pcm_runtime*, %struct.pcm_runtime** %9, align 8
  %23 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.pcm_runtime*, %struct.pcm_runtime** %9, align 8
  %28 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %17
  %30 = load %struct.pcm_runtime*, %struct.pcm_runtime** %9, align 8
  %31 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %30, i32 0, i32 5
  %32 = call i32 @init_waitqueue_head(i32* %31)
  %33 = load %struct.pcm_runtime*, %struct.pcm_runtime** %9, align 8
  %34 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %33, i32 0, i32 4
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.pcm_runtime*, %struct.pcm_runtime** %9, align 8
  %37 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_init(i32* %38)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %59, %29
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @PCM_N_URBS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load %struct.pcm_runtime*, %struct.pcm_runtime** %9, align 8
  %46 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = load %struct.hiface_chip*, %struct.hiface_chip** %4, align 8
  %52 = load i32, i32* @OUT_EP, align 4
  %53 = load i32, i32* @hiface_pcm_out_urb_handler, align 4
  %54 = call i32 @hiface_pcm_init_urb(%struct.TYPE_6__* %50, %struct.hiface_chip* %51, i32 %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %95

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %40

62:                                               ; preds = %40
  %63 = load %struct.hiface_chip*, %struct.hiface_chip** %4, align 8
  %64 = getelementptr inbounds %struct.hiface_chip, %struct.hiface_chip* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @snd_pcm_new(i32 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0, i32 1, i32 0, %struct.snd_pcm** %8)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load %struct.hiface_chip*, %struct.hiface_chip** %4, align 8
  %71 = getelementptr inbounds %struct.hiface_chip, %struct.hiface_chip* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %95

75:                                               ; preds = %62
  %76 = load %struct.pcm_runtime*, %struct.pcm_runtime** %9, align 8
  %77 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %78 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %77, i32 0, i32 2
  store %struct.pcm_runtime* %76, %struct.pcm_runtime** %78, align 8
  %79 = load i32, i32* @hiface_pcm_free, align 4
  %80 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %81 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %83 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @strlcpy(i32 %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 4)
  %86 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %87 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %88 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %86, i32 %87, i32* @pcm_ops)
  %89 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %90 = load %struct.pcm_runtime*, %struct.pcm_runtime** %9, align 8
  %91 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %90, i32 0, i32 2
  store %struct.snd_pcm* %89, %struct.snd_pcm** %91, align 8
  %92 = load %struct.pcm_runtime*, %struct.pcm_runtime** %9, align 8
  %93 = load %struct.hiface_chip*, %struct.hiface_chip** %4, align 8
  %94 = getelementptr inbounds %struct.hiface_chip, %struct.hiface_chip* %93, i32 0, i32 0
  store %struct.pcm_runtime* %92, %struct.pcm_runtime** %94, align 8
  store i32 0, i32* %3, align 4
  br label %117

95:                                               ; preds = %69, %57
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %110, %95
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @PCM_N_URBS, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %96
  %101 = load %struct.pcm_runtime*, %struct.pcm_runtime** %9, align 8
  %102 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %struct.pcm_runtime*, %struct.pcm_runtime** %107, align 8
  %109 = call i32 @kfree(%struct.pcm_runtime* %108)
  br label %110

110:                                              ; preds = %100
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %96

113:                                              ; preds = %96
  %114 = load %struct.pcm_runtime*, %struct.pcm_runtime** %9, align 8
  %115 = call i32 @kfree(%struct.pcm_runtime* %114)
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %75, %14
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.pcm_runtime* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hiface_pcm_init_urb(%struct.TYPE_6__*, %struct.hiface_chip*, i32, i32) #1

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
