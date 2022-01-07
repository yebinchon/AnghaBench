; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-extension.c_detect_stream_formats.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-extension.c_detect_stream_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i32, i32, i32, i32, i32 }

@SND_DICE_RATE_MODE_COUNT = common dso_local global i32 0, align 4
@CLOCK_CAP_RATE_176400 = common dso_local global i32 0, align 4
@CLOCK_CAP_RATE_192000 = common dso_local global i32 0, align 4
@CLOCK_CAP_RATE_88200 = common dso_local global i32 0, align 4
@CLOCK_CAP_RATE_96000 = common dso_local global i32 0, align 4
@CLOCK_CAP_RATE_32000 = common dso_local global i32 0, align 4
@CLOCK_CAP_RATE_44100 = common dso_local global i32 0, align 4
@CLOCK_CAP_RATE_48000 = common dso_local global i32 0, align 4
@EXT_APP_STREAM_TX_NUMBER = common dso_local global i64 0, align 8
@EXT_APP_STREAM_ENTRIES = common dso_local global i64 0, align 8
@EXT_APP_STREAM_ENTRY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_dice*, i32)* @detect_stream_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_stream_formats(%struct.snd_dice* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_dice*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %108, %2
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @SND_DICE_RATE_MODE_COUNT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %111

15:                                               ; preds = %11
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @CLOCK_CAP_RATE_176400, align 4
  %20 = load i32, i32* @CLOCK_CAP_RATE_192000, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %10, align 4
  br label %36

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @CLOCK_CAP_RATE_88200, align 4
  %27 = load i32, i32* @CLOCK_CAP_RATE_96000, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %10, align 4
  br label %35

29:                                               ; preds = %22
  %30 = load i32, i32* @CLOCK_CAP_RATE_32000, align 4
  %31 = load i32, i32* @CLOCK_CAP_RATE_44100, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CLOCK_CAP_RATE_48000, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %29, %25
  br label %36

36:                                               ; preds = %35, %18
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %39 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %108

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 8192, %45
  %47 = add nsw i32 %46, 4096
  store i32 %47, i32* %5, align 4
  %48 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = load i64, i64* @EXT_APP_STREAM_TX_NUMBER, align 8
  %53 = add nsw i64 %51, %52
  %54 = bitcast [2 x i32]* %6 to i32**
  %55 = call i32 @read_transaction(%struct.snd_dice* %48, i32 %49, i64 %53, i32** %54, i32 8)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  br label %111

59:                                               ; preds = %44
  %60 = load i64, i64* @EXT_APP_STREAM_ENTRIES, align 8
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @be32_to_cpu(i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %74 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %77 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @read_stream_entries(%struct.snd_dice* %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %75, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %59
  br label %111

83:                                               ; preds = %59
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @EXT_APP_STREAM_ENTRY_SIZE, align 4
  %86 = mul i32 %84, %85
  %87 = load i32, i32* %5, align 4
  %88 = add i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @be32_to_cpu(i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %98 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %101 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @read_stream_entries(%struct.snd_dice* %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %99, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %83
  br label %111

107:                                              ; preds = %83
  br label %108

108:                                              ; preds = %107, %43
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %11

111:                                              ; preds = %106, %82, %58, %11
  %112 = load i32, i32* %9, align 4
  ret i32 %112
}

declare dso_local i32 @read_transaction(%struct.snd_dice*, i32, i64, i32**, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @read_stream_entries(%struct.snd_dice*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
