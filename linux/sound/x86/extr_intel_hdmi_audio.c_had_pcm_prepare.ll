; ModuleID = '/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32 }
%struct.snd_intelhad = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"period_size=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"periods=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"buffer_size=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"rate=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"channels=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"programming N value failed %#x\0A\00", align 1
@AUD_BUF_CH_SWAP = common dso_local global i32 0, align 4
@SWAP_LFE_CENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @had_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @had_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_intelhad*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = call %struct.snd_intelhad* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_intelhad* %10, %struct.snd_intelhad** %7, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %8, align 8
  %14 = load %struct.snd_intelhad*, %struct.snd_intelhad** %7, align 8
  %15 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @frames_to_bytes(%struct.snd_pcm_runtime* %17, i32 %20)
  %22 = trunc i64 %21 to i32
  %23 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.snd_intelhad*, %struct.snd_intelhad** %7, align 8
  %25 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.snd_intelhad*, %struct.snd_intelhad** %7, align 8
  %32 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %35 = call i64 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %34)
  %36 = trunc i64 %35 to i32
  %37 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load %struct.snd_intelhad*, %struct.snd_intelhad** %7, align 8
  %39 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load %struct.snd_intelhad*, %struct.snd_intelhad** %7, align 8
  %46 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = load %struct.snd_intelhad*, %struct.snd_intelhad** %7, align 8
  %53 = call i32 @had_do_reset(%struct.snd_intelhad* %52)
  %54 = load %struct.snd_intelhad*, %struct.snd_intelhad** %7, align 8
  %55 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %4, align 4
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %58 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %57, i32 0, i32 0
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %58, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.snd_intelhad*, %struct.snd_intelhad** %7, align 8
  %63 = call i32 @had_prog_n(i32 %61, i32* %5, %struct.snd_intelhad* %62)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %1
  %67 = load %struct.snd_intelhad*, %struct.snd_intelhad** %7, align 8
  %68 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  br label %105

72:                                               ; preds = %1
  %73 = load %struct.snd_intelhad*, %struct.snd_intelhad** %7, align 8
  %74 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.snd_intelhad*, %struct.snd_intelhad** %7, align 8
  %79 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %77, %72
  %82 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %83 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %82, i32 0, i32 0
  %84 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %83, align 8
  %85 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.snd_intelhad*, %struct.snd_intelhad** %7, align 8
  %91 = call i32 @had_prog_cts(i32 %86, i32 %87, i32 %88, i32 %89, %struct.snd_intelhad* %90)
  %92 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %93 = load %struct.snd_intelhad*, %struct.snd_intelhad** %7, align 8
  %94 = call i32 @had_prog_dip(%struct.snd_pcm_substream* %92, %struct.snd_intelhad* %93)
  %95 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %96 = load %struct.snd_intelhad*, %struct.snd_intelhad** %7, align 8
  %97 = call i32 @had_init_audio_ctrl(%struct.snd_pcm_substream* %95, %struct.snd_intelhad* %96)
  store i32 %97, i32* %3, align 4
  %98 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %99 = load %struct.snd_intelhad*, %struct.snd_intelhad** %7, align 8
  %100 = call i32 @had_init_ringbuf(%struct.snd_pcm_substream* %98, %struct.snd_intelhad* %99)
  %101 = load %struct.snd_intelhad*, %struct.snd_intelhad** %7, align 8
  %102 = load i32, i32* @AUD_BUF_CH_SWAP, align 4
  %103 = load i32, i32* @SWAP_LFE_CENTER, align 4
  %104 = call i32 @had_write_register(%struct.snd_intelhad* %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %81, %66
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.snd_intelhad* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i64 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i64 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @had_do_reset(%struct.snd_intelhad*) #1

declare dso_local i32 @had_prog_n(i32, i32*, %struct.snd_intelhad*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @had_prog_cts(i32, i32, i32, i32, %struct.snd_intelhad*) #1

declare dso_local i32 @had_prog_dip(%struct.snd_pcm_substream*, %struct.snd_intelhad*) #1

declare dso_local i32 @had_init_audio_ctrl(%struct.snd_pcm_substream*, %struct.snd_intelhad*) #1

declare dso_local i32 @had_init_ringbuf(%struct.snd_pcm_substream*, %struct.snd_intelhad*) #1

declare dso_local i32 @had_write_register(%struct.snd_intelhad*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
