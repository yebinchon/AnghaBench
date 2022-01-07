; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_create_input_ctls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_create_input_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64, i64, i8**, i64, i32, i64, i32*, %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@PIN_IN = common dso_local global i32 0, align 4
@AUTO_PIN_MIC = common dso_local global i64 0, align 8
@HDA_HINT_STEREO_MIX_ENABLE = common dso_local global i64 0, align 8
@CFG_IDX_MIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Stereo Mix\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @create_input_ctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_input_ctls(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_gen_spec*, align 8
  %5 = alloca %struct.auto_pin_cfg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  store %struct.hda_gen_spec* %14, %struct.hda_gen_spec** %4, align 8
  %15 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %16 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %15, i32 0, i32 7
  store %struct.auto_pin_cfg* %16, %struct.auto_pin_cfg** %5, align 8
  %17 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %18 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %21 = call i32 @fill_adc_nids(%struct.hda_codec* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %183

25:                                               ; preds = %1
  %26 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %27 = call i32 @fill_input_pin_labels(%struct.hda_codec* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %2, align 4
  br label %183

32:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %156, %32
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %36 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %159

39:                                               ; preds = %33
  %40 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %41 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %11, align 8
  %48 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @is_input_pin(%struct.hda_codec* %48, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %39
  br label %156

53:                                               ; preds = %39
  %54 = load i32, i32* @PIN_IN, align 4
  store i32 %54, i32* %10, align 4
  %55 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %56 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AUTO_PIN_MIC, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %53
  %66 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @snd_hda_get_default_vref(%struct.hda_codec* %66, i64 %67)
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %65, %53
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %74 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @snd_hda_codec_get_pin_target(%struct.hda_codec* %78, i64 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @set_pin_target(%struct.hda_codec* %83, i64 %84, i32 %85, i32 0)
  br label %87

87:                                               ; preds = %82, %77, %71
  %88 = load i64, i64* %6, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %122

90:                                               ; preds = %87
  %91 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* %6, align 8
  %94 = call i64 @is_reachable_path(%struct.hda_codec* %91, i64 %92, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %90
  %97 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i64, i64* %11, align 8
  %100 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %101 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %100, i32 0, i32 2
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %108 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %107, i32 0, i32 6
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* %6, align 8
  %115 = call i32 @new_analog_input(%struct.hda_codec* %97, i32 %98, i64 %99, i8* %106, i32 %113, i64 %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %96
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %2, align 4
  br label %183

120:                                              ; preds = %96
  br label %121

121:                                              ; preds = %120, %90
  br label %122

122:                                              ; preds = %121, %87
  %123 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %124 = load i64, i64* %11, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %128 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %127, i32 0, i32 2
  %129 = load i8**, i8*** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = load i64, i64* %6, align 8
  %135 = sub nsw i64 0, %134
  %136 = call i32 @parse_capture_source(%struct.hda_codec* %123, i64 %124, i32 %125, i32 %126, i8* %133, i64 %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %122
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %2, align 4
  br label %183

141:                                              ; preds = %122
  %142 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %143 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %141
  %147 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %148 = load i64, i64* %11, align 8
  %149 = call i32 @create_in_jack_mode(%struct.hda_codec* %147, i64 %148)
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %2, align 4
  br label %183

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %141
  br label %156

156:                                              ; preds = %155, %52
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %33

159:                                              ; preds = %33
  %160 = load i64, i64* %6, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %182

162:                                              ; preds = %159
  %163 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %164 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @HDA_HINT_STEREO_MIX_ENABLE, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %182

168:                                              ; preds = %162
  %169 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %170 = load i64, i64* %6, align 8
  %171 = load i32, i32* @CFG_IDX_MIX, align 4
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @parse_capture_source(%struct.hda_codec* %169, i64 %170, i32 %171, i32 %172, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 0)
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %168
  %177 = load i32, i32* %9, align 4
  store i32 %177, i32* %2, align 4
  br label %183

178:                                              ; preds = %168
  %179 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %180 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %179, i32 0, i32 4
  store i32 1, i32* %180, align 8
  br label %181

181:                                              ; preds = %178
  br label %182

182:                                              ; preds = %181, %162, %159
  store i32 0, i32* %2, align 4
  br label %183

183:                                              ; preds = %182, %176, %152, %139, %118, %30, %24
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @fill_adc_nids(%struct.hda_codec*) #1

declare dso_local i32 @fill_input_pin_labels(%struct.hda_codec*) #1

declare dso_local i32 @is_input_pin(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_get_default_vref(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_codec_get_pin_target(%struct.hda_codec*, i64) #1

declare dso_local i32 @set_pin_target(%struct.hda_codec*, i64, i32, i32) #1

declare dso_local i64 @is_reachable_path(%struct.hda_codec*, i64, i64) #1

declare dso_local i32 @new_analog_input(%struct.hda_codec*, i32, i64, i8*, i32, i64) #1

declare dso_local i32 @parse_capture_source(%struct.hda_codec*, i64, i32, i32, i8*, i64) #1

declare dso_local i32 @create_in_jack_mode(%struct.hda_codec*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
