; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_snd_rawmidi_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_snd_rawmidi_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_4__*, i32, i32, i32, %struct.snd_rawmidi* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.snd_rawmidi = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_rawmidi_info = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*, %struct.snd_rawmidi_info*)* @snd_rawmidi_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rawmidi_info(%struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_rawmidi_substream*, align 8
  %5 = alloca %struct.snd_rawmidi_info*, align 8
  %6 = alloca %struct.snd_rawmidi*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %4, align 8
  store %struct.snd_rawmidi_info* %1, %struct.snd_rawmidi_info** %5, align 8
  %7 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %8 = icmp eq %struct.snd_rawmidi_substream* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %86

12:                                               ; preds = %2
  %13 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %13, i32 0, i32 4
  %15 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %14, align 8
  store %struct.snd_rawmidi* %15, %struct.snd_rawmidi** %6, align 8
  %16 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %5, align 8
  %17 = call i32 @memset(%struct.snd_rawmidi_info* %16, i32 0, i32 48)
  %18 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %19 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %18, i32 0, i32 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %5, align 8
  %24 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 4
  %25 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %26 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %5, align 8
  %29 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 8
  %30 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %31 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %5, align 8
  %34 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %36 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %5, align 8
  %39 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %41 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %5, align 8
  %44 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %5, align 8
  %46 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %49 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strcpy(i32 %47, i32 %50)
  %52 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %5, align 8
  %53 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %56 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @strcpy(i32 %54, i32 %57)
  %59 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %5, align 8
  %60 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %63 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @strcpy(i32 %61, i32 %64)
  %66 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %67 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %5, align 8
  %72 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %74 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %4, align 8
  %79 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %77, %82
  %84 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %5, align 8
  %85 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %12, %9
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @memset(%struct.snd_rawmidi_info*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
