; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_via.c_patch_vt1708S.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_via.c_patch_vt1708S.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.via_spec = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@VT1708BCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"VT1708BCE\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"VT1705\00", align 1
@vt1708S_init_verbs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_vt1708S to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_vt1708S(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.via_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call %struct.via_spec* @via_new_spec(%struct.hda_codec* %6)
  store %struct.via_spec* %7, %struct.via_spec** %4, align 8
  %8 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %9 = icmp eq %struct.via_spec* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %55

13:                                               ; preds = %1
  %14 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %15 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 22, i32* %16, align 4
  %17 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %18 = call i32 @override_mic_boost(%struct.hda_codec* %17, i32 26, i32 0, i32 3, i32 40)
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = call i32 @override_mic_boost(%struct.hda_codec* %19, i32 30, i32 0, i32 3, i32 40)
  %21 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %22 = call i64 @get_codec_type(%struct.hda_codec* %21)
  %23 = load i64, i64* @VT1708BCE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %27 = call i32 @snd_hda_codec_set_name(%struct.hda_codec* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %13
  %29 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %30 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 285623191
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %36 = call i32 @snd_hda_codec_set_name(%struct.hda_codec* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %28
  %38 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %39 = load i32, i32* @vt1708S_init_verbs, align 4
  %40 = call i32 @snd_hda_add_verbs(%struct.hda_codec* %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %51

44:                                               ; preds = %37
  %45 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %46 = call i32 @via_parse_auto_config(%struct.hda_codec* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %51

50:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %55

51:                                               ; preds = %49, %43
  %52 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %53 = call i32 @via_free(%struct.hda_codec* %52)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %50, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.via_spec* @via_new_spec(%struct.hda_codec*) #1

declare dso_local i32 @override_mic_boost(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i64 @get_codec_type(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_codec_set_name(%struct.hda_codec*, i8*) #1

declare dso_local i32 @snd_hda_add_verbs(%struct.hda_codec*, i32) #1

declare dso_local i32 @via_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @via_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
