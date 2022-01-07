; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_get_recsrc2.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_get_recsrc2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss_file = type { %struct.snd_mixer_oss*, %struct.snd_card* }
%struct.snd_mixer_oss = type { i32, %struct.snd_mixer_oss_slot* }
%struct.snd_mixer_oss_slot = type { %struct.slot* }
%struct.slot = type { i64, i32, i64 }
%struct.snd_card = type { i32 }
%struct.snd_kcontrol = type { i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)* }
%struct.snd_ctl_elem_value = type opaque
%struct.snd_ctl_elem_value.0 = type opaque
%struct.snd_ctl_elem_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_ctl_elem_value.1 = type { %struct.TYPE_4__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Capture Source\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_SIGNATURE = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer_oss_file*, i32*)* @snd_mixer_oss_get_recsrc2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_get_recsrc2(%struct.snd_mixer_oss_file* %0, i32* %1) #0 {
  %3 = alloca %struct.snd_mixer_oss_file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.snd_mixer_oss*, align 8
  %7 = alloca %struct.snd_kcontrol*, align 8
  %8 = alloca %struct.snd_mixer_oss_slot*, align 8
  %9 = alloca %struct.slot*, align 8
  %10 = alloca %struct.snd_ctl_elem_info*, align 8
  %11 = alloca %struct.snd_ctl_elem_value.1*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_file** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %3, align 8
  %15 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %14, i32 0, i32 1
  %16 = load %struct.snd_card*, %struct.snd_card** %15, align 8
  store %struct.snd_card* %16, %struct.snd_card** %5, align 8
  %17 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %3, align 8
  %18 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %17, i32 0, i32 0
  %19 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %18, align 8
  store %struct.snd_mixer_oss* %19, %struct.snd_mixer_oss** %6, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.snd_ctl_elem_value.1* @kzalloc(i32 8, i32 %20)
  %22 = bitcast %struct.snd_ctl_elem_value.1* %21 to %struct.snd_ctl_elem_info*
  store %struct.snd_ctl_elem_info* %22, %struct.snd_ctl_elem_info** %10, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.snd_ctl_elem_value.1* @kzalloc(i32 8, i32 %23)
  store %struct.snd_ctl_elem_value.1* %24, %struct.snd_ctl_elem_value.1** %11, align 8
  %25 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %10, align 8
  %26 = icmp eq %struct.snd_ctl_elem_info* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %11, align 8
  %29 = icmp eq %struct.snd_ctl_elem_value.1* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %12, align 4
  br label %125

33:                                               ; preds = %27
  %34 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %35 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %34, i32 0, i32 0
  %36 = call i32 @down_read(i32* %35)
  %37 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %38 = call %struct.snd_kcontrol* @snd_mixer_oss_test_id(%struct.snd_mixer_oss* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.snd_kcontrol* %38, %struct.snd_kcontrol** %7, align 8
  %39 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %40 = icmp ne %struct.snd_kcontrol* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %12, align 4
  br label %121

44:                                               ; preds = %33
  %45 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %46 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %45, i32 0, i32 0
  %47 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)** %46, align 8
  %48 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %49 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %10, align 8
  %50 = bitcast %struct.snd_ctl_elem_info* %49 to %struct.snd_ctl_elem_value*
  %51 = call i32 %47(%struct.snd_kcontrol* %48, %struct.snd_ctl_elem_value* %50)
  store i32 %51, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %121

54:                                               ; preds = %44
  %55 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %56 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %55, i32 0, i32 1
  %57 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)** %56, align 8
  %58 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %59 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %11, align 8
  %60 = bitcast %struct.snd_ctl_elem_value.1* %59 to %struct.snd_ctl_elem_value.0*
  %61 = call i32 %57(%struct.snd_kcontrol* %58, %struct.snd_ctl_elem_value.0* %60)
  store i32 %61, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %121

64:                                               ; preds = %54
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %117, %64
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 32
  br i1 %67, label %68, label %120

68:                                               ; preds = %65
  %69 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %70 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = shl i32 1, %72
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  br label %117

77:                                               ; preds = %68
  %78 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %79 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %78, i32 0, i32 1
  %80 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %80, i64 %82
  store %struct.snd_mixer_oss_slot* %83, %struct.snd_mixer_oss_slot** %8, align 8
  %84 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %8, align 8
  %85 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %84, i32 0, i32 0
  %86 = load %struct.slot*, %struct.slot** %85, align 8
  store %struct.slot* %86, %struct.slot** %9, align 8
  %87 = load %struct.slot*, %struct.slot** %9, align 8
  %88 = getelementptr inbounds %struct.slot, %struct.slot* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SNDRV_MIXER_OSS_SIGNATURE, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %77
  br label %117

93:                                               ; preds = %77
  %94 = load %struct.slot*, %struct.slot** %9, align 8
  %95 = getelementptr inbounds %struct.slot, %struct.slot* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CAPTURE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  br label %117

101:                                              ; preds = %93
  %102 = load %struct.slot*, %struct.slot** %9, align 8
  %103 = getelementptr inbounds %struct.slot, %struct.slot* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %11, align 8
  %106 = getelementptr inbounds %struct.snd_ctl_elem_value.1, %struct.snd_ctl_elem_value.1* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %104, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %101
  %114 = load i32, i32* %13, align 4
  %115 = load i32*, i32** %4, align 8
  store i32 %114, i32* %115, align 4
  br label %120

116:                                              ; preds = %101
  br label %117

117:                                              ; preds = %116, %100, %92, %76
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %65

120:                                              ; preds = %113, %65
  store i32 0, i32* %12, align 4
  br label %121

121:                                              ; preds = %120, %63, %53, %41
  %122 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %123 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %122, i32 0, i32 0
  %124 = call i32 @up_read(i32* %123)
  br label %125

125:                                              ; preds = %121, %30
  %126 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %11, align 8
  %127 = call i32 @kfree(%struct.snd_ctl_elem_value.1* %126)
  %128 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %10, align 8
  %129 = bitcast %struct.snd_ctl_elem_info* %128 to %struct.snd_ctl_elem_value.1*
  %130 = call i32 @kfree(%struct.snd_ctl_elem_value.1* %129)
  %131 = load i32, i32* %12, align 4
  ret i32 %131
}

declare dso_local %struct.snd_ctl_elem_value.1* @kzalloc(i32, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_mixer_oss_test_id(%struct.snd_mixer_oss*, i8*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @kfree(%struct.snd_ctl_elem_value.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
