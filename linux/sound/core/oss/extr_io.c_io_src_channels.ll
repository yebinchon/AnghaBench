; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_io.c_io_src_channels.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_io.c_io_src_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_plugin = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_plugin_channel = type { i32 }

@SNDRV_PCM_ACCESS_RW_INTERLEAVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_plugin*, i32, %struct.snd_pcm_plugin_channel**)* @io_src_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_src_channels(%struct.snd_pcm_plugin* %0, i32 %1, %struct.snd_pcm_plugin_channel** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_plugin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_plugin_channel**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcm_plugin_channel*, align 8
  store %struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_pcm_plugin_channel** %2, %struct.snd_pcm_plugin_channel*** %7, align 8
  %11 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @snd_pcm_plugin_client_channels(%struct.snd_pcm_plugin* %11, i32 %12, %struct.snd_pcm_plugin_channel** %10)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %45

18:                                               ; preds = %3
  %19 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %20 = load %struct.snd_pcm_plugin_channel**, %struct.snd_pcm_plugin_channel*** %7, align 8
  store %struct.snd_pcm_plugin_channel* %19, %struct.snd_pcm_plugin_channel** %20, align 8
  %21 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %5, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %37, %26
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %5, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %28, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %9, align 4
  %40 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %40, i32 1
  store %struct.snd_pcm_plugin_channel* %41, %struct.snd_pcm_plugin_channel** %10, align 8
  br label %27

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42, %18
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %16
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @snd_pcm_plugin_client_channels(%struct.snd_pcm_plugin*, i32, %struct.snd_pcm_plugin_channel**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
