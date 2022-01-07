; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_add_pin.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_add_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i64, %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32, i32, i32, i64, i32 }
%struct.hdmi_spec_per_pin = type { i32, i32, i32, i32, i32, i32* }

@AC_PINCAP_HDMI = common dso_local global i32 0, align 4
@AC_PINCAP_DP = common dso_local global i32 0, align 4
@AC_JACK_PORT_NONE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32)* @hdmi_add_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_add_pin(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdmi_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hdmi_spec_per_pin*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 1
  %16 = load %struct.hdmi_spec*, %struct.hdmi_spec** %15, align 8
  store %struct.hdmi_spec* %16, %struct.hdmi_spec** %6, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @snd_hda_query_pin_caps(%struct.hda_codec* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @AC_PINCAP_HDMI, align 4
  %22 = load i32, i32* @AC_PINCAP_DP, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %159

27:                                               ; preds = %2
  %28 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @get_defcfg_connect(i32 %31)
  %33 = load i64, i64* @AC_JACK_PORT_NONE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %159

36:                                               ; preds = %27
  %37 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %38 = call i64 @is_haswell_plus(%struct.hda_codec* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  store i32 3, i32* %12, align 4
  %41 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %42 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %41, i32 0, i32 0
  store i32 3, i32* %42, align 8
  br label %77

43:                                               ; preds = %36
  %44 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %45 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %43
  %49 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %50 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %48
  %54 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @snd_hda_get_num_devices(%struct.hda_codec* %54, i32 %55)
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  %58 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %59 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %65 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  br label %69

67:                                               ; preds = %53
  %68 = load i32, i32* %12, align 4
  br label %69

69:                                               ; preds = %67, %63
  %70 = phi i32 [ %66, %63 ], [ %68, %67 ]
  %71 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %72 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %76

73:                                               ; preds = %48, %43
  store i32 1, i32* %12, align 4
  %74 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %75 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %69
  br label %77

77:                                               ; preds = %76, %40
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %151, %77
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %154

82:                                               ; preds = %78
  %83 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %84 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %9, align 4
  %86 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %87 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %86, i32 0, i32 4
  %88 = call %struct.hdmi_spec_per_pin* @snd_array_new(i32* %87)
  store %struct.hdmi_spec_per_pin* %88, %struct.hdmi_spec_per_pin** %10, align 8
  %89 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %90 = icmp ne %struct.hdmi_spec_per_pin* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %82
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %159

94:                                               ; preds = %82
  %95 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %96 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %101 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %100, i32 0, i32 5
  store i32* null, i32** %101, align 8
  %102 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %103 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %102, i32 0, i32 0
  store i32 -1, i32* %103, align 8
  br label %113

104:                                              ; preds = %94
  %105 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32* @get_hdmi_pcm(%struct.hdmi_spec* %105, i32 %106)
  %108 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %109 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %108, i32 0, i32 5
  store i32* %107, i32** %109, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %112 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %104, %99
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %116 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  %117 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %118 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %121 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %124 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %126 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %125, i32 0, i32 2
  store i32 0, i32* %126, align 8
  %127 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @snd_hda_set_dev_select(%struct.hda_codec* %127, i32 %128, i32 %129)
  %131 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %132 = call i64 @is_haswell_plus(%struct.hda_codec* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %113
  %135 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @intel_haswell_fixup_connect_list(%struct.hda_codec* %135, i32 %136)
  br label %138

138:                                              ; preds = %134, %113
  %139 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @hdmi_read_pin_conn(%struct.hda_codec* %139, i32 %140)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %3, align 4
  br label %159

146:                                              ; preds = %138
  %147 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %148 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %146
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %13, align 4
  br label %78

154:                                              ; preds = %78
  %155 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %156 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %154, %144, %91, %35, %26
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @snd_hda_query_pin_caps(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i32) #1

declare dso_local i64 @get_defcfg_connect(i32) #1

declare dso_local i64 @is_haswell_plus(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_get_num_devices(%struct.hda_codec*, i32) #1

declare dso_local %struct.hdmi_spec_per_pin* @snd_array_new(i32*) #1

declare dso_local i32* @get_hdmi_pcm(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @snd_hda_set_dev_select(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @intel_haswell_fixup_connect_list(%struct.hda_codec*, i32) #1

declare dso_local i32 @hdmi_read_pin_conn(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
