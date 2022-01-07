; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_mute_all_mixer_nid.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_mute_all_mixer_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@HDA_INPUT = common dso_local global i32 0, align 4
@HDA_AMP_MUTE = common dso_local global i32 0, align 4
@HDA_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32)* @mute_all_mixer_nid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mute_all_mixer_nid(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @snd_hda_get_conn_list(%struct.hda_codec* %9, i32 %10, i32** %7)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @HDA_INPUT, align 4
  %15 = call i32 @nid_has_mute(%struct.hda_codec* %12, i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %52, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @HDA_INPUT, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @HDA_AMP_MUTE, align 4
  %29 = call i32 @update_amp(%struct.hda_codec* %24, i32 %25, i32 %26, i32 %27, i32 255, i32 %28)
  br label %51

30:                                               ; preds = %20
  %31 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HDA_OUTPUT, align 4
  %38 = call i64 @nid_has_volume(%struct.hda_codec* %31, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %30
  %41 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HDA_OUTPUT, align 4
  %48 = load i32, i32* @HDA_AMP_MUTE, align 4
  %49 = call i32 @update_amp(%struct.hda_codec* %41, i32 %46, i32 %47, i32 0, i32 255, i32 %48)
  br label %50

50:                                               ; preds = %40, %30
  br label %51

51:                                               ; preds = %50, %23
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %16

55:                                               ; preds = %16
  ret void
}

declare dso_local i32 @snd_hda_get_conn_list(%struct.hda_codec*, i32, i32**) #1

declare dso_local i32 @nid_has_mute(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @update_amp(%struct.hda_codec*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @nid_has_volume(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
