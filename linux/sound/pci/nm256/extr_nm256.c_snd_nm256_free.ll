; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/nm256/extr_nm256.c_snd_nm256_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/nm256/extr_nm256.c_snd_nm256_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm256 = type { i64, %struct.nm256*, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nm256*)* @snd_nm256_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_nm256_free(%struct.nm256* %0) #0 {
  %2 = alloca %struct.nm256*, align 8
  store %struct.nm256* %0, %struct.nm256** %2, align 8
  %3 = load %struct.nm256*, %struct.nm256** %2, align 8
  %4 = getelementptr inbounds %struct.nm256, %struct.nm256* %3, i32 0, i32 7
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.nm256*, %struct.nm256** %2, align 8
  %13 = call i32 @snd_nm256_playback_stop(%struct.nm256* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.nm256*, %struct.nm256** %2, align 8
  %16 = getelementptr inbounds %struct.nm256, %struct.nm256* %15, i32 0, i32 7
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.nm256*, %struct.nm256** %2, align 8
  %25 = call i32 @snd_nm256_capture_stop(%struct.nm256* %24)
  br label %26

26:                                               ; preds = %23, %14
  %27 = load %struct.nm256*, %struct.nm256** %2, align 8
  %28 = getelementptr inbounds %struct.nm256, %struct.nm256* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.nm256*, %struct.nm256** %2, align 8
  %33 = getelementptr inbounds %struct.nm256, %struct.nm256* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.nm256*, %struct.nm256** %2, align 8
  %36 = call i32 @free_irq(i64 %34, %struct.nm256* %35)
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.nm256*, %struct.nm256** %2, align 8
  %39 = getelementptr inbounds %struct.nm256, %struct.nm256* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @iounmap(i32 %40)
  %42 = load %struct.nm256*, %struct.nm256** %2, align 8
  %43 = getelementptr inbounds %struct.nm256, %struct.nm256* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @iounmap(i32 %44)
  %46 = load %struct.nm256*, %struct.nm256** %2, align 8
  %47 = getelementptr inbounds %struct.nm256, %struct.nm256* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @release_and_free_resource(i32 %48)
  %50 = load %struct.nm256*, %struct.nm256** %2, align 8
  %51 = getelementptr inbounds %struct.nm256, %struct.nm256* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @release_and_free_resource(i32 %52)
  %54 = load %struct.nm256*, %struct.nm256** %2, align 8
  %55 = getelementptr inbounds %struct.nm256, %struct.nm256* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pci_disable_device(i32 %56)
  %58 = load %struct.nm256*, %struct.nm256** %2, align 8
  %59 = getelementptr inbounds %struct.nm256, %struct.nm256* %58, i32 0, i32 1
  %60 = load %struct.nm256*, %struct.nm256** %59, align 8
  %61 = call i32 @kfree(%struct.nm256* %60)
  %62 = load %struct.nm256*, %struct.nm256** %2, align 8
  %63 = call i32 @kfree(%struct.nm256* %62)
  ret i32 0
}

declare dso_local i32 @snd_nm256_playback_stop(%struct.nm256*) #1

declare dso_local i32 @snd_nm256_capture_stop(%struct.nm256*) #1

declare dso_local i32 @free_irq(i64, %struct.nm256*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_and_free_resource(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.nm256*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
