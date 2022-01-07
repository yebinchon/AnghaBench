; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_snd_oxfw_stream_parse_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_snd_oxfw_stream_parse_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_oxfw_stream_formation = type { i64, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@avc_stream_rate_table = common dso_local global i32* null, align 8
@oxfw_rate_table = common dso_local global i32* null, align 8
@AM824_MAX_CHANNELS_FOR_PCM = common dso_local global i64 0, align 8
@AM824_MAX_CHANNELS_FOR_MIDI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_oxfw_stream_parse_format(i32* %0, %struct.snd_oxfw_stream_formation* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.snd_oxfw_stream_formation*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.snd_oxfw_stream_formation* %1, %struct.snd_oxfw_stream_formation** %5, align 8
  %10 = load %struct.snd_oxfw_stream_formation*, %struct.snd_oxfw_stream_formation** %5, align 8
  %11 = call i32 @memset(%struct.snd_oxfw_stream_formation* %10, i32 0, i32 16)
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 144
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 64
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @ENOSYS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %119

24:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %42, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** @avc_stream_rate_table, align 8
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** @avc_stream_rate_table, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %45

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %25

45:                                               ; preds = %40, %25
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** @avc_stream_rate_table, align 8
  %48 = call i32 @ARRAY_SIZE(i32* %47)
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOSYS, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %119

53:                                               ; preds = %45
  %54 = load i32*, i32** @oxfw_rate_table, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.snd_oxfw_stream_formation*, %struct.snd_oxfw_stream_formation** %5, align 8
  %60 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %99, %53
  %62 = load i32, i32* %7, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = load i32, i32* %64, align 4
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %61
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = mul i32 %69, 2
  %71 = add i32 5, %70
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = mul i32 %76, 2
  %78 = add i32 6, %77
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  switch i32 %82, label %95 [
    i32 0, label %83
    i32 6, label %83
    i32 13, label %90
    i32 1, label %94
    i32 2, label %94
    i32 3, label %94
    i32 4, label %94
    i32 5, label %94
    i32 7, label %94
    i32 12, label %94
    i32 8, label %94
    i32 9, label %94
    i32 10, label %94
    i32 11, label %94
    i32 14, label %94
    i32 15, label %94
    i32 16, label %94
    i32 64, label %94
    i32 255, label %94
  ]

83:                                               ; preds = %67, %67
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = load %struct.snd_oxfw_stream_formation*, %struct.snd_oxfw_stream_formation** %5, align 8
  %87 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, %85
  store i64 %89, i64* %87, align 8
  br label %98

90:                                               ; preds = %67
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.snd_oxfw_stream_formation*, %struct.snd_oxfw_stream_formation** %5, align 8
  %93 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  br label %98

94:                                               ; preds = %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67
  br label %95

95:                                               ; preds = %67, %94
  %96 = load i32, i32* @ENOSYS, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %119

98:                                               ; preds = %90, %83
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %7, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %61

102:                                              ; preds = %61
  %103 = load %struct.snd_oxfw_stream_formation*, %struct.snd_oxfw_stream_formation** %5, align 8
  %104 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @AM824_MAX_CHANNELS_FOR_PCM, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %115, label %108

108:                                              ; preds = %102
  %109 = load %struct.snd_oxfw_stream_formation*, %struct.snd_oxfw_stream_formation** %5, align 8
  %110 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = zext i32 %111 to i64
  %113 = load i64, i64* @AM824_MAX_CHANNELS_FOR_MIDI, align 8
  %114 = icmp sgt i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %108, %102
  %116 = load i32, i32* @ENOSYS, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %119

118:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %115, %95, %50, %21
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @memset(%struct.snd_oxfw_stream_formation*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
