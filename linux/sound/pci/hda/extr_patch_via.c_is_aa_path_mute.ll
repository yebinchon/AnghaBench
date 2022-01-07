; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_via.c_is_aa_path_mute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_via.c_is_aa_path_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.via_spec* }
%struct.via_spec = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.hda_amp_list* }
%struct.hda_amp_list = type { i32, i32, i64 }

@HDA_AMP_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @is_aa_path_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_aa_path_mute(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.via_spec*, align 8
  %5 = alloca %struct.hda_amp_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.via_spec*, %struct.via_spec** %9, align 8
  store %struct.via_spec* %10, %struct.via_spec** %4, align 8
  %11 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %12 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.hda_amp_list*, %struct.hda_amp_list** %14, align 8
  store %struct.hda_amp_list* %15, %struct.hda_amp_list** %5, align 8
  %16 = load %struct.hda_amp_list*, %struct.hda_amp_list** %5, align 8
  %17 = icmp ne %struct.hda_amp_list* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %59

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %55, %19
  %21 = load %struct.hda_amp_list*, %struct.hda_amp_list** %5, align 8
  %22 = getelementptr inbounds %struct.hda_amp_list, %struct.hda_amp_list* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %51, %25
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %54

29:                                               ; preds = %26
  %30 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %31 = load %struct.hda_amp_list*, %struct.hda_amp_list** %5, align 8
  %32 = getelementptr inbounds %struct.hda_amp_list, %struct.hda_amp_list* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.hda_amp_list*, %struct.hda_amp_list** %5, align 8
  %36 = getelementptr inbounds %struct.hda_amp_list, %struct.hda_amp_list* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hda_amp_list*, %struct.hda_amp_list** %5, align 8
  %39 = getelementptr inbounds %struct.hda_amp_list, %struct.hda_amp_list* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @snd_hda_codec_amp_read(%struct.hda_codec* %30, i64 %33, i32 %34, i32 %37, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @HDA_AMP_MUTE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %29
  %47 = load i32, i32* %7, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %59

50:                                               ; preds = %46, %29
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %26

54:                                               ; preds = %26
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.hda_amp_list*, %struct.hda_amp_list** %5, align 8
  %57 = getelementptr inbounds %struct.hda_amp_list, %struct.hda_amp_list* %56, i32 1
  store %struct.hda_amp_list* %57, %struct.hda_amp_list** %5, align 8
  br label %20

58:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %49, %18
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @snd_hda_codec_amp_read(%struct.hda_codec*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
