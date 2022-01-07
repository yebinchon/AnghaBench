; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/nm256/extr_nm256.c_snd_nm256_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/nm256/extr_nm256.c_snd_nm256_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm256 = type { i32 }
%struct.nm256_stream = type { i64 }
%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }

@NM_RATE_MASK = common dso_local global i32 0, align 4
@NM_RATE_BITS_16 = common dso_local global i8 0, align 1
@NM_RATE_STEREO = common dso_local global i8 0, align 1
@samplerates = common dso_local global i32* null, align 8
@NM_PLAYBACK_REG_OFFSET = common dso_local global i64 0, align 8
@NM_RATE_REG_OFFSET = common dso_local global i64 0, align 8
@NM_RECORD_REG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nm256*, %struct.nm256_stream*, %struct.snd_pcm_substream*)* @snd_nm256_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_nm256_set_format(%struct.nm256* %0, %struct.nm256_stream* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca %struct.nm256*, align 8
  %5 = alloca %struct.nm256_stream*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.nm256* %0, %struct.nm256** %4, align 8
  store %struct.nm256_stream* %1, %struct.nm256_stream** %5, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %6, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %7, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @snd_nm256_fixed_rate(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = shl i32 %17, 4
  %19 = load i32, i32* @NM_RATE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %9, align 1
  %22 = load %struct.nm256_stream*, %struct.nm256_stream** %5, align 8
  %23 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @snd_pcm_format_width(i32 %26)
  %28 = icmp eq i32 %27, 16
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = load i8, i8* @NM_RATE_BITS_16, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* %9, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %33, %31
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %9, align 1
  %36 = load %struct.nm256_stream*, %struct.nm256_stream** %5, align 8
  %37 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %29, %3
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i8, i8* @NM_RATE_STEREO, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* %9, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %49, %47
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %9, align 1
  %52 = load %struct.nm256_stream*, %struct.nm256_stream** %5, align 8
  %53 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %45, %40
  %57 = load i32*, i32** @samplerates, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %87 [
    i32 128, label %67
    i32 129, label %77
  ]

67:                                               ; preds = %56
  %68 = load %struct.nm256*, %struct.nm256** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @snd_nm256_load_coefficient(%struct.nm256* %68, i32 0, i32 %69)
  %71 = load %struct.nm256*, %struct.nm256** %4, align 8
  %72 = load i64, i64* @NM_PLAYBACK_REG_OFFSET, align 8
  %73 = load i64, i64* @NM_RATE_REG_OFFSET, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i8, i8* %9, align 1
  %76 = call i32 @snd_nm256_writeb(%struct.nm256* %71, i64 %74, i8 zeroext %75)
  br label %87

77:                                               ; preds = %56
  %78 = load %struct.nm256*, %struct.nm256** %4, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @snd_nm256_load_coefficient(%struct.nm256* %78, i32 1, i32 %79)
  %81 = load %struct.nm256*, %struct.nm256** %4, align 8
  %82 = load i64, i64* @NM_RECORD_REG_OFFSET, align 8
  %83 = load i64, i64* @NM_RATE_REG_OFFSET, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i8, i8* %9, align 1
  %86 = call i32 @snd_nm256_writeb(%struct.nm256* %81, i64 %84, i8 zeroext %85)
  br label %87

87:                                               ; preds = %56, %77, %67
  ret void
}

declare dso_local i32 @snd_nm256_fixed_rate(i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @snd_nm256_load_coefficient(%struct.nm256*, i32, i32) #1

declare dso_local i32 @snd_nm256_writeb(%struct.nm256*, i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
