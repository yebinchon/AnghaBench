; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_open_substream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_open_substream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_rawmidi_substream = type { i64, i32, i32, i64, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.snd_rawmidi_substream*)* }

@SNDRV_RAWMIDI_LFLG_APPEND = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi*, %struct.snd_rawmidi_substream*, i32)* @open_substream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_substream(%struct.snd_rawmidi* %0, %struct.snd_rawmidi_substream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_rawmidi*, align 8
  %6 = alloca %struct.snd_rawmidi_substream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_rawmidi* %0, %struct.snd_rawmidi** %5, align 8
  store %struct.snd_rawmidi_substream* %1, %struct.snd_rawmidi_substream** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %6, align 8
  %10 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %62

13:                                               ; preds = %3
  %14 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %6, align 8
  %15 = call i32 @snd_rawmidi_runtime_create(%struct.snd_rawmidi_substream* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %67

20:                                               ; preds = %13
  %21 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %6, align 8
  %22 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %21, i32 0, i32 6
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.snd_rawmidi_substream*)*, i32 (%struct.snd_rawmidi_substream*)** %24, align 8
  %26 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %6, align 8
  %27 = call i32 %25(%struct.snd_rawmidi_substream* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %6, align 8
  %32 = call i32 @snd_rawmidi_runtime_free(%struct.snd_rawmidi_substream* %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %67

34:                                               ; preds = %20
  %35 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %6, align 8
  %36 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %35, i32 0, i32 1
  store i32 1, i32* %36, align 8
  %37 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %6, align 8
  %38 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @SNDRV_RAWMIDI_LFLG_APPEND, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %6, align 8
  %45 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %44, i32 0, i32 2
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %34
  %47 = load i32, i32* @current, align 4
  %48 = call i32 @task_pid(i32 %47)
  %49 = call i32 @get_pid(i32 %48)
  %50 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %6, align 8
  %51 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %5, align 8
  %53 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %6, align 8
  %56 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %46, %3
  %63 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %6, align 8
  %64 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %62, %30, %18
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @snd_rawmidi_runtime_create(%struct.snd_rawmidi_substream*) #1

declare dso_local i32 @snd_rawmidi_runtime_free(%struct.snd_rawmidi_substream*) #1

declare dso_local i32 @get_pid(i32) #1

declare dso_local i32 @task_pid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
