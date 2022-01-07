; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_parse_stream_formation.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_parse_stream_formation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob_stream_formation = type { i64, i64 }

@ENOSYS = common dso_local global i32 0, align 4
@bridgeco_freq_table = common dso_local global i32* null, align 8
@AM824_MAX_CHANNELS_FOR_PCM = common dso_local global i64 0, align 8
@AM824_MAX_CHANNELS_FOR_MIDI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.snd_bebob_stream_formation*)* @parse_stream_formation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_stream_formation(i32* %0, i32 %1, %struct.snd_bebob_stream_formation* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_bebob_stream_formation*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_bebob_stream_formation* %2, %struct.snd_bebob_stream_formation** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 144
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 64
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %3
  %22 = load i32, i32* @ENOSYS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %131

24:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %42, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32*, i32** @bridgeco_freq_table, align 8
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** @bridgeco_freq_table, align 8
  %35 = load i32, i32* %8, align 4
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
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %25

45:                                               ; preds = %40, %25
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** @bridgeco_freq_table, align 8
  %48 = call i32 @ARRAY_SIZE(i32* %47)
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOSYS, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %131

53:                                               ; preds = %45
  %54 = load %struct.snd_bebob_stream_formation*, %struct.snd_bebob_stream_formation** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %54, i64 %56
  %58 = call i32 @memset(%struct.snd_bebob_stream_formation* %57, i32 0, i32 16)
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %106, %53
  %60 = load i32, i32* %9, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = load i32, i32* %62, align 4
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %109

65:                                               ; preds = %59
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = mul i32 %67, 2
  %69 = add i32 5, %68
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %10, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = mul i32 %74, 2
  %76 = add i32 6, %75
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  switch i32 %80, label %102 [
    i32 0, label %81
    i32 6, label %81
    i32 13, label %91
    i32 1, label %101
    i32 2, label %101
    i32 3, label %101
    i32 4, label %101
    i32 5, label %101
    i32 7, label %101
    i32 12, label %101
    i32 8, label %101
    i32 9, label %101
    i32 10, label %101
    i32 11, label %101
    i32 64, label %101
    i32 255, label %101
  ]

81:                                               ; preds = %65, %65
  %82 = load i32, i32* %10, align 4
  %83 = zext i32 %82 to i64
  %84 = load %struct.snd_bebob_stream_formation*, %struct.snd_bebob_stream_formation** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %84, i64 %86
  %88 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, %83
  store i64 %90, i64* %88, align 8
  br label %105

91:                                               ; preds = %65
  %92 = load i32, i32* %10, align 4
  %93 = zext i32 %92 to i64
  %94 = load %struct.snd_bebob_stream_formation*, %struct.snd_bebob_stream_formation** %7, align 8
  %95 = load i32, i32* %8, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %94, i64 %96
  %98 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, %93
  store i64 %100, i64* %98, align 8
  br label %105

101:                                              ; preds = %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65
  br label %102

102:                                              ; preds = %65, %101
  %103 = load i32, i32* @ENOSYS, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %131

105:                                              ; preds = %91, %81
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %9, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %59

109:                                              ; preds = %59
  %110 = load %struct.snd_bebob_stream_formation*, %struct.snd_bebob_stream_formation** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %110, i64 %112
  %114 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @AM824_MAX_CHANNELS_FOR_PCM, align 8
  %117 = icmp sgt i64 %115, %116
  br i1 %117, label %127, label %118

118:                                              ; preds = %109
  %119 = load %struct.snd_bebob_stream_formation*, %struct.snd_bebob_stream_formation** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %119, i64 %121
  %123 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @AM824_MAX_CHANNELS_FOR_MIDI, align 8
  %126 = icmp sgt i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %118, %109
  %128 = load i32, i32* @ENOSYS, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %131

130:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %127, %102, %50, %21
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @memset(%struct.snd_bebob_stream_formation*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
