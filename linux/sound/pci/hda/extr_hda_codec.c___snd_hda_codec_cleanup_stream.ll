; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c___snd_hda_codec_cleanup_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c___snd_hda_codec_cleanup_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i64 }
%struct.hda_cvt_setup = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"hda_codec_cleanup_stream: NID=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__snd_hda_codec_cleanup_stream(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_cvt_setup*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %37

11:                                               ; preds = %3
  %12 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 1, i32* %6, align 4
  br label %17

17:                                               ; preds = %16, %11
  %18 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @codec_dbg(%struct.hda_codec* %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.hda_cvt_setup* @get_hda_cvt_setup(%struct.hda_codec* %21, i32 %22)
  store %struct.hda_cvt_setup* %23, %struct.hda_cvt_setup** %7, align 8
  %24 = load %struct.hda_cvt_setup*, %struct.hda_cvt_setup** %7, align 8
  %25 = icmp ne %struct.hda_cvt_setup* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %31 = load %struct.hda_cvt_setup*, %struct.hda_cvt_setup** %7, align 8
  %32 = call i32 @really_cleanup_stream(%struct.hda_codec* %30, %struct.hda_cvt_setup* %31)
  br label %36

33:                                               ; preds = %26
  %34 = load %struct.hda_cvt_setup*, %struct.hda_cvt_setup** %7, align 8
  %35 = getelementptr inbounds %struct.hda_cvt_setup, %struct.hda_cvt_setup* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %29
  br label %37

37:                                               ; preds = %10, %36, %17
  ret void
}

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i32) #1

declare dso_local %struct.hda_cvt_setup* @get_hda_cvt_setup(%struct.hda_codec*, i32) #1

declare dso_local i32 @really_cleanup_stream(%struct.hda_codec*, %struct.hda_cvt_setup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
