; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_snd_usb_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_snd_usb_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, %struct.snd_usb_substream* }
%struct.snd_usb_substream = type { i32, i64, %struct.TYPE_6__*, i64, i64, i64, i64, %struct.TYPE_9__*, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i8*, i32, i8* }
%struct.usb_host_interface = type { i32 }
%struct.usb_interface = type { %struct.usb_host_interface* }

@.str = private unnamed_addr constant [25 x i8] c"no format is specified!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@UAC3_PD_STATE_D0 = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_usb_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_usb_substream*, align 8
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 1
  %14 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %13, align 8
  store %struct.snd_usb_substream* %14, %struct.snd_usb_substream** %5, align 8
  %15 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %16 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %15, i32 0, i32 9
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %1
  %20 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %21 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %20, i32 0, i32 10
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %178

27:                                               ; preds = %1
  %28 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %29 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @snd_usb_lock_shutdown(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %2, align 4
  br label %178

38:                                               ; preds = %27
  %39 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %40 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %39, i32 0, i32 7
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = icmp ne %struct.TYPE_9__* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @snd_BUG_ON(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %170

50:                                               ; preds = %38
  %51 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %52 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %51, i32 0, i32 11
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = call i32 @snd_usb_endpoint_sync_pending_stop(%struct.TYPE_9__* %53)
  %55 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %56 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %55, i32 0, i32 7
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = call i32 @snd_usb_endpoint_sync_pending_stop(%struct.TYPE_9__* %57)
  %59 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %60 = load i32, i32* @UAC3_PD_STATE_D0, align 4
  %61 = call i32 @snd_usb_pcm_change_state(%struct.snd_usb_substream* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %170

65:                                               ; preds = %50
  %66 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %67 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %68 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %67, i32 0, i32 9
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = call i32 @set_format(%struct.snd_usb_substream* %66, %struct.TYPE_8__* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %170

74:                                               ; preds = %65
  %75 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %76 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %128

79:                                               ; preds = %74
  %80 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %81 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %80, i32 0, i32 10
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %84 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %83, i32 0, i32 9
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.TYPE_7__* %82, i32 %87)
  store %struct.usb_interface* %88, %struct.usb_interface** %7, align 8
  %89 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %90 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %89, i32 0, i32 0
  %91 = load %struct.usb_host_interface*, %struct.usb_host_interface** %90, align 8
  %92 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %93 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %92, i32 0, i32 9
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %91, i64 %96
  store %struct.usb_host_interface* %97, %struct.usb_host_interface** %6, align 8
  %98 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %99 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %98, i32 0, i32 2
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %104 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %103, i32 0, i32 9
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %109 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %110 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %109, i32 0, i32 9
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %113 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @snd_usb_init_sample_rate(i32 %102, i32 %107, %struct.usb_host_interface* %108, %struct.TYPE_8__* %111, i32 %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %79
  br label %170

119:                                              ; preds = %79
  %120 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %121 = call i32 @configure_endpoint(%struct.snd_usb_substream* %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %170

125:                                              ; preds = %119
  %126 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %127 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %126, i32 0, i32 0
  store i32 0, i32* %127, align 8
  br label %128

128:                                              ; preds = %125, %74
  %129 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %130 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %131 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %130, i32 0, i32 7
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i8* @bytes_to_frames(%struct.snd_pcm_runtime* %129, i32 %134)
  %136 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %137 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %136, i32 0, i32 7
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 3
  store i8* %135, i8** %139, align 8
  %140 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %141 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %142 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %141, i32 0, i32 7
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i8* @bytes_to_frames(%struct.snd_pcm_runtime* %140, i32 %145)
  %147 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %148 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %147, i32 0, i32 7
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  store i8* %146, i8** %150, align 8
  %151 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %152 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %151, i32 0, i32 6
  store i64 0, i64* %152, align 8
  %153 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %154 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %153, i32 0, i32 5
  store i64 0, i64* %154, align 8
  %155 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %156 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %155, i32 0, i32 4
  store i64 0, i64* %156, align 8
  %157 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %158 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %157, i32 0, i32 3
  store i64 0, i64* %158, align 8
  %159 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %160 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %159, i32 0, i32 0
  store i64 0, i64* %160, align 8
  %161 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %162 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %128
  %167 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %168 = call i32 @start_endpoints(%struct.snd_usb_substream* %167)
  store i32 %168, i32* %8, align 4
  br label %169

169:                                              ; preds = %166, %128
  br label %170

170:                                              ; preds = %169, %124, %118, %73, %64, %47
  %171 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %5, align 8
  %172 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %171, i32 0, i32 2
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @snd_usb_unlock_shutdown(i32 %175)
  %177 = load i32, i32* %8, align 4
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %170, %36, %19
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @snd_usb_lock_shutdown(i32) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_usb_endpoint_sync_pending_stop(%struct.TYPE_9__*) #1

declare dso_local i32 @snd_usb_pcm_change_state(%struct.snd_usb_substream*, i32) #1

declare dso_local i32 @set_format(%struct.snd_usb_substream*, %struct.TYPE_8__*) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @snd_usb_init_sample_rate(i32, i32, %struct.usb_host_interface*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @configure_endpoint(%struct.snd_usb_substream*) #1

declare dso_local i8* @bytes_to_frames(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @start_endpoints(%struct.snd_usb_substream*) #1

declare dso_local i32 @snd_usb_unlock_shutdown(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
