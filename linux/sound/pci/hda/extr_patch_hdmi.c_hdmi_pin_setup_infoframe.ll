; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_pin_setup_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_pin_setup_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%union.audio_infoframe = type { %struct.dp_audio_infoframe }
%struct.dp_audio_infoframe = type { i32, i32, i32, i32, i32 }
%struct.hdmi_audio_infoframe = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"HDMI: unknown connection type at pin %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"hdmi_pin_setup_infoframe: pin=%d channels=%d ca=0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i32, i32, i32)* @hdmi_pin_setup_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_pin_setup_infoframe(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.audio_infoframe, align 4
  %12 = alloca %struct.hdmi_audio_infoframe*, align 8
  %13 = alloca %struct.dp_audio_infoframe*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = call i32 @memset(%union.audio_infoframe* %11, i32 0, i32 20)
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %5
  %18 = bitcast %union.audio_infoframe* %11 to %struct.hdmi_audio_infoframe*
  store %struct.hdmi_audio_infoframe* %18, %struct.hdmi_audio_infoframe** %12, align 8
  %19 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %12, align 8
  %20 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %19, i32 0, i32 0
  store i32 132, i32* %20, align 4
  %21 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %12, align 8
  %22 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %12, align 8
  %24 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %23, i32 0, i32 2
  store i32 10, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %12, align 8
  %28 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %12, align 8
  %31 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %12, align 8
  %33 = call i32 @hdmi_checksum_audio_infoframe(%struct.hdmi_audio_infoframe* %32)
  br label %57

34:                                               ; preds = %5
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = bitcast %union.audio_infoframe* %11 to %struct.dp_audio_infoframe*
  store %struct.dp_audio_infoframe* %38, %struct.dp_audio_infoframe** %13, align 8
  %39 = load %struct.dp_audio_infoframe*, %struct.dp_audio_infoframe** %13, align 8
  %40 = getelementptr inbounds %struct.dp_audio_infoframe, %struct.dp_audio_infoframe* %39, i32 0, i32 0
  store i32 132, i32* %40, align 4
  %41 = load %struct.dp_audio_infoframe*, %struct.dp_audio_infoframe** %13, align 8
  %42 = getelementptr inbounds %struct.dp_audio_infoframe, %struct.dp_audio_infoframe* %41, i32 0, i32 1
  store i32 27, i32* %42, align 4
  %43 = load %struct.dp_audio_infoframe*, %struct.dp_audio_infoframe** %13, align 8
  %44 = getelementptr inbounds %struct.dp_audio_infoframe, %struct.dp_audio_infoframe* %43, i32 0, i32 2
  store i32 68, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load %struct.dp_audio_infoframe*, %struct.dp_audio_infoframe** %13, align 8
  %48 = getelementptr inbounds %struct.dp_audio_infoframe, %struct.dp_audio_infoframe* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.dp_audio_infoframe*, %struct.dp_audio_infoframe** %13, align 8
  %51 = getelementptr inbounds %struct.dp_audio_infoframe, %struct.dp_audio_infoframe* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  br label %56

52:                                               ; preds = %34
  %53 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 (%struct.hda_codec*, i8*, i32, ...) @codec_dbg(%struct.hda_codec* %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %81

56:                                               ; preds = %37
  br label %57

57:                                               ; preds = %56, %17
  %58 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = bitcast %union.audio_infoframe* %11 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @hdmi_infoframe_uptodate(%struct.hda_codec* %58, i32 %59, i32 %61, i32 20)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %81, label %64

64:                                               ; preds = %57
  %65 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 (%struct.hda_codec*, i8*, i32, ...) @codec_dbg(%struct.hda_codec* %65, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67, i32 %68)
  %70 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @hdmi_stop_infoframe_trans(%struct.hda_codec* %70, i32 %71)
  %73 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = bitcast %union.audio_infoframe* %11 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @hdmi_fill_audio_infoframe(%struct.hda_codec* %73, i32 %74, i32 %76, i32 20)
  %78 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @hdmi_start_infoframe_trans(%struct.hda_codec* %78, i32 %79)
  br label %81

81:                                               ; preds = %52, %64, %57
  ret void
}

declare dso_local i32 @memset(%union.audio_infoframe*, i32, i32) #1

declare dso_local i32 @hdmi_checksum_audio_infoframe(%struct.hdmi_audio_infoframe*) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i32, ...) #1

declare dso_local i32 @hdmi_infoframe_uptodate(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @hdmi_stop_infoframe_trans(%struct.hda_codec*, i32) #1

declare dso_local i32 @hdmi_fill_audio_infoframe(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @hdmi_start_infoframe_trans(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
