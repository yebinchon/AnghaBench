; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_snd_rawmidi_runtime_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_snd_rawmidi_runtime_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { i64, %struct.snd_rawmidi_runtime* }
%struct.snd_rawmidi_runtime = type { i32, i64, i64, i32, i64, i64, i32*, i32, i32, i32, %struct.snd_rawmidi_substream* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_rawmidi_input_event_work = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_rawmidi_runtime_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rawmidi_runtime_create(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca %struct.snd_rawmidi_runtime*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.snd_rawmidi_runtime* @kzalloc(i32 80, i32 %5)
  store %struct.snd_rawmidi_runtime* %6, %struct.snd_rawmidi_runtime** %4, align 8
  %7 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %8 = icmp ne %struct.snd_rawmidi_runtime* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %72

12:                                               ; preds = %1
  %13 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %14 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %15 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %14, i32 0, i32 10
  store %struct.snd_rawmidi_substream* %13, %struct.snd_rawmidi_substream** %15, align 8
  %16 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %17 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %16, i32 0, i32 9
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %20 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %19, i32 0, i32 8
  %21 = call i32 @init_waitqueue_head(i32* %20)
  %22 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %23 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %22, i32 0, i32 7
  %24 = load i32, i32* @snd_rawmidi_input_event_work, align 4
  %25 = call i32 @INIT_WORK(i32* %23, i32 %24)
  %26 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %27 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %26, i32 0, i32 6
  store i32* null, i32** %27, align 8
  %28 = load i64, i64* @PAGE_SIZE, align 8
  %29 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %30 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %29, i32 0, i32 4
  store i64 %28, i64* %30, align 8
  %31 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %32 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %34 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SNDRV_RAWMIDI_STREAM_INPUT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %12
  %39 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %40 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  br label %47

41:                                               ; preds = %12
  %42 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %43 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %46 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %45, i32 0, i32 5
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %41, %38
  %48 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %49 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32 @kvzalloc(i64 %50, i32 %51)
  %53 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %54 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %56 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %47
  %60 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %61 = call i32 @kfree(%struct.snd_rawmidi_runtime* %60)
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %72

64:                                               ; preds = %47
  %65 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %66 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %68 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %4, align 8
  %70 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %71 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %70, i32 0, i32 1
  store %struct.snd_rawmidi_runtime* %69, %struct.snd_rawmidi_runtime** %71, align 8
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %64, %59, %9
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.snd_rawmidi_runtime* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @kvzalloc(i64, i32) #1

declare dso_local i32 @kfree(%struct.snd_rawmidi_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
