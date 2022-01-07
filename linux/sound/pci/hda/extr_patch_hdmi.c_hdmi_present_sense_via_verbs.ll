; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_present_sense_via_verbs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hdmi_present_sense_via_verbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_spec_per_pin = type { i32, i32, i32, %struct.hda_codec* }
%struct.hda_codec = type { i32, %struct.hdmi_spec* }
%struct.hdmi_spec = type { %struct.TYPE_2__, %struct.hdmi_eld }
%struct.TYPE_2__ = type { i64 (%struct.hda_codec*, i32, i32, i32*)* }
%struct.hdmi_eld = type { i32, i32, i32, i32, i32 }
%struct.hda_jack_tbl = type { i32, i32 }

@AC_PINSENSE_PRESENCE = common dso_local global i32 0, align 4
@AC_PINSENSE_ELDV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"HDMI status: Codec=%d Pin=%d Presence_Detect=%d ELD_Valid=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_spec_per_pin*, i32)* @hdmi_present_sense_via_verbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_present_sense_via_verbs(%struct.hdmi_spec_per_pin* %0, i32 %1) #0 {
  %3 = alloca %struct.hdmi_spec_per_pin*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_jack_tbl*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.hdmi_spec*, align 8
  %8 = alloca %struct.hdmi_eld*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hdmi_spec_per_pin* %0, %struct.hdmi_spec_per_pin** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %3, align 8
  %14 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %13, i32 0, i32 3
  %15 = load %struct.hda_codec*, %struct.hda_codec** %14, align 8
  store %struct.hda_codec* %15, %struct.hda_codec** %6, align 8
  %16 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 1
  %18 = load %struct.hdmi_spec*, %struct.hdmi_spec** %17, align 8
  store %struct.hdmi_spec* %18, %struct.hdmi_spec** %7, align 8
  %19 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %20 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %19, i32 0, i32 1
  store %struct.hdmi_eld* %20, %struct.hdmi_eld** %8, align 8
  %21 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %3, align 8
  %22 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %24 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @snd_hda_pin_sense(%struct.hda_codec* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %3, align 8
  %28 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @AC_PINSENSE_PRESENCE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %38 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %40 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %2
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @AC_PINSENSE_ELDV, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %52 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %56

53:                                               ; preds = %2
  %54 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %55 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %43
  %57 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %58 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %59 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %63 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %66 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @codec_dbg(%struct.hda_codec* %57, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, i32 %64, i32 %67)
  %69 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %70 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %116

73:                                               ; preds = %56
  %74 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %75 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64 (%struct.hda_codec*, i32, i32, i32*)*, i64 (%struct.hda_codec*, i32, i32, i32*)** %76, align 8
  %78 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %81 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %84 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %83, i32 0, i32 2
  %85 = call i64 %77(%struct.hda_codec* %78, i32 %79, i32 %82, i32* %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %73
  %88 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %89 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %88, i32 0, i32 1
  store i32 0, i32* %89, align 4
  br label %106

90:                                               ; preds = %73
  %91 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %92 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %93 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %92, i32 0, i32 4
  %94 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %95 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %98 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @snd_hdmi_parse_eld(%struct.hda_codec* %91, i32* %93, i32 %96, i32 %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %90
  %103 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %104 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %103, i32 0, i32 1
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %90
  br label %106

106:                                              ; preds = %105, %87
  %107 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %108 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 1, i32* %12, align 4
  br label %115

115:                                              ; preds = %114, %111, %106
  br label %116

116:                                              ; preds = %115, %56
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %3, align 8
  %121 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %120, i32 0, i32 1
  %122 = call i32 @msecs_to_jiffies(i32 300)
  %123 = call i32 @schedule_delayed_work(i32* %121, i32 %122)
  br label %129

124:                                              ; preds = %116
  %125 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %126 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %3, align 8
  %127 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %128 = call i32 @update_eld(%struct.hda_codec* %125, %struct.hdmi_spec_per_pin* %126, %struct.hdmi_eld* %127)
  br label %129

129:                                              ; preds = %124, %119
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %129
  %133 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %134 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %139 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br label %142

142:                                              ; preds = %137, %132, %129
  %143 = phi i1 [ true, %132 ], [ true, %129 ], [ %141, %137 ]
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %11, align 4
  %145 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec* %145, i32 %146)
  store %struct.hda_jack_tbl* %147, %struct.hda_jack_tbl** %5, align 8
  %148 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %5, align 8
  %149 = icmp ne %struct.hda_jack_tbl* %148, null
  br i1 %149, label %150, label %173

150:                                              ; preds = %142
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %5, align 8
  %156 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 4
  %157 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %158 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %150
  %162 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %163 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = load i32, i32* @AC_PINSENSE_PRESENCE, align 4
  br label %169

168:                                              ; preds = %161, %150
  br label %169

169:                                              ; preds = %168, %166
  %170 = phi i32 [ %167, %166 ], [ 0, %168 ]
  %171 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %5, align 8
  %172 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %169, %142
  %174 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %3, align 8
  %175 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %174, i32 0, i32 0
  %176 = call i32 @mutex_unlock(i32* %175)
  %177 = load i32, i32* %11, align 4
  ret i32 %177
}

declare dso_local i32 @snd_hda_pin_sense(%struct.hda_codec*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @snd_hdmi_parse_eld(%struct.hda_codec*, i32*, i32, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @update_eld(%struct.hda_codec*, %struct.hdmi_spec_per_pin*, %struct.hdmi_eld*) #1

declare dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
