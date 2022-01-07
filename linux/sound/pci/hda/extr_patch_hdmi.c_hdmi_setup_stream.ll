; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_setup_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_setup_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.hda_codec.0*, i32, i64)* }
%struct.hda_codec.0 = type opaque

@.str = private unnamed_addr constant [41 x i8] c"hdmi_setup_stream: HBR is not supported\0A\00", align 1
@AC_VERB_GET_DIGI_CONVERT_1 = common dso_local global i32 0, align 4
@AC_DIG3_ICT = common dso_local global i32 0, align 4
@AC_VERB_SET_DIGI_CONVERT_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32, i32, i32)* @hdmi_setup_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_setup_stream(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hdmi_spec*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %16 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %15, i32 0, i32 0
  %17 = load %struct.hdmi_spec*, %struct.hdmi_spec** %16, align 8
  store %struct.hdmi_spec* %17, %struct.hdmi_spec** %12, align 8
  %18 = load %struct.hdmi_spec*, %struct.hdmi_spec** %12, align 8
  %19 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.hda_codec.0*, i32, i64)*, i32 (%struct.hda_codec.0*, i32, i64)** %20, align 8
  %22 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %23 = bitcast %struct.hda_codec* %22 to %struct.hda_codec.0*
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @is_hbr_format(i32 %25)
  %27 = call i32 %21(%struct.hda_codec.0* %23, i32 %24, i64 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %5
  %31 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %32 = call i32 @codec_dbg(%struct.hda_codec* %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %6, align 4
  br label %66

34:                                               ; preds = %5
  %35 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %36 = call i64 @is_haswell_plus(%struct.hda_codec* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @AC_VERB_GET_DIGI_CONVERT_1, align 4
  %42 = call i32 @snd_hda_codec_read(%struct.hda_codec* %39, i32 %40, i32 0, i32 %41, i32 0)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = lshr i32 %43, 16
  %45 = load i32, i32* @AC_DIG3_ICT, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i64 @is_hbr_format(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load i32, i32* %13, align 4
  %53 = or i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %51, %38
  %55 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @AC_VERB_SET_DIGI_CONVERT_3, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @snd_hda_codec_write(%struct.hda_codec* %55, i32 %56, i32 0, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %34
  %61 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %61, i32 %62, i32 %63, i32 0, i32 %64)
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %60, %30
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i64 @is_hbr_format(i32) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*) #1

declare dso_local i64 @is_haswell_plus(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_setup_stream(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
