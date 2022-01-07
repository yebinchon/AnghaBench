; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_intrinsic_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_intrinsic_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_jack_tbl = type { i32, i32 }

@AC_UNSOL_RES_TAG_SHIFT = common dso_local global i32 0, align 4
@AC_UNSOL_RES_DE = common dso_local global i32 0, align 4
@AC_UNSOL_RES_DE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [92 x i8] c"HDMI hot plug event: Codec=%d Pin=%d Device=%d Inactive=%d Presence_Detect=%d ELD_Valid=%d\0A\00", align 1
@AC_UNSOL_RES_IA = common dso_local global i32 0, align 4
@AC_UNSOL_RES_PD = common dso_local global i32 0, align 4
@AC_UNSOL_RES_ELDV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32)* @hdmi_intrinsic_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_intrinsic_event(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_jack_tbl*, align 8
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @AC_UNSOL_RES_TAG_SHIFT, align 4
  %10 = lshr i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @AC_UNSOL_RES_DE, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @AC_UNSOL_RES_DE_SHIFT, align 4
  %15 = lshr i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.hda_jack_tbl* @snd_hda_jack_tbl_get_from_tag(%struct.hda_codec* %16, i32 %17)
  store %struct.hda_jack_tbl* %18, %struct.hda_jack_tbl** %6, align 8
  %19 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  %20 = icmp ne %struct.hda_jack_tbl* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %60

22:                                               ; preds = %2
  %23 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  %24 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %26 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %27 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  %30 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @AC_UNSOL_RES_IA, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @AC_UNSOL_RES_PD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @AC_UNSOL_RES_ELDV, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @codec_dbg(%struct.hda_codec* %25, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i32 %32, i32 %39, i32 %46, i32 %53)
  %55 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %56 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %6, align 8
  %57 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @check_presence_and_report(%struct.hda_codec* %55, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %22, %21
  ret void
}

declare dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_get_from_tag(%struct.hda_codec*, i32) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @check_presence_and_report(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
