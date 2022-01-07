; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_intel_not_share_assigned_cvt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_intel_not_share_assigned_cvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32, i32 }
%struct.hdmi_spec_per_cvt = type { i32 }
%struct.hdmi_spec_per_pin = type { i64, i32, i32 }

@AC_VERB_GET_CONNECT_SEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"choose cvt %d for pin nid %d\0A\00", align 1
@AC_VERB_SET_CONNECT_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i64, i32, i32)* @intel_not_share_assigned_cvt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_not_share_assigned_cvt(%struct.hda_codec* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hdmi_spec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hdmi_spec_per_cvt*, align 8
  %14 = alloca %struct.hdmi_spec_per_pin*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %19 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %18, i32 0, i32 0
  %20 = load %struct.hdmi_spec*, %struct.hdmi_spec** %19, align 8
  store %struct.hdmi_spec* %20, %struct.hdmi_spec** %9, align 8
  store i32 0, i32* %15, align 4
  br label %21

21:                                               ; preds = %121, %4
  %22 = load i32, i32* %15, align 4
  %23 = load %struct.hdmi_spec*, %struct.hdmi_spec** %9, align 8
  %24 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %124

27:                                               ; preds = %21
  %28 = load %struct.hdmi_spec*, %struct.hdmi_spec** %9, align 8
  %29 = load i32, i32* %15, align 4
  %30 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %28, i32 %29)
  store %struct.hdmi_spec_per_pin* %30, %struct.hdmi_spec_per_pin** %14, align 8
  %31 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %14, align 8
  %32 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  br label %121

36:                                               ; preds = %27
  %37 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %14, align 8
  %38 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %14, align 8
  %44 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %121

49:                                               ; preds = %42, %36
  %50 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %51 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %14, align 8
  %52 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @snd_hda_get_num_devices(%struct.hda_codec* %50, i64 %53)
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %17, align 4
  %56 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %14, align 8
  %57 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %17, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %121

62:                                               ; preds = %49
  %63 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %14, align 8
  %64 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %10, align 8
  %66 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @snd_hda_get_dev_select(%struct.hda_codec* %66, i64 %67)
  store i32 %68, i32* %16, align 4
  %69 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %14, align 8
  %72 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @snd_hda_set_dev_select(%struct.hda_codec* %69, i64 %70, i32 %73)
  %75 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i32, i32* @AC_VERB_GET_CONNECT_SEL, align 4
  %78 = call i32 @snd_hda_codec_read(%struct.hda_codec* %75, i64 %76, i32 0, i32 %77, i32 0)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %62
  %83 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @snd_hda_set_dev_select(%struct.hda_codec* %83, i64 %84, i32 %85)
  br label %121

87:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %113, %87
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.hdmi_spec*, %struct.hdmi_spec** %9, align 8
  %91 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %88
  %95 = load %struct.hdmi_spec*, %struct.hdmi_spec** %9, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec* %95, i32 %96)
  store %struct.hdmi_spec_per_cvt* %97, %struct.hdmi_spec_per_cvt** %13, align 8
  %98 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %13, align 8
  %99 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %94
  %103 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @codec_dbg(%struct.hda_codec* %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %104, i64 %105)
  %107 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load i32, i32* @AC_VERB_SET_CONNECT_SEL, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %107, i64 %108, i32 0, i32 %109, i32 %110)
  br label %116

112:                                              ; preds = %94
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %88

116:                                              ; preds = %102, %88
  %117 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %118 = load i64, i64* %10, align 8
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @snd_hda_set_dev_select(%struct.hda_codec* %117, i64 %118, i32 %119)
  br label %121

121:                                              ; preds = %116, %82, %61, %48, %35
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %15, align 4
  br label %21

124:                                              ; preds = %21
  ret void
}

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @snd_hda_get_num_devices(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_get_dev_select(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_set_dev_select(%struct.hda_codec*, i64, i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i64, i32, i32, i32) #1

declare dso_local %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i32, i64) #1

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
