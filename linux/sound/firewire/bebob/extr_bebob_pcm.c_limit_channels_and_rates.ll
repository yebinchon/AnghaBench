; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_pcm.c_limit_channels_and_rates.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_pcm.c_limit_channels_and_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hardware = type { i32, i8*, i8*, i8*, i8* }
%struct.snd_bebob_stream_formation = type { i64 }

@UINT_MAX = common dso_local global i8* null, align 8
@SND_BEBOB_STRM_FMT_ENTRIES = common dso_local global i32 0, align 4
@snd_bebob_rate_table = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_hardware*, %struct.snd_bebob_stream_formation*)* @limit_channels_and_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @limit_channels_and_rates(%struct.snd_pcm_hardware* %0, %struct.snd_bebob_stream_formation* %1) #0 {
  %3 = alloca %struct.snd_pcm_hardware*, align 8
  %4 = alloca %struct.snd_bebob_stream_formation*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_hardware* %0, %struct.snd_pcm_hardware** %3, align 8
  store %struct.snd_bebob_stream_formation* %1, %struct.snd_bebob_stream_formation** %4, align 8
  %6 = load i8*, i8** @UINT_MAX, align 8
  %7 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 4
  store i8* %6, i8** %8, align 8
  %9 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %9, i32 0, i32 3
  store i8* null, i8** %10, align 8
  %11 = load i8*, i8** @UINT_MAX, align 8
  %12 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  %14 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %14, i32 0, i32 1
  store i8* null, i8** %15, align 8
  %16 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %88, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SND_BEBOB_STRM_FMT_ENTRIES, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %91

22:                                               ; preds = %18
  %23 = load %struct.snd_bebob_stream_formation*, %struct.snd_bebob_stream_formation** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %23, i64 %25
  %27 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %88

31:                                               ; preds = %22
  %32 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %32, i32 0, i32 4
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.snd_bebob_stream_formation*, %struct.snd_bebob_stream_formation** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %35, i64 %37
  %39 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i8* @min(i8* %34, i64 %40)
  %42 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.snd_bebob_stream_formation*, %struct.snd_bebob_stream_formation** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %47, i64 %49
  %51 = getelementptr inbounds %struct.snd_bebob_stream_formation, %struct.snd_bebob_stream_formation* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i8* @max(i8* %46, i64 %52)
  %54 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = load i64*, i64** @snd_bebob_rate_table, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i8* @min(i8* %58, i64 %63)
  %65 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i64*, i64** @snd_bebob_rate_table, align 8
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i8* @max(i8* %69, i64 %74)
  %76 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load i64*, i64** @snd_bebob_rate_table, align 8
  %79 = load i32, i32* %5, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @snd_pcm_rate_to_rate_bit(i64 %82)
  %84 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %85 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %31, %30
  %89 = load i32, i32* %5, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %18

91:                                               ; preds = %18
  ret void
}

declare dso_local i8* @min(i8*, i64) #1

declare dso_local i8* @max(i8*, i64) #1

declare dso_local i32 @snd_pcm_rate_to_rate_bit(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
