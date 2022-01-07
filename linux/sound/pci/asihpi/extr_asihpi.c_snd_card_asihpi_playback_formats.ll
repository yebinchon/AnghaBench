; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_playback_formats.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_playback_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card_asihpi = type { i32, i32 }
%struct.hpi_format = type { i32 }

@HPI_SOURCENODE_CLOCK_SOURCE = common dso_local global i32 0, align 4
@HPI_CONTROL_SAMPLECLOCK = common dso_local global i32 0, align 4
@HPI_FORMAT_PCM8_UNSIGNED = common dso_local global i64 0, align 8
@HPI_FORMAT_PCM24_SIGNED = common dso_local global i64 0, align 8
@hpi_to_alsa_formats = common dso_local global i64* null, align 8
@INVALID_FORMAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card_asihpi*, i32)* @snd_card_asihpi_playback_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_card_asihpi_playback_formats(%struct.snd_card_asihpi* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_card_asihpi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hpi_format, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_card_asihpi* %0, %struct.snd_card_asihpi** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 48000, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %12 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HPI_SOURCENODE_CLOCK_SOURCE, align 4
  %15 = load i32, i32* @HPI_CONTROL_SAMPLECLOCK, align 4
  %16 = call i64 @hpi_mixer_get_control(i32 %13, i32 %14, i32 0, i32 0, i32 0, i32 %15, i32* %8)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @hpi_sample_clock_get_sample_rate(i32 %20, i32* %9)
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i64, i64* @HPI_FORMAT_PCM8_UNSIGNED, align 8
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %59, %22
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @HPI_FORMAT_PCM24_SIGNED, align 8
  %27 = icmp ule i64 %25, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %24
  %29 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %30 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @hpi_format_create(%struct.hpi_format* %5, i32 %31, i64 %32, i32 %33, i32 128000, i32 0)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @hpi_outstream_query_format(i32 %38, %struct.hpi_format* %5)
  store i64 %39, i64* %7, align 8
  br label %40

40:                                               ; preds = %37, %28
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %40
  %44 = load i64*, i64** @hpi_to_alsa_formats, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @INVALID_FORMAT, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load i64*, i64** @hpi_to_alsa_formats, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @pcm_format_to_bits(i64 %54)
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %50, %43, %40
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %6, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %6, align 8
  br label %24

62:                                               ; preds = %24
  %63 = load i32, i32* %10, align 4
  ret i32 %63
}

declare dso_local i64 @hpi_mixer_get_control(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @hpi_sample_clock_get_sample_rate(i32, i32*) #1

declare dso_local i64 @hpi_format_create(%struct.hpi_format*, i32, i64, i32, i32, i32) #1

declare dso_local i64 @hpi_outstream_query_format(i32, %struct.hpi_format*) #1

declare dso_local i32 @pcm_format_to_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
