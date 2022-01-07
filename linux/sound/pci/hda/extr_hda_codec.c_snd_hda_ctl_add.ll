; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_ctl_add.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_ctl_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32 }
%struct.snd_kcontrol = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hda_nid_item = type { i32, i16, %struct.snd_kcontrol* }

@HDA_SUBDEV_AMP_FLAG = common dso_local global i32 0, align 4
@HDA_NID_ITEM_AMP = common dso_local global i16 0, align 2
@HDA_SUBDEV_NID_FLAG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_ctl_add(%struct.hda_codec* %0, i32 %1, %struct.snd_kcontrol* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_kcontrol*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca %struct.hda_nid_item*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_kcontrol* %2, %struct.snd_kcontrol** %7, align 8
  store i16 0, i16* %9, align 2
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %12 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @HDA_SUBDEV_AMP_FLAG, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = load i16, i16* @HDA_NID_ITEM_AMP, align 2
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* %9, align 2
  %22 = zext i16 %21 to i32
  %23 = or i32 %22, %20
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %9, align 2
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %29 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @get_amp_nid_(i32 %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %27, %18
  br label %33

33:                                               ; preds = %32, %3
  %34 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %35 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @HDA_SUBDEV_NID_FLAG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %46 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 65535
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %44, %41, %33
  %51 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %52 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HDA_SUBDEV_NID_FLAG, align 4
  %56 = load i32, i32* @HDA_SUBDEV_AMP_FLAG, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %62 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %50
  %65 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %66 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %69 = call i32 @snd_ctl_add(i32 %67, %struct.snd_kcontrol* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %93

74:                                               ; preds = %64
  %75 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %76 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %75, i32 0, i32 0
  %77 = call %struct.hda_nid_item* @snd_array_new(i32* %76)
  store %struct.hda_nid_item* %77, %struct.hda_nid_item** %10, align 8
  %78 = load %struct.hda_nid_item*, %struct.hda_nid_item** %10, align 8
  %79 = icmp ne %struct.hda_nid_item* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %93

83:                                               ; preds = %74
  %84 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %85 = load %struct.hda_nid_item*, %struct.hda_nid_item** %10, align 8
  %86 = getelementptr inbounds %struct.hda_nid_item, %struct.hda_nid_item* %85, i32 0, i32 2
  store %struct.snd_kcontrol* %84, %struct.snd_kcontrol** %86, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.hda_nid_item*, %struct.hda_nid_item** %10, align 8
  %89 = getelementptr inbounds %struct.hda_nid_item, %struct.hda_nid_item* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i16, i16* %9, align 2
  %91 = load %struct.hda_nid_item*, %struct.hda_nid_item** %10, align 8
  %92 = getelementptr inbounds %struct.hda_nid_item, %struct.hda_nid_item* %91, i32 0, i32 1
  store i16 %90, i16* %92, align 4
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %83, %80, %72
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @get_amp_nid_(i32) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

declare dso_local %struct.hda_nid_item* @snd_array_new(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
