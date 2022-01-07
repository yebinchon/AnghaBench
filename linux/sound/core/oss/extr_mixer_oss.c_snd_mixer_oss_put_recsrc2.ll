; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_put_recsrc2.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_put_recsrc2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss_file = type { %struct.snd_card*, %struct.snd_mixer_oss* }
%struct.snd_card = type { i32 }
%struct.snd_mixer_oss = type { i32, %struct.snd_mixer_oss_slot* }
%struct.snd_mixer_oss_slot = type { %struct.slot* }
%struct.slot = type { i64, i32, i32 }
%struct.snd_kcontrol = type { i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i32 }
%struct.snd_ctl_elem_value = type opaque
%struct.snd_ctl_elem_value.0 = type opaque
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ctl_elem_value.1 = type { i32, %struct.TYPE_4__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Capture Source\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_SIGNATURE = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_CAPTURE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer_oss_file*, i32)* @snd_mixer_oss_put_recsrc2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_put_recsrc2(%struct.snd_mixer_oss_file* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_mixer_oss_file*, align 8
  %4 = alloca i32, align 4
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
  store i32 %1, i32* %4, align 4
  %14 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %3, align 8
  %15 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %14, i32 0, i32 0
  %16 = load %struct.snd_card*, %struct.snd_card** %15, align 8
  store %struct.snd_card* %16, %struct.snd_card** %5, align 8
  %17 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %3, align 8
  %18 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %17, i32 0, i32 1
  %19 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %18, align 8
  store %struct.snd_mixer_oss* %19, %struct.snd_mixer_oss** %6, align 8
  store %struct.slot* null, %struct.slot** %9, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.snd_ctl_elem_value.1* @kzalloc(i32 16, i32 %20)
  %22 = bitcast %struct.snd_ctl_elem_value.1* %21 to %struct.snd_ctl_elem_info*
  store %struct.snd_ctl_elem_info* %22, %struct.snd_ctl_elem_info** %10, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.snd_ctl_elem_value.1* @kzalloc(i32 16, i32 %23)
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
  br label %149

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
  br label %145

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
  br label %145

54:                                               ; preds = %44
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %97, %54
  %56 = load i32, i32* %13, align 4
  %57 = icmp ult i32 %56, 32
  br i1 %57, label %58, label %100

58:                                               ; preds = %55
  %59 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %60 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = shl i32 1, %62
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  br label %97

67:                                               ; preds = %58
  %68 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %69 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %68, i32 0, i32 1
  %70 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %70, i64 %72
  store %struct.snd_mixer_oss_slot* %73, %struct.snd_mixer_oss_slot** %8, align 8
  %74 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %8, align 8
  %75 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %74, i32 0, i32 0
  %76 = load %struct.slot*, %struct.slot** %75, align 8
  store %struct.slot* %76, %struct.slot** %9, align 8
  %77 = load %struct.slot*, %struct.slot** %9, align 8
  %78 = getelementptr inbounds %struct.slot, %struct.slot* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SNDRV_MIXER_OSS_SIGNATURE, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %67
  br label %97

83:                                               ; preds = %67
  %84 = load %struct.slot*, %struct.slot** %9, align 8
  %85 = getelementptr inbounds %struct.slot, %struct.slot* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CAPTURE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  br label %97

91:                                               ; preds = %83
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %100

96:                                               ; preds = %91
  store %struct.slot* null, %struct.slot** %9, align 8
  br label %97

97:                                               ; preds = %96, %90, %82, %66
  %98 = load i32, i32* %13, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %55

100:                                              ; preds = %95, %55
  %101 = load %struct.slot*, %struct.slot** %9, align 8
  %102 = icmp ne %struct.slot* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  br label %145

104:                                              ; preds = %100
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %123, %104
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %10, align 8
  %108 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ult i32 %106, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %105
  %112 = load %struct.slot*, %struct.slot** %9, align 8
  %113 = getelementptr inbounds %struct.slot, %struct.slot* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %11, align 8
  %116 = getelementptr inbounds %struct.snd_ctl_elem_value.1, %struct.snd_ctl_elem_value.1* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %114, i32* %122, align 4
  br label %123

123:                                              ; preds = %111
  %124 = load i32, i32* %13, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %105

126:                                              ; preds = %105
  %127 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %128 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %127, i32 0, i32 1
  %129 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)** %128, align 8
  %130 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %131 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %11, align 8
  %132 = bitcast %struct.snd_ctl_elem_value.1* %131 to %struct.snd_ctl_elem_value.0*
  %133 = call i32 %129(%struct.snd_kcontrol* %130, %struct.snd_ctl_elem_value.0* %132)
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %126
  %137 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %3, align 8
  %138 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %137, i32 0, i32 0
  %139 = load %struct.snd_card*, %struct.snd_card** %138, align 8
  %140 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %141 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %142 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %141, i32 0, i32 2
  %143 = call i32 @snd_ctl_notify(%struct.snd_card* %139, i32 %140, i32* %142)
  br label %144

144:                                              ; preds = %136, %126
  store i32 0, i32* %12, align 4
  br label %145

145:                                              ; preds = %144, %103, %53, %41
  %146 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %147 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %146, i32 0, i32 0
  %148 = call i32 @up_read(i32* %147)
  br label %149

149:                                              ; preds = %145, %30
  %150 = load %struct.snd_ctl_elem_value.1*, %struct.snd_ctl_elem_value.1** %11, align 8
  %151 = call i32 @kfree(%struct.snd_ctl_elem_value.1* %150)
  %152 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %10, align 8
  %153 = bitcast %struct.snd_ctl_elem_info* %152 to %struct.snd_ctl_elem_value.1*
  %154 = call i32 @kfree(%struct.snd_ctl_elem_value.1* %153)
  %155 = load i32, i32* %12, align 4
  ret i32 %155
}

declare dso_local %struct.snd_ctl_elem_value.1* @kzalloc(i32, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_mixer_oss_test_id(%struct.snd_mixer_oss*, i8*, i32) #1

declare dso_local i32 @snd_ctl_notify(%struct.snd_card*, i32, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @kfree(%struct.snd_ctl_elem_value.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
