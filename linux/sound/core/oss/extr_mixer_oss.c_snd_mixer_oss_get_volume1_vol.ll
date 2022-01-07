; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_get_volume1_vol.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_get_volume1_vol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss_file = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.snd_mixer_oss_slot = type { i32* }
%struct.snd_ctl_elem_info = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32* }
%struct.snd_ctl_elem_value = type { i64, i32, %struct.TYPE_4__ }
%struct.snd_kcontrol = type { i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.1*)* }
%struct.snd_ctl_elem_value.0 = type opaque
%struct.snd_ctl_elem_value.1 = type opaque

@ID_UNKNOWN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_TYPE_BOOLEAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_slot*, i32, i32*, i32*)* @snd_mixer_oss_get_volume1_vol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mixer_oss_get_volume1_vol(%struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_slot* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.snd_mixer_oss_file*, align 8
  %7 = alloca %struct.snd_mixer_oss_slot*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.snd_ctl_elem_info*, align 8
  %12 = alloca %struct.snd_ctl_elem_value*, align 8
  %13 = alloca %struct.snd_kcontrol*, align 8
  %14 = alloca %struct.snd_card*, align 8
  store %struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_file** %6, align 8
  store %struct.snd_mixer_oss_slot* %1, %struct.snd_mixer_oss_slot** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %6, align 8
  %16 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %15, i32 0, i32 0
  %17 = load %struct.snd_card*, %struct.snd_card** %16, align 8
  store %struct.snd_card* %17, %struct.snd_card** %14, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @ID_UNKNOWN, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %149

22:                                               ; preds = %5
  %23 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %24 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %23, i32 0, i32 0
  %25 = call i32 @down_read(i32* %24)
  %26 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.snd_kcontrol* @snd_ctl_find_numid(%struct.snd_card* %26, i32 %27)
  store %struct.snd_kcontrol* %28, %struct.snd_kcontrol** %13, align 8
  %29 = icmp eq %struct.snd_kcontrol* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %32 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %31, i32 0, i32 0
  %33 = call i32 @up_read(i32* %32)
  br label %149

34:                                               ; preds = %22
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.snd_ctl_elem_value* @kzalloc(i32 40, i32 %35)
  %37 = bitcast %struct.snd_ctl_elem_value* %36 to %struct.snd_ctl_elem_info*
  store %struct.snd_ctl_elem_info* %37, %struct.snd_ctl_elem_info** %11, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.snd_ctl_elem_value* @kzalloc(i32 40, i32 %38)
  store %struct.snd_ctl_elem_value* %39, %struct.snd_ctl_elem_value** %12, align 8
  %40 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %41 = icmp eq %struct.snd_ctl_elem_info* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %12, align 8
  %44 = icmp eq %struct.snd_ctl_elem_value* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %34
  br label %140

46:                                               ; preds = %42
  %47 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %48 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %47, i32 0, i32 1
  %49 = load i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.1*)*, i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.1*)** %48, align 8
  %50 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %51 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %52 = bitcast %struct.snd_ctl_elem_info* %51 to %struct.snd_ctl_elem_value.1*
  %53 = call i64 %49(%struct.snd_kcontrol* %50, %struct.snd_ctl_elem_value.1* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %140

56:                                               ; preds = %46
  %57 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %58 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %57, i32 0, i32 0
  %59 = load i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)** %58, align 8
  %60 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %61 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %12, align 8
  %62 = bitcast %struct.snd_ctl_elem_value* %61 to %struct.snd_ctl_elem_value.0*
  %63 = call i64 %59(%struct.snd_kcontrol* %60, %struct.snd_ctl_elem_value.0* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %140

66:                                               ; preds = %56
  %67 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %68 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SNDRV_CTL_ELEM_TYPE_BOOLEAN, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %66
  %73 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %74 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %81 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %140

87:                                               ; preds = %79, %72, %66
  %88 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %12, align 8
  %89 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %96 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %101 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %106 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = call i32 @snd_mixer_oss_conv1(i32 %94, i64 %99, i32 %104, i32* %108)
  %110 = load i32*, i32** %9, align 8
  store i32 %109, i32* %110, align 4
  %111 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %112 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %115, label %139

115:                                              ; preds = %87
  %116 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %12, align 8
  %117 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %124 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %129 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %134 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = call i32 @snd_mixer_oss_conv1(i32 %122, i64 %127, i32 %132, i32* %136)
  %138 = load i32*, i32** %10, align 8
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %115, %87
  br label %140

140:                                              ; preds = %139, %86, %65, %55, %45
  %141 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %142 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %141, i32 0, i32 0
  %143 = call i32 @up_read(i32* %142)
  %144 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %12, align 8
  %145 = call i32 @kfree(%struct.snd_ctl_elem_value* %144)
  %146 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %11, align 8
  %147 = bitcast %struct.snd_ctl_elem_info* %146 to %struct.snd_ctl_elem_value*
  %148 = call i32 @kfree(%struct.snd_ctl_elem_value* %147)
  br label %149

149:                                              ; preds = %140, %30, %21
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_find_numid(%struct.snd_card*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local %struct.snd_ctl_elem_value* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_mixer_oss_conv1(i32, i64, i32, i32*) #1

declare dso_local i32 @kfree(%struct.snd_ctl_elem_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
