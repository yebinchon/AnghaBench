; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart.c_snd_mixart_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart.c_snd_mixart_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.mixart_stream* }
%struct.mixart_stream = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.snd_mixart = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"snd_mixart_prepare\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_mixart_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixart_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_mixart*, align 8
  %5 = alloca %struct.mixart_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.snd_mixart* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_mixart* %7, %struct.snd_mixart** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.mixart_stream*, %struct.mixart_stream** %11, align 8
  store %struct.mixart_stream* %12, %struct.mixart_stream** %5, align 8
  %13 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %14 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %20 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = call i32 @mixart_sync_nonblock_events(%struct.TYPE_8__* %21)
  %23 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %24 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %39

29:                                               ; preds = %1
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %36 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %29, %1
  %40 = load %struct.mixart_stream*, %struct.mixart_stream** %5, align 8
  %41 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %64

46:                                               ; preds = %39
  %47 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %48 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load %struct.mixart_stream*, %struct.mixart_stream** %5, align 8
  %51 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @mixart_set_clock(%struct.TYPE_8__* %49, %struct.TYPE_9__* %52, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %46
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %65

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63, %39
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %60
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.snd_mixart* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mixart_sync_nonblock_events(%struct.TYPE_8__*) #1

declare dso_local i64 @mixart_set_clock(%struct.TYPE_8__*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
