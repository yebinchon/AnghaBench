; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i32 (%struct.snd_compr_stream*, i32)* }

@EPERM = common dso_local global i32 0, align 4
@SNDRV_PCM_TRIGGER_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*)* @snd_compr_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_compr_stop(%struct.snd_compr_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  %5 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %6 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %13 [
    i32 130, label %10
    i32 128, label %10
    i32 129, label %10
  ]

10:                                               ; preds = %1, %1, %1
  %11 = load i32, i32* @EPERM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13
  %15 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %16 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.snd_compr_stream*, i32)*, i32 (%struct.snd_compr_stream*, i32)** %18, align 8
  %20 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %21 = load i32, i32* @SNDRV_PCM_TRIGGER_STOP, align 4
  %22 = call i32 %19(%struct.snd_compr_stream* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %14
  %26 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %27 = call i32 @snd_compr_drain_notify(%struct.snd_compr_stream* %26)
  %28 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %29 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %33 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %25, %14
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @snd_compr_drain_notify(%struct.snd_compr_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
