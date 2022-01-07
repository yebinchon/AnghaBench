; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_eld.c_snd_hdmi_show_eld.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_eld.c_snd_hdmi_show_eld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.parsed_hdmi_eld = type { i64, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [49 x i8] c"HDMI: detected monitor %s at connection type %s\0A\00", align 1
@eld_connection_type_names = common dso_local global i32* null, align 8
@SND_PRINT_CHANNEL_ALLOCATION_ADVISED_BUFSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"HDMI: available speakers:%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hdmi_show_eld(%struct.hda_codec* %0, %struct.parsed_hdmi_eld* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.parsed_hdmi_eld*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.parsed_hdmi_eld* %1, %struct.parsed_hdmi_eld** %4, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %4, align 8
  %10 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = load i32*, i32** @eld_connection_type_names, align 8
  %15 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %4, align 8
  %16 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (%struct.hda_codec*, i8*, i8*, ...) @codec_dbg(%struct.hda_codec* %8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %19)
  %21 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %4, align 8
  %22 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  %26 = load i32, i32* @SND_PRINT_CHANNEL_ALLOCATION_ADVISED_BUFSIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %6, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %7, align 8
  %30 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %4, align 8
  %31 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %27 to i32
  %34 = call i32 @snd_hdac_print_channel_allocation(i64 %32, i8* %29, i32 %33)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %36 = call i32 (%struct.hda_codec*, i8*, i8*, ...) @codec_dbg(%struct.hda_codec* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %37 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %37)
  br label %38

38:                                               ; preds = %25, %2
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %54, %38
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %4, align 8
  %42 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %47 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %4, align 8
  %48 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = call i32 @hdmi_show_short_audio_desc(%struct.hda_codec* %46, i64 %52)
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %39

57:                                               ; preds = %39
  ret void
}

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snd_hdac_print_channel_allocation(i64, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @hdmi_show_short_audio_desc(%struct.hda_codec*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
