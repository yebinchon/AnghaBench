; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_release.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.snd_pcm_file* }
%struct.snd_pcm_file = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm* }
%struct.snd_pcm = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @snd_pcm_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_pcm_file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %10, align 8
  store %struct.snd_pcm_file* %11, %struct.snd_pcm_file** %8, align 8
  %12 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %8, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_file, %struct.snd_pcm_file* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, align 8
  store %struct.snd_pcm_substream* %14, %struct.snd_pcm_substream** %7, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %16 = icmp ne %struct.snd_pcm_substream* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @snd_BUG_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %52

24:                                               ; preds = %2
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 0
  %27 = load %struct.snd_pcm*, %struct.snd_pcm** %26, align 8
  store %struct.snd_pcm* %27, %struct.snd_pcm** %6, align 8
  %28 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %29 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %28, i32 0, i32 2
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %32 = call i32 @snd_pcm_release_substream(%struct.snd_pcm_substream* %31)
  %33 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %8, align 8
  %34 = call i32 @kfree(%struct.snd_pcm_file* %33)
  %35 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %36 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %35, i32 0, i32 2
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %39 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %38, i32 0, i32 1
  %40 = call i32 @wake_up(i32* %39)
  %41 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %42 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @module_put(i32 %45)
  %47 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %48 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load %struct.file*, %struct.file** %5, align 8
  %51 = call i32 @snd_card_file_remove(%struct.TYPE_2__* %49, %struct.file* %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %24, %21
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_pcm_release_substream(%struct.snd_pcm_substream*) #1

declare dso_local i32 @kfree(%struct.snd_pcm_file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @snd_card_file_remove(%struct.TYPE_2__*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
