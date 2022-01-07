; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_add_nid.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_add_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.snd_kcontrol = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hda_nid_item = type { i32, i64, %struct.snd_kcontrol* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"no NID for mapping control %s:%d:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_add_nid(%struct.hda_codec* %0, %struct.snd_kcontrol* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.snd_kcontrol*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.hda_nid_item*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %4
  %14 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = call %struct.hda_nid_item* @snd_array_new(i32* %15)
  store %struct.hda_nid_item* %16, %struct.hda_nid_item** %10, align 8
  %17 = load %struct.hda_nid_item*, %struct.hda_nid_item** %10, align 8
  %18 = icmp ne %struct.hda_nid_item* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %46

22:                                               ; preds = %13
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %24 = load %struct.hda_nid_item*, %struct.hda_nid_item** %10, align 8
  %25 = getelementptr inbounds %struct.hda_nid_item, %struct.hda_nid_item* %24, i32 0, i32 2
  store %struct.snd_kcontrol* %23, %struct.snd_kcontrol** %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.hda_nid_item*, %struct.hda_nid_item** %10, align 8
  %28 = getelementptr inbounds %struct.hda_nid_item, %struct.hda_nid_item* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.hda_nid_item*, %struct.hda_nid_item** %10, align 8
  %31 = getelementptr inbounds %struct.hda_nid_item, %struct.hda_nid_item* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  store i32 0, i32* %5, align 4
  br label %46

32:                                               ; preds = %4
  %33 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %34 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %35 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %39 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @codec_err(%struct.hda_codec* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41, i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %32, %22, %19
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.hda_nid_item* @snd_array_new(i32*) #1

declare dso_local i32 @codec_err(%struct.hda_codec*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
