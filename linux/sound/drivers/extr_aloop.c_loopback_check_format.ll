; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_check_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_check_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loopback_cable = type { i64, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.TYPE_5__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i64, i64 }
%struct.loopback_setup = type { i64, i64, i64, i32, i32, i32 }

@CABLE_VALID_BOTH = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_DRAINING = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loopback_cable*, i32)* @loopback_check_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_check_format(%struct.loopback_cable* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.loopback_cable*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.loopback_setup*, align 8
  %9 = alloca %struct.snd_card*, align 8
  %10 = alloca i32, align 4
  store %struct.loopback_cable* %0, %struct.loopback_cable** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.loopback_cable*, %struct.loopback_cable** %4, align 8
  %12 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CABLE_VALID_BOTH, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %92

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %181

22:                                               ; preds = %2
  %23 = load %struct.loopback_cable*, %struct.loopback_cable** %4, align 8
  %24 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %24, align 8
  %26 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %25, i64 %27
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %32, align 8
  store %struct.snd_pcm_runtime* %33, %struct.snd_pcm_runtime** %6, align 8
  %34 = load %struct.loopback_cable*, %struct.loopback_cable** %4, align 8
  %35 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %35, align 8
  %37 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %36, i64 %37
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %42, align 8
  store %struct.snd_pcm_runtime* %43, %struct.snd_pcm_runtime** %7, align 8
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %67, label %51

51:                                               ; preds = %22
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %51
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br label %67

67:                                               ; preds = %59, %51, %22
  %68 = phi i1 [ true, %51 ], [ true, %22 ], [ %66, %59 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %181

73:                                               ; preds = %67
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %181

81:                                               ; preds = %73
  %82 = load %struct.loopback_cable*, %struct.loopback_cable** %4, align 8
  %83 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %83, align 8
  %85 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %84, i64 %85
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* @SNDRV_PCM_STATE_DRAINING, align 4
  %91 = call i32 @snd_pcm_stop(%struct.TYPE_5__* %89, i32 %90)
  br label %92

92:                                               ; preds = %81, %20
  %93 = load %struct.loopback_cable*, %struct.loopback_cable** %4, align 8
  %94 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %94, align 8
  %96 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %95, i64 %97
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %102, align 8
  store %struct.snd_pcm_runtime* %103, %struct.snd_pcm_runtime** %6, align 8
  %104 = load %struct.loopback_cable*, %struct.loopback_cable** %4, align 8
  %105 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %105, align 8
  %107 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %106, i64 %108
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = call %struct.loopback_setup* @get_setup(%struct.TYPE_6__* %110)
  store %struct.loopback_setup* %111, %struct.loopback_setup** %8, align 8
  %112 = load %struct.loopback_cable*, %struct.loopback_cable** %4, align 8
  %113 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %113, align 8
  %115 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %114, i64 %116
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load %struct.snd_card*, %struct.snd_card** %121, align 8
  store %struct.snd_card* %122, %struct.snd_card** %9, align 8
  %123 = load %struct.loopback_setup*, %struct.loopback_setup** %8, align 8
  %124 = getelementptr inbounds %struct.loopback_setup, %struct.loopback_setup* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %127 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %125, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %92
  %131 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %132 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %133 = load %struct.loopback_setup*, %struct.loopback_setup** %8, align 8
  %134 = getelementptr inbounds %struct.loopback_setup, %struct.loopback_setup* %133, i32 0, i32 5
  %135 = call i32 @snd_ctl_notify(%struct.snd_card* %131, i32 %132, i32* %134)
  %136 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %137 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.loopback_setup*, %struct.loopback_setup** %8, align 8
  %140 = getelementptr inbounds %struct.loopback_setup, %struct.loopback_setup* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %130, %92
  %142 = load %struct.loopback_setup*, %struct.loopback_setup** %8, align 8
  %143 = getelementptr inbounds %struct.loopback_setup, %struct.loopback_setup* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %146 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %144, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %141
  %150 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %151 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %152 = load %struct.loopback_setup*, %struct.loopback_setup** %8, align 8
  %153 = getelementptr inbounds %struct.loopback_setup, %struct.loopback_setup* %152, i32 0, i32 4
  %154 = call i32 @snd_ctl_notify(%struct.snd_card* %150, i32 %151, i32* %153)
  %155 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %156 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.loopback_setup*, %struct.loopback_setup** %8, align 8
  %159 = getelementptr inbounds %struct.loopback_setup, %struct.loopback_setup* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %149, %141
  %161 = load %struct.loopback_setup*, %struct.loopback_setup** %8, align 8
  %162 = getelementptr inbounds %struct.loopback_setup, %struct.loopback_setup* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %165 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %163, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %160
  %169 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %170 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %171 = load %struct.loopback_setup*, %struct.loopback_setup** %8, align 8
  %172 = getelementptr inbounds %struct.loopback_setup, %struct.loopback_setup* %171, i32 0, i32 3
  %173 = call i32 @snd_ctl_notify(%struct.snd_card* %169, i32 %170, i32* %172)
  %174 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %175 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.loopback_setup*, %struct.loopback_setup** %8, align 8
  %178 = getelementptr inbounds %struct.loopback_setup, %struct.loopback_setup* %177, i32 0, i32 2
  store i64 %176, i64* %178, align 8
  br label %179

179:                                              ; preds = %168, %160
  br label %180

180:                                              ; preds = %179
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %180, %78, %72, %21
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @snd_pcm_stop(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.loopback_setup* @get_setup(%struct.TYPE_6__*) #1

declare dso_local i32 @snd_ctl_notify(%struct.snd_card*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
