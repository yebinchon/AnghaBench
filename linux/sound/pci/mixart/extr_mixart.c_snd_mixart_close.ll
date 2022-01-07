; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart.c_snd_mixart_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart.c_snd_mixart_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mixart_stream* }
%struct.mixart_stream = type { i32*, i32, i32*, i32 }
%struct.snd_mixart = type { i32, %struct.TYPE_4__*, %struct.mixart_mgr* }
%struct.TYPE_4__ = type { i32 }
%struct.mixart_mgr = type { i64, i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"snd_mixart_close C%d/P%d/Sub%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"error snd_mixart_kill_ref_pipe C%dP%d\0A\00", align 1
@MIXART_STREAM_STATUS_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_mixart_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixart_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_mixart*, align 8
  %4 = alloca %struct.mixart_mgr*, align 8
  %5 = alloca %struct.mixart_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.snd_mixart* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_mixart* %7, %struct.snd_mixart** %3, align 8
  %8 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %9 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %8, i32 0, i32 2
  %10 = load %struct.mixart_mgr*, %struct.mixart_mgr** %9, align 8
  store %struct.mixart_mgr* %10, %struct.mixart_mgr** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.mixart_stream*, %struct.mixart_stream** %14, align 8
  store %struct.mixart_stream* %15, %struct.mixart_stream** %5, align 8
  %16 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %17 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %20 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %25 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mixart_stream*, %struct.mixart_stream** %5, align 8
  %28 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %32)
  %34 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %35 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %1
  %40 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %41 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %1
  %43 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %44 = load %struct.mixart_stream*, %struct.mixart_stream** %5, align 8
  %45 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @snd_mixart_kill_ref_pipe(%struct.mixart_mgr* %43, i32* %46, i32 0)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %51 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %56 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mixart_stream*, %struct.mixart_stream** %5, align 8
  %59 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %49, %42
  %63 = load %struct.mixart_stream*, %struct.mixart_stream** %5, align 8
  %64 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  %65 = load i32, i32* @MIXART_STREAM_STATUS_FREE, align 4
  %66 = load %struct.mixart_stream*, %struct.mixart_stream** %5, align 8
  %67 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.mixart_stream*, %struct.mixart_stream** %5, align 8
  %69 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  %70 = load %struct.mixart_mgr*, %struct.mixart_mgr** %4, align 8
  %71 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %70, i32 0, i32 1
  %72 = call i32 @mutex_unlock(i32* %71)
  ret i32 0
}

declare dso_local %struct.snd_mixart* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @snd_mixart_kill_ref_pipe(%struct.mixart_mgr*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
