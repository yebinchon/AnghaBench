; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm.c_snd_pcm_dev_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm.c_snd_pcm_dev_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_device = type { %struct.snd_pcm* }
%struct.snd_pcm = type { i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.TYPE_5__*, %struct.snd_pcm_substream* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@register_mutex = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@n_disconnect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_device*)* @snd_pcm_dev_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_dev_disconnect(%struct.snd_device* %0) #0 {
  %2 = alloca %struct.snd_device*, align 8
  %3 = alloca %struct.snd_pcm*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_device* %0, %struct.snd_device** %2, align 8
  %6 = load %struct.snd_device*, %struct.snd_device** %2, align 8
  %7 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %6, i32 0, i32 0
  %8 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  store %struct.snd_pcm* %8, %struct.snd_pcm** %3, align 8
  %9 = call i32 @mutex_lock(i32* @register_mutex)
  %10 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %13, i32 0, i32 3
  %15 = call i32 @wake_up(i32* %14)
  %16 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %16, i32 0, i32 2
  %18 = call i32 @list_del_init(i32* %17)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %75, %1
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %78

22:                                               ; preds = %19
  %23 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %24 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %29, align 8
  store %struct.snd_pcm_substream* %30, %struct.snd_pcm_substream** %4, align 8
  br label %31

31:                                               ; preds = %70, %22
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %33 = icmp ne %struct.snd_pcm_substream* %32, null
  br i1 %33, label %34, label %74

34:                                               ; preds = %31
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %36 = call i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream* %35)
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = icmp ne %struct.TYPE_5__* %39, null
  br i1 %40, label %41, label %67

41:                                               ; preds = %34
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %43 = call i64 @snd_pcm_running(%struct.snd_pcm_substream* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %47 = load i32, i32* @SNDRV_PCM_STATE_DISCONNECTED, align 4
  %48 = call i32 @snd_pcm_stop(%struct.snd_pcm_substream* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32, i32* @SNDRV_PCM_STATE_DISCONNECTED, align 4
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %50, i32* %56, align 4
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %58 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = call i32 @wake_up(i32* %60)
  %62 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = call i32 @wake_up(i32* %65)
  br label %67

67:                                               ; preds = %49, %34
  %68 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %69 = call i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream* %68)
  br label %70

70:                                               ; preds = %67
  %71 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %71, i32 0, i32 1
  %73 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %72, align 8
  store %struct.snd_pcm_substream* %73, %struct.snd_pcm_substream** %4, align 8
  br label %31

74:                                               ; preds = %31
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %19

78:                                               ; preds = %19
  %79 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %80 = load i32, i32* @n_disconnect, align 4
  %81 = call i32 @pcm_call_notify(%struct.snd_pcm* %79, i32 %80)
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %101, %78
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 2
  br i1 %84, label %85, label %104

85:                                               ; preds = %82
  %86 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %87 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = call i32 @snd_unregister_device(i32* %92)
  %94 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %95 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = call i32 @free_chmap(%struct.TYPE_6__* %99)
  br label %101

101:                                              ; preds = %85
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %82

104:                                              ; preds = %82
  %105 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %106 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = call i32 @mutex_unlock(i32* @register_mutex)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_pcm_running(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_stop(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream*) #1

declare dso_local i32 @pcm_call_notify(%struct.snd_pcm*, i32) #1

declare dso_local i32 @snd_unregister_device(i32*) #1

declare dso_local i32 @free_chmap(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
