; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_add_sw_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_add_sw_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.nid_path = type { i32* }

@HDA_CTL_WIDGET_MUTE = common dso_local global i32 0, align 4
@NID_PATH_MUTE_CTL = common dso_local global i64 0, align 8
@HDA_INPUT = common dso_local global i64 0, align 8
@HDA_CTL_BIND_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i8*, i32, i32, %struct.nid_path*)* @add_sw_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_sw_ctl(%struct.hda_codec* %0, i8* %1, i32 %2, i32 %3, %struct.nid_path* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nid_path*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nid_path* %4, %struct.nid_path** %11, align 8
  %16 = load i32, i32* @HDA_CTL_WIDGET_MUTE, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  %18 = icmp ne %struct.nid_path* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %62

20:                                               ; preds = %5
  %21 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  %22 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @NID_PATH_MUTE_CTL, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %62

30:                                               ; preds = %20
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @amp_val_replace_channels(i32 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i64 @get_amp_direction_(i32 %34)
  %36 = load i64, i64* @HDA_INPUT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %30
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @get_amp_nid_(i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @snd_hda_get_num_conns(%struct.hda_codec* %41, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load i32, i32* @HDA_CTL_BIND_MUTE, align 4
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %15, align 4
  %49 = shl i32 %48, 19
  %50 = load i32, i32* %12, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %46, %38
  br label %53

53:                                               ; preds = %52, %30
  %54 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %55 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @__add_pb_sw_ctrl(i32 %56, i32 %57, i8* %58, i32 %59, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %53, %29, %19
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @amp_val_replace_channels(i32, i32) #1

declare dso_local i64 @get_amp_direction_(i32) #1

declare dso_local i32 @get_amp_nid_(i32) #1

declare dso_local i32 @snd_hda_get_num_conns(%struct.hda_codec*, i32) #1

declare dso_local i32 @__add_pb_sw_ctrl(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
