; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_alsa.c_alsa_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_alsa.c_alsa_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.xen_snd_front_pcm_stream_info = type { i32, i32, i32, i32, %struct.xen_snd_front_info* }
%struct.xen_snd_front_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xen_front_pgdir_shbuf_cfg = type { i32, i32, i32*, %struct.TYPE_2__* }

@.str = private unnamed_addr constant [53 x i8] c"Failed to allocate buffers for stream with index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @alsa_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alsa_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.xen_snd_front_pcm_stream_info*, align 8
  %7 = alloca %struct.xen_snd_front_info*, align 8
  %8 = alloca %struct.xen_front_pgdir_shbuf_cfg, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = call %struct.xen_snd_front_pcm_stream_info* @stream_get(%struct.snd_pcm_substream* %10)
  store %struct.xen_snd_front_pcm_stream_info* %11, %struct.xen_snd_front_pcm_stream_info** %6, align 8
  %12 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %6, align 8
  %13 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %12, i32 0, i32 4
  %14 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %13, align 8
  store %struct.xen_snd_front_info* %14, %struct.xen_snd_front_info** %7, align 8
  %15 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %6, align 8
  %16 = call i32 @stream_free(%struct.xen_snd_front_pcm_stream_info* %15)
  %17 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %6, align 8
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %19 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %18)
  %20 = call i32 @shbuf_setup_backstore(%struct.xen_snd_front_pcm_stream_info* %17, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %53

24:                                               ; preds = %2
  %25 = call i32 @memset(%struct.xen_front_pgdir_shbuf_cfg* %8, i32 0, i32 24)
  %26 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %7, align 8
  %27 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.xen_front_pgdir_shbuf_cfg, %struct.xen_front_pgdir_shbuf_cfg* %8, i32 0, i32 3
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** %29, align 8
  %30 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %6, align 8
  %31 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.xen_front_pgdir_shbuf_cfg, %struct.xen_front_pgdir_shbuf_cfg* %8, i32 0, i32 2
  store i32* %31, i32** %32, align 8
  %33 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %6, align 8
  %34 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.xen_front_pgdir_shbuf_cfg, %struct.xen_front_pgdir_shbuf_cfg* %8, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %6, align 8
  %38 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.xen_front_pgdir_shbuf_cfg, %struct.xen_front_pgdir_shbuf_cfg* %8, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = call i32 @xen_front_pgdir_shbuf_alloc(%struct.xen_front_pgdir_shbuf_cfg* %8)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %24
  br label %53

45:                                               ; preds = %24
  %46 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %6, align 8
  %47 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %46, i32 0, i32 1
  %48 = call i32 @xen_front_pgdir_shbuf_map(i32* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %53

52:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %65

53:                                               ; preds = %51, %44, %23
  %54 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %6, align 8
  %55 = call i32 @stream_free(%struct.xen_snd_front_pcm_stream_info* %54)
  %56 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %7, align 8
  %57 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %6, align 8
  %61 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %53, %52
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.xen_snd_front_pcm_stream_info* @stream_get(%struct.snd_pcm_substream*) #1

declare dso_local i32 @stream_free(%struct.xen_snd_front_pcm_stream_info*) #1

declare dso_local i32 @shbuf_setup_backstore(%struct.xen_snd_front_pcm_stream_info*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @memset(%struct.xen_front_pgdir_shbuf_cfg*, i32, i32) #1

declare dso_local i32 @xen_front_pgdir_shbuf_alloc(%struct.xen_front_pgdir_shbuf_cfg*) #1

declare dso_local i32 @xen_front_pgdir_shbuf_map(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
