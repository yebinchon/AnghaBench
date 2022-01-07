; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, i32, i32, %struct.loopback_pcm* }
%struct.loopback_pcm = type { i32, i32, %struct.TYPE_3__*, i8*, i64, i64, i8*, i8*, i64, %struct.loopback_cable* }
%struct.TYPE_3__ = type { i32 }
%struct.loopback_cable = type { i32 }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @loopback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.loopback_pcm*, align 8
  %6 = alloca %struct.loopback_cable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 6
  %14 = load %struct.loopback_pcm*, %struct.loopback_pcm** %13, align 8
  store %struct.loopback_pcm* %14, %struct.loopback_pcm** %5, align 8
  %15 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %16 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %15, i32 0, i32 9
  %17 = load %struct.loopback_cable*, %struct.loopback_cable** %16, align 8
  store %struct.loopback_cable* %17, %struct.loopback_cable** %6, align 8
  %18 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %19 = call i32 @loopback_timer_stop_sync(%struct.loopback_pcm* %18)
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @snd_pcm_format_physical_width(i32 %22)
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %23, %26
  %28 = sdiv i32 %27, 8
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %1
  %37 = load i32, i32* %8, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %1
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %139

42:                                               ; preds = %36
  %43 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %44 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %43, i32 0, i32 8
  store i64 0, i64* %44, align 8
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %46 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @frames_to_bytes(%struct.snd_pcm_runtime* %45, i32 %48)
  %50 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %51 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %42
  %58 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %59 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %58, i32 0, i32 6
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %62 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %61, i32 0, i32 7
  store i8* %60, i8** %62, align 8
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %71, %74
  %76 = call i32 @snd_pcm_format_set_silence(i32 %65, i32 %68, i32 %75)
  br label %77

77:                                               ; preds = %57, %42
  %78 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %79 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %78, i32 0, i32 5
  store i64 0, i64* %79, align 8
  %80 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %81 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %80, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %84 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %87 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %89 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @frames_to_bytes(%struct.snd_pcm_runtime* %88, i32 %91)
  %93 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %94 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %96 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %95, i32 0, i32 2
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = call i32 @mutex_lock(i32* %98)
  %100 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %101 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %104 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = shl i32 1, %105
  %107 = xor i32 %106, -1
  %108 = and i32 %102, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %77
  %111 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %112 = call %struct.TYPE_4__* @get_setup(%struct.loopback_pcm* %111)
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %110
  %117 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %118 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116, %77
  %123 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %124 = call i32 @params_change(%struct.snd_pcm_substream* %123)
  br label %125

125:                                              ; preds = %122, %116, %110
  %126 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %127 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = shl i32 1, %128
  %130 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %131 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %135 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %134, i32 0, i32 2
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = call i32 @mutex_unlock(i32* %137)
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %125, %39
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @loopback_timer_stop_sync(%struct.loopback_pcm*) #1

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i8* @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_pcm_format_set_silence(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @get_setup(%struct.loopback_pcm*) #1

declare dso_local i32 @params_change(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
