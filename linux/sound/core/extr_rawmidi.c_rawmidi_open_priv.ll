; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_rawmidi_open_priv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_rawmidi_open_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi = type { i32 }
%struct.snd_rawmidi_file = type { %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream*, %struct.snd_rawmidi* }
%struct.snd_rawmidi_substream = type { i32 }

@SNDRV_RAWMIDI_LFLG_INPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_LFLG_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi*, i32, i32, %struct.snd_rawmidi_file*)* @rawmidi_open_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rawmidi_open_priv(%struct.snd_rawmidi* %0, i32 %1, i32 %2, %struct.snd_rawmidi_file* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_rawmidi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_rawmidi_file*, align 8
  %10 = alloca %struct.snd_rawmidi_substream*, align 8
  %11 = alloca %struct.snd_rawmidi_substream*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_rawmidi* %0, %struct.snd_rawmidi** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.snd_rawmidi_file* %3, %struct.snd_rawmidi_file** %9, align 8
  store %struct.snd_rawmidi_substream* null, %struct.snd_rawmidi_substream** %10, align 8
  store %struct.snd_rawmidi_substream* null, %struct.snd_rawmidi_substream** %11, align 8
  %13 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %9, align 8
  %14 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %13, i32 0, i32 0
  store %struct.snd_rawmidi_substream* null, %struct.snd_rawmidi_substream** %14, align 8
  %15 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %9, align 8
  %16 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %15, i32 0, i32 1
  store %struct.snd_rawmidi_substream* null, %struct.snd_rawmidi_substream** %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @SNDRV_RAWMIDI_LFLG_INPUT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SNDRV_RAWMIDI_STREAM_INPUT, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @assign_substream(%struct.snd_rawmidi* %22, i32 %23, i32 %24, i32 %25, %struct.snd_rawmidi_substream** %10)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %5, align 4
  br label %91

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SNDRV_RAWMIDI_LFLG_OUTPUT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @SNDRV_RAWMIDI_STREAM_OUTPUT, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @assign_substream(%struct.snd_rawmidi* %38, i32 %39, i32 %40, i32 %41, %struct.snd_rawmidi_substream** %11)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %91

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %32
  %49 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %10, align 8
  %50 = icmp ne %struct.snd_rawmidi_substream* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %53 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %10, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @open_substream(%struct.snd_rawmidi* %52, %struct.snd_rawmidi_substream* %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %5, align 4
  br label %91

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %48
  %62 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %11, align 8
  %63 = icmp ne %struct.snd_rawmidi_substream* %62, null
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %66 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %11, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @open_substream(%struct.snd_rawmidi* %65, %struct.snd_rawmidi_substream* %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %10, align 8
  %73 = icmp ne %struct.snd_rawmidi_substream* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %76 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %10, align 8
  %77 = call i32 @close_substream(%struct.snd_rawmidi* %75, %struct.snd_rawmidi_substream* %76, i32 0)
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %5, align 4
  br label %91

80:                                               ; preds = %64
  br label %81

81:                                               ; preds = %80, %61
  %82 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %6, align 8
  %83 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %9, align 8
  %84 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %83, i32 0, i32 2
  store %struct.snd_rawmidi* %82, %struct.snd_rawmidi** %84, align 8
  %85 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %10, align 8
  %86 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %9, align 8
  %87 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %86, i32 0, i32 1
  store %struct.snd_rawmidi_substream* %85, %struct.snd_rawmidi_substream** %87, align 8
  %88 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %11, align 8
  %89 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %9, align 8
  %90 = getelementptr inbounds %struct.snd_rawmidi_file, %struct.snd_rawmidi_file* %89, i32 0, i32 0
  store %struct.snd_rawmidi_substream* %88, %struct.snd_rawmidi_substream** %90, align 8
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %81, %78, %58, %45, %29
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @assign_substream(%struct.snd_rawmidi*, i32, i32, i32, %struct.snd_rawmidi_substream**) #1

declare dso_local i32 @open_substream(%struct.snd_rawmidi*, %struct.snd_rawmidi_substream*, i32) #1

declare dso_local i32 @close_substream(%struct.snd_rawmidi*, %struct.snd_rawmidi_substream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
