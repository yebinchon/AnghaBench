; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_rawmidi_release_priv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_rawmidi_release_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_file = type { %struct.snd_rawmidi*, i32*, i32* }
%struct.snd_rawmidi = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_file*)* @rawmidi_release_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rawmidi_release_priv(%struct.snd_rawmidi_file* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_file*, align 8
  %3 = alloca %struct.snd_rawmidi*, align 8
  store %struct.snd_rawmidi_file* %0, %struct.snd_rawmidi_file** %2, align 8
  %4 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %2, align 8
  %5 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %4, i32 0, i32 0
  %6 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %5, align 8
  store %struct.snd_rawmidi* %6, %struct.snd_rawmidi** %3, align 8
  %7 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %3, align 8
  %8 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %2, align 8
  %11 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %3, align 8
  %16 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %2, align 8
  %17 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @close_substream(%struct.snd_rawmidi* %15, i32* %18, i32 1)
  %20 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %2, align 8
  %21 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %2, align 8
  %24 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %3, align 8
  %29 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %2, align 8
  %30 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @close_substream(%struct.snd_rawmidi* %28, i32* %31, i32 1)
  %33 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %2, align 8
  %34 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %27, %22
  %36 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %2, align 8
  %37 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %36, i32 0, i32 0
  store %struct.snd_rawmidi* null, %struct.snd_rawmidi** %37, align 8
  %38 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %3, align 8
  %39 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %3, align 8
  %42 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %41, i32 0, i32 0
  %43 = call i32 @wake_up(i32* %42)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @close_substream(%struct.snd_rawmidi*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
