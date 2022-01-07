; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_stream_group_ref.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_stream_group_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_group = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_group*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_pcm_group* (%struct.snd_pcm_substream*)* @snd_pcm_stream_group_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_pcm_group* @snd_pcm_stream_group_ref(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_group*, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_group*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %53, %1
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = call i32 @snd_pcm_stream_linked(%struct.snd_pcm_substream* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store %struct.snd_pcm_group* null, %struct.snd_pcm_group** %2, align 8
  br label %59

17:                                               ; preds = %12
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load %struct.snd_pcm_group*, %struct.snd_pcm_group** %19, align 8
  store %struct.snd_pcm_group* %20, %struct.snd_pcm_group** %5, align 8
  %21 = load %struct.snd_pcm_group*, %struct.snd_pcm_group** %5, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_group, %struct.snd_pcm_group* %21, i32 0, i32 2
  %23 = call i32 @refcount_inc(i32* %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load %struct.snd_pcm_group*, %struct.snd_pcm_group** %5, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_group, %struct.snd_pcm_group* %27, i32 0, i32 1
  %29 = call i32 @mutex_trylock(i32* %28)
  br label %34

30:                                               ; preds = %17
  %31 = load %struct.snd_pcm_group*, %struct.snd_pcm_group** %5, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_group, %struct.snd_pcm_group* %31, i32 0, i32 0
  %33 = call i32 @spin_trylock(i32* %32)
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i32 [ %29, %26 ], [ %33, %30 ]
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %57

39:                                               ; preds = %34
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %41 = call i32 @snd_pcm_stream_unlock(%struct.snd_pcm_substream* %40)
  %42 = load %struct.snd_pcm_group*, %struct.snd_pcm_group** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @snd_pcm_group_lock(%struct.snd_pcm_group* %42, i32 %43)
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %46 = call i32 @snd_pcm_stream_lock(%struct.snd_pcm_substream* %45)
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %47, i32 0, i32 0
  %49 = load %struct.snd_pcm_group*, %struct.snd_pcm_group** %48, align 8
  %50 = load %struct.snd_pcm_group*, %struct.snd_pcm_group** %5, align 8
  %51 = icmp eq %struct.snd_pcm_group* %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %57

53:                                               ; preds = %39
  %54 = load %struct.snd_pcm_group*, %struct.snd_pcm_group** %5, align 8
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %56 = call i32 @snd_pcm_group_unref(%struct.snd_pcm_group* %54, %struct.snd_pcm_substream* %55)
  br label %12

57:                                               ; preds = %52, %38
  %58 = load %struct.snd_pcm_group*, %struct.snd_pcm_group** %5, align 8
  store %struct.snd_pcm_group* %58, %struct.snd_pcm_group** %2, align 8
  br label %59

59:                                               ; preds = %57, %16
  %60 = load %struct.snd_pcm_group*, %struct.snd_pcm_group** %2, align 8
  ret %struct.snd_pcm_group* %60
}

declare dso_local i32 @snd_pcm_stream_linked(%struct.snd_pcm_substream*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i32 @snd_pcm_stream_unlock(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_group_lock(%struct.snd_pcm_group*, i32) #1

declare dso_local i32 @snd_pcm_stream_lock(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_group_unref(%struct.snd_pcm_group*, %struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
