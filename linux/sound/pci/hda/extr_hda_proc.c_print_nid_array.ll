; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_nid_array.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_nid_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }
%struct.hda_codec = type { i32 }
%struct.snd_array = type { i32, %struct.hda_nid_item* }
%struct.hda_nid_item = type { i64, i32, i64, %struct.snd_kcontrol* }
%struct.snd_kcontrol = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [43 x i8] c"  Control: name=\22%s\22, index=%i, device=%i\0A\00", align 1
@HDA_NID_ITEM_AMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"    ControlAmp: chs=%lu, dir=%s, idx=%lu, ofs=%lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Out\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"In\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, %struct.hda_codec*, i64, %struct.snd_array*)* @print_nid_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_nid_array(%struct.snd_info_buffer* %0, %struct.hda_codec* %1, i64 %2, %struct.snd_array* %3) #0 {
  %5 = alloca %struct.snd_info_buffer*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.snd_array*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hda_nid_item*, align 8
  %11 = alloca %struct.hda_nid_item*, align 8
  %12 = alloca %struct.snd_kcontrol*, align 8
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %5, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.snd_array* %3, %struct.snd_array** %8, align 8
  %13 = load %struct.snd_array*, %struct.snd_array** %8, align 8
  %14 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %13, i32 0, i32 1
  %15 = load %struct.hda_nid_item*, %struct.hda_nid_item** %14, align 8
  store %struct.hda_nid_item* %15, %struct.hda_nid_item** %10, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %77, %4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.snd_array*, %struct.snd_array** %8, align 8
  %19 = getelementptr inbounds %struct.snd_array, %struct.snd_array* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %80

22:                                               ; preds = %16
  %23 = load %struct.hda_nid_item*, %struct.hda_nid_item** %10, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.hda_nid_item, %struct.hda_nid_item* %23, i64 %25
  store %struct.hda_nid_item* %26, %struct.hda_nid_item** %11, align 8
  %27 = load %struct.hda_nid_item*, %struct.hda_nid_item** %11, align 8
  %28 = getelementptr inbounds %struct.hda_nid_item, %struct.hda_nid_item* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %76

32:                                               ; preds = %22
  %33 = load %struct.hda_nid_item*, %struct.hda_nid_item** %11, align 8
  %34 = getelementptr inbounds %struct.hda_nid_item, %struct.hda_nid_item* %33, i32 0, i32 3
  %35 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %34, align 8
  store %struct.snd_kcontrol* %35, %struct.snd_kcontrol** %12, align 8
  %36 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %37 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %38 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %42 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.hda_nid_item*, %struct.hda_nid_item** %11, align 8
  %46 = getelementptr inbounds %struct.hda_nid_item, %struct.hda_nid_item* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %51 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (%struct.snd_info_buffer*, i8*, i32, i8*, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %40, i8* %49, i32 %53)
  %55 = load %struct.hda_nid_item*, %struct.hda_nid_item** %11, align 8
  %56 = getelementptr inbounds %struct.hda_nid_item, %struct.hda_nid_item* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @HDA_NID_ITEM_AMP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %32
  %62 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %5, align 8
  %63 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %64 = call i32 @get_amp_channels(%struct.snd_kcontrol* %63)
  %65 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %66 = call i64 @get_amp_direction(%struct.snd_kcontrol* %65)
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %70 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %71 = call i32 @get_amp_index(%struct.snd_kcontrol* %70)
  %72 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %73 = call i32 @get_amp_offset(%struct.snd_kcontrol* %72)
  %74 = call i32 (%struct.snd_info_buffer*, i8*, i32, i8*, i32, ...) @snd_iprintf(%struct.snd_info_buffer* %62, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %64, i8* %69, i32 %71, i32 %73)
  br label %75

75:                                               ; preds = %61, %32
  br label %76

76:                                               ; preds = %75, %22
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %16

80:                                               ; preds = %16
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @get_amp_channels(%struct.snd_kcontrol*) #1

declare dso_local i64 @get_amp_direction(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amp_index(%struct.snd_kcontrol*) #1

declare dso_local i32 @get_amp_offset(%struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
