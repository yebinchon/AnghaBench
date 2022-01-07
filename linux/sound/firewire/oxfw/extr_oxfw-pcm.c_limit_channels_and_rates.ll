; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-pcm.c_limit_channels_and_rates.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-pcm.c_limit_channels_and_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hardware = type { i32, i8*, i8*, i8*, i8* }
%struct.snd_oxfw_stream_formation = type { i32, i32 }

@UINT_MAX = common dso_local global i8* null, align 8
@SND_OXFW_STREAM_FORMAT_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_hardware*, i32**)* @limit_channels_and_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @limit_channels_and_rates(%struct.snd_pcm_hardware* %0, i32** %1) #0 {
  %3 = alloca %struct.snd_pcm_hardware*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.snd_oxfw_stream_formation, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_hardware* %0, %struct.snd_pcm_hardware** %3, align 8
  store i32** %1, i32*** %4, align 8
  %8 = load i8*, i8** @UINT_MAX, align 8
  %9 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %9, i32 0, i32 4
  store i8* %8, i8** %10, align 8
  %11 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %11, i32 0, i32 3
  store i8* null, i8** %12, align 8
  %13 = load i8*, i8** @UINT_MAX, align 8
  %14 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %16, i32 0, i32 1
  store i8* null, i8** %17, align 8
  %18 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %82, %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @SND_OXFW_STREAM_FORMAT_ENTRIES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %85

24:                                               ; preds = %20
  %25 = load i32**, i32*** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %85

32:                                               ; preds = %24
  %33 = load i32**, i32*** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @snd_oxfw_stream_parse_format(i32* %37, %struct.snd_oxfw_stream_formation* %5)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %82

42:                                               ; preds = %32
  %43 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %5, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @min(i8* %45, i32 %47)
  %49 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  %51 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %51, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %5, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @max(i8* %53, i32 %55)
  %57 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %58 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %5, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @min(i8* %61, i32 %63)
  %65 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %5, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @max(i8* %69, i32 %71)
  %73 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %5, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @snd_pcm_rate_to_rate_bit(i32 %76)
  %78 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %42, %41
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %20

85:                                               ; preds = %31, %20
  ret void
}

declare dso_local i32 @snd_oxfw_stream_parse_format(i32*, %struct.snd_oxfw_stream_formation*) #1

declare dso_local i8* @min(i8*, i32) #1

declare dso_local i8* @max(i8*, i32) #1

declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
