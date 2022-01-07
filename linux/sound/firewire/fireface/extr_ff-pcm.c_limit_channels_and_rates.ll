; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-pcm.c_limit_channels_and_rates.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-pcm.c_limit_channels_and_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hardware = type { i8*, i8*, i32, i8*, i8* }

@UINT_MAX = common dso_local global i8* null, align 8
@amdtp_rate_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_hardware*, i32*)* @limit_channels_and_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @limit_channels_and_rates(%struct.snd_pcm_hardware* %0, i32* %1) #0 {
  %3 = alloca %struct.snd_pcm_hardware*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_hardware* %0, %struct.snd_pcm_hardware** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i8*, i8** @UINT_MAX, align 8
  %11 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %11, i32 0, i32 4
  store i8* %10, i8** %12, align 8
  %13 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %13, i32 0, i32 3
  store i8* null, i8** %14, align 8
  %15 = load i8*, i8** @UINT_MAX, align 8
  %16 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %18, i32 0, i32 0
  store i8* null, i8** %19, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %84, %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** @amdtp_rate_table, align 8
  %23 = call i32 @ARRAY_SIZE(i32* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %87

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @snd_ff_stream_get_multiplier_mode(i32 %26, i32* %8)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %84

31:                                               ; preds = %25
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %84

44:                                               ; preds = %31
  %45 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i8* @min(i8* %47, i32 %48)
  %50 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i8* @max(i8* %54, i32 %55)
  %57 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %58 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load i32*, i32** @amdtp_rate_table, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @snd_pcm_rate_to_rate_bit(i32 %64)
  %66 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i8* @min(i8* %72, i32 %73)
  %75 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %78 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i8* @max(i8* %79, i32 %80)
  %82 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %3, align 8
  %83 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %44, %43, %30
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %20

87:                                               ; preds = %20
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ff_stream_get_multiplier_mode(i32, i32*) #1

declare dso_local i8* @min(i8*, i32) #1

declare dso_local i8* @max(i8*, i32) #1

declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
