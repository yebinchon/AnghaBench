; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_really_cleanup_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_really_cleanup_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.hda_codec.0*, i32, i32)* }
%struct.hda_codec.0 = type opaque
%struct.hda_cvt_setup = type { i32, i64, i64, i64 }

@AC_VERB_SET_CHANNEL_STREAMID = common dso_local global i32 0, align 4
@AC_VERB_SET_STREAM_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_cvt_setup*)* @really_cleanup_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @really_cleanup_stream(%struct.hda_codec* %0, %struct.hda_cvt_setup* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_cvt_setup*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.hda_cvt_setup* %1, %struct.hda_cvt_setup** %4, align 8
  %6 = load %struct.hda_cvt_setup*, %struct.hda_cvt_setup** %4, align 8
  %7 = getelementptr inbounds %struct.hda_cvt_setup, %struct.hda_cvt_setup* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.hda_cvt_setup*, %struct.hda_cvt_setup** %4, align 8
  %10 = getelementptr inbounds %struct.hda_cvt_setup, %struct.hda_cvt_setup* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.hda_cvt_setup*, %struct.hda_cvt_setup** %4, align 8
  %15 = getelementptr inbounds %struct.hda_cvt_setup, %struct.hda_cvt_setup* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13, %2
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @AC_VERB_SET_CHANNEL_STREAMID, align 4
  %22 = call i32 @snd_hda_codec_write(%struct.hda_codec* %19, i32 %20, i32 0, i32 %21, i32 0)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.hda_cvt_setup*, %struct.hda_cvt_setup** %4, align 8
  %25 = getelementptr inbounds %struct.hda_cvt_setup, %struct.hda_cvt_setup* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @AC_VERB_SET_STREAM_FORMAT, align 4
  %32 = call i32 @snd_hda_codec_write(%struct.hda_codec* %29, i32 %30, i32 0, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.hda_cvt_setup*, %struct.hda_cvt_setup** %4, align 8
  %35 = call i32 @memset(%struct.hda_cvt_setup* %34, i32 0, i32 32)
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.hda_cvt_setup*, %struct.hda_cvt_setup** %4, align 8
  %38 = getelementptr inbounds %struct.hda_cvt_setup, %struct.hda_cvt_setup* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %40 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.hda_codec.0*, i32, i32)*, i32 (%struct.hda_codec.0*, i32, i32)** %41, align 8
  %43 = icmp ne i32 (%struct.hda_codec.0*, i32, i32)* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %33
  %45 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %46 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.hda_codec.0*, i32, i32)*, i32 (%struct.hda_codec.0*, i32, i32)** %47, align 8
  %49 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %50 = bitcast %struct.hda_codec* %49 to %struct.hda_codec.0*
  %51 = load i32, i32* %5, align 4
  %52 = call i32 %48(%struct.hda_codec.0* %50, i32 %51, i32 0)
  br label %53

53:                                               ; preds = %44, %33
  ret void
}

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.hda_cvt_setup*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
