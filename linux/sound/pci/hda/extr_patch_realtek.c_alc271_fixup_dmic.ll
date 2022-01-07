; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc271_fixup_dmic.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc271_fixup_dmic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_verb = type { i32, i32, i32 }
%struct.hda_codec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hda_fixup = type { i32 }

@alc271_fixup_dmic.verbs = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i32 32, i32 129, i32 13 }, %struct.hda_verb { i32 32, i32 128, i32 16384 }, %struct.hda_verb zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"ALC271X\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ALC269VB\00", align 1
@AC_JACK_PORT_FIXED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @alc271_fixup_dmic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc271_fixup_dmic(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @strcmp(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %16 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @strcmp(i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %32

22:                                               ; preds = %14, %3
  %23 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %24 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %23, i32 18)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @get_defcfg_connect(i32 %25)
  %27 = load i64, i64* @AC_JACK_PORT_FIXED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %31 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %30, %struct.hda_verb* getelementptr inbounds ([3 x %struct.hda_verb], [3 x %struct.hda_verb]* @alc271_fixup_dmic.verbs, i64 0, i64 0))
  br label %32

32:                                               ; preds = %21, %29, %22
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i32) #1

declare dso_local i64 @get_defcfg_connect(i32) #1

declare dso_local i32 @snd_hda_sequence_write(%struct.hda_codec*, %struct.hda_verb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
