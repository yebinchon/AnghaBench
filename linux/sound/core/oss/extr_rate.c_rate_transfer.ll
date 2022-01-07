; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_rate.c_rate_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_rate.c_rate_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_plugin = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snd_pcm_plugin_channel = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rate_priv = type { i32 (%struct.snd_pcm_plugin*, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i64, i64)* }

@ENXIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_plugin*, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i64)* @rate_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rate_transfer(%struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin_channel* %1, %struct.snd_pcm_plugin_channel* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_pcm_plugin*, align 8
  %7 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %8 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rate_priv*, align 8
  store %struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin** %6, align 8
  store %struct.snd_pcm_plugin_channel* %1, %struct.snd_pcm_plugin_channel** %7, align 8
  store %struct.snd_pcm_plugin_channel* %2, %struct.snd_pcm_plugin_channel** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %13 = icmp ne %struct.snd_pcm_plugin* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %16 = icmp ne %struct.snd_pcm_plugin_channel* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %19 = icmp ne %struct.snd_pcm_plugin_channel* %18, null
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %17, %14, %4
  %22 = phi i1 [ true, %14 ], [ true, %4 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @snd_BUG_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i64, i64* @ENXIO, align 8
  %28 = sub nsw i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %63

29:                                               ; preds = %21
  %30 = load i64, i64* %9, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i64 0, i64* %5, align 8
  br label %63

33:                                               ; preds = %29
  %34 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @rate_dst_frames(%struct.snd_pcm_plugin* %34, i64 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %38, i64 0
  %40 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %37, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %44, i64 0
  %46 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %10, align 8
  br label %48

48:                                               ; preds = %43, %33
  %49 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.rate_priv*
  store %struct.rate_priv* %52, %struct.rate_priv** %11, align 8
  %53 = load %struct.rate_priv*, %struct.rate_priv** %11, align 8
  %54 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %53, i32 0, i32 0
  %55 = load i32 (%struct.snd_pcm_plugin*, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i64, i64)*, i32 (%struct.snd_pcm_plugin*, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i64, i64)** %54, align 8
  %56 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %57 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %58 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 %55(%struct.snd_pcm_plugin* %56, %struct.snd_pcm_plugin_channel* %57, %struct.snd_pcm_plugin_channel* %58, i64 %59, i64 %60)
  %62 = load i64, i64* %10, align 8
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %48, %32, %26
  %64 = load i64, i64* %5, align 8
  ret i64 %64
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i64 @rate_dst_frames(%struct.snd_pcm_plugin*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
