; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm.c_snd_pcm_dev_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm.c_snd_pcm_dev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_device = type { %struct.snd_pcm* }
%struct.snd_pcm = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.snd_pcm_substream*, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_substream* }

@ENXIO = common dso_local global i32 0, align 4
@register_mutex = common dso_local global i32 0, align 4
@SNDRV_DEVICE_TYPE_PCM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_DEVICE_TYPE_PCM_CAPTURE = common dso_local global i32 0, align 4
@snd_pcm_f_ops = common dso_local global i32* null, align 8
@n_register = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_device*)* @snd_pcm_dev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_dev_register(%struct.snd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_pcm*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_device* %0, %struct.snd_device** %3, align 8
  %9 = load %struct.snd_device*, %struct.snd_device** %3, align 8
  %10 = icmp ne %struct.snd_device* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.snd_device*, %struct.snd_device** %3, align 8
  %13 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm*, %struct.snd_pcm** %13, align 8
  %15 = icmp ne %struct.snd_pcm* %14, null
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i1 [ true, %1 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @snd_BUG_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %113

25:                                               ; preds = %17
  %26 = load %struct.snd_device*, %struct.snd_device** %3, align 8
  %27 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %26, i32 0, i32 0
  %28 = load %struct.snd_pcm*, %struct.snd_pcm** %27, align 8
  store %struct.snd_pcm* %28, %struct.snd_pcm** %7, align 8
  %29 = call i32 @mutex_lock(i32* @register_mutex)
  %30 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %31 = call i32 @snd_pcm_add(%struct.snd_pcm* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %110

35:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %103, %35
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %106

39:                                               ; preds = %36
  store i32 -1, i32* %8, align 4
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %41 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %46, align 8
  %48 = icmp eq %struct.snd_pcm_substream* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %103

50:                                               ; preds = %39
  %51 = load i32, i32* %4, align 4
  switch i32 %51, label %56 [
    i32 128, label %52
    i32 129, label %54
  ]

52:                                               ; preds = %50
  %53 = load i32, i32* @SNDRV_DEVICE_TYPE_PCM_PLAYBACK, align 4
  store i32 %53, i32* %8, align 4
  br label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @SNDRV_DEVICE_TYPE_PCM_CAPTURE, align 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %50, %54, %52
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %59 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %62 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** @snd_pcm_f_ops, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %69 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %70 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = call i32 @snd_register_device(i32 %57, i32 %60, i32 %63, i32* %67, %struct.snd_pcm* %68, i32* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %56
  %80 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %81 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %80, i32 0, i32 1
  %82 = call i32 @list_del_init(i32* %81)
  br label %110

83:                                               ; preds = %56
  %84 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %85 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %90, align 8
  store %struct.snd_pcm_substream* %91, %struct.snd_pcm_substream** %6, align 8
  br label %92

92:                                               ; preds = %98, %83
  %93 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %94 = icmp ne %struct.snd_pcm_substream* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %97 = call i32 @snd_pcm_timer_init(%struct.snd_pcm_substream* %96)
  br label %98

98:                                               ; preds = %95
  %99 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %99, i32 0, i32 0
  %101 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %100, align 8
  store %struct.snd_pcm_substream* %101, %struct.snd_pcm_substream** %6, align 8
  br label %92

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %49
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %36

106:                                              ; preds = %36
  %107 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %108 = load i32, i32* @n_register, align 4
  %109 = call i32 @pcm_call_notify(%struct.snd_pcm* %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %79, %34
  %111 = call i32 @mutex_unlock(i32* @register_mutex)
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %110, %22
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_pcm_add(%struct.snd_pcm*) #1

declare dso_local i32 @snd_register_device(i32, i32, i32, i32*, %struct.snd_pcm*, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @snd_pcm_timer_init(%struct.snd_pcm_substream*) #1

declare dso_local i32 @pcm_call_notify(%struct.snd_pcm*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
