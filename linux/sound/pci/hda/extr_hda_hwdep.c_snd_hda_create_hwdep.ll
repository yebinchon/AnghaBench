; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_hwdep.c_snd_hda_create_hwdep.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_hwdep.c_snd_hda_create_hwdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.snd_hwdep*, i32 }
%struct.snd_hwdep = type { i8*, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.hda_codec*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"HDA Codec %d\00", align 1
@SNDRV_HWDEP_IFACE_HDA = common dso_local global i32 0, align 4
@hda_hwdep_open = common dso_local global i32 0, align 4
@hda_hwdep_ioctl = common dso_local global i32 0, align 4
@snd_hda_dev_attr_groups = common dso_local global i32 0, align 4
@hda_hwdep_ioctl_compat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_create_hwdep(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca [16 x i8], align 16
  %5 = alloca %struct.snd_hwdep*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @sprintf(i8* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @snd_hwdep_new(i32 %14, i8* %15, i32 %18, %struct.snd_hwdep** %5)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %59

24:                                               ; preds = %1
  %25 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %26 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %27 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %26, i32 0, i32 1
  store %struct.snd_hwdep* %25, %struct.snd_hwdep** %27, align 8
  %28 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %29 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %32 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @SNDRV_HWDEP_IFACE_HDA, align 4
  %36 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %37 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %39 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %40 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %39, i32 0, i32 4
  store %struct.hda_codec* %38, %struct.hda_codec** %40, align 8
  %41 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %42 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %41, i32 0, i32 1
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* @hda_hwdep_open, align 4
  %44 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %45 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* @hda_hwdep_ioctl, align 4
  %48 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %49 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @snd_hda_dev_attr_groups, align 4
  %52 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %53 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %56 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %55, i32 0, i32 2
  %57 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %58 = call i32 @dev_set_drvdata(%struct.TYPE_4__* %56, %struct.hda_codec* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %24, %22
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @snd_hwdep_new(i32, i8*, i32, %struct.snd_hwdep**) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_4__*, %struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
