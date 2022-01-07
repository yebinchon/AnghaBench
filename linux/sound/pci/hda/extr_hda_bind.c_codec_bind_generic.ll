; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_bind.c_codec_bind_generic.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_bind.c_codec_bind_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@HDA_CODEC_ID_GENERIC_HDMI = common dso_local global i64 0, align 8
@HDA_CODEC_ID_GENERIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @codec_bind_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codec_bind_generic(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %39

11:                                               ; preds = %1
  %12 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %13 = call i64 @is_likely_hdmi_codec(%struct.hda_codec* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load i64, i64* @HDA_CODEC_ID_GENERIC_HDMI, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = call i32 @request_codec_module(%struct.hda_codec* %19)
  %21 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %22 = call i64 @codec_probed(%struct.hda_codec* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %39

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %11
  %27 = load i64, i64* @HDA_CODEC_ID_GENERIC, align 8
  %28 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %29 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %31 = call i32 @request_codec_module(%struct.hda_codec* %30)
  %32 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %33 = call i64 @codec_probed(%struct.hda_codec* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %35, %24, %8
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @is_likely_hdmi_codec(%struct.hda_codec*) #1

declare dso_local i32 @request_codec_module(%struct.hda_codec*) #1

declare dso_local i64 @codec_probed(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
