; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_check_auto_mic_availability.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_check_auto_mic_availability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32, i32, %struct.TYPE_4__*, i32*, i32, i64, %struct.auto_pin_cfg }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.auto_pin_cfg = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@AUTO_PIN_MIC = common dso_local global i32 0, align 4
@AUTO_PIN_LINE_IN = common dso_local global i32 0, align 4
@MAX_AUTO_MIC_PINS = common dso_local global i32 0, align 4
@compare_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Enable auto-mic switch on NID 0x%x/0x%x/0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @check_auto_mic_availability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_auto_mic_availability(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_gen_spec*, align 8
  %5 = alloca %struct.auto_pin_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %12, align 8
  store %struct.hda_gen_spec* %13, %struct.hda_gen_spec** %4, align 8
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %15 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %14, i32 0, i32 7
  store %struct.auto_pin_cfg* %15, %struct.auto_pin_cfg** %5, align 8
  %16 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %17 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %184

21:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %128, %21
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %25 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %131

28:                                               ; preds = %22
  %29 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %30 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @snd_hda_get_input_pin_attr(i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %10, align 4
  %44 = shl i32 1, %43
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %184

48:                                               ; preds = %28
  %49 = load i32, i32* %10, align 4
  switch i32 %49, label %64 [
    i32 129, label %50
    i32 128, label %63
  ]

50:                                               ; preds = %48
  %51 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %52 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @AUTO_PIN_MIC, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %184

62:                                               ; preds = %50
  br label %100

63:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %184

64:                                               ; preds = %48
  %65 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %66 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @AUTO_PIN_LINE_IN, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %184

76:                                               ; preds = %64
  %77 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %78 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %76
  %82 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %83 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @AUTO_PIN_MIC, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %184

93:                                               ; preds = %81, %76
  %94 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @is_jack_detectable(%struct.hda_codec* %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  store i32 0, i32* %2, align 4
  br label %184

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99, %62
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @MAX_AUTO_MIC_PINS, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %184

105:                                              ; preds = %100
  %106 = load i32, i32* %10, align 4
  %107 = shl i32 1, %106
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %112 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %111, i32 0, i32 3
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  store i32 %110, i32* %117, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %120 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %119, i32 0, i32 3
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i32 %118, i32* %125, align 4
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %105
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %22

131:                                              ; preds = %22
  %132 = load i32, i32* %8, align 4
  %133 = icmp slt i32 %132, 2
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 0, i32* %2, align 4
  br label %184

135:                                              ; preds = %131
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %138 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %140 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %139, i32 0, i32 3
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @compare_attr, align 4
  %144 = call i32 @sort(%struct.TYPE_4__* %141, i32 %142, i32 12, i32 %143, i32* null)
  %145 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %146 = call i32 @auto_mic_check_imux(%struct.hda_codec* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %135
  store i32 0, i32* %2, align 4
  br label %184

149:                                              ; preds = %135
  %150 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %151 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %150, i32 0, i32 1
  store i32 1, i32* %151, align 4
  %152 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %153 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %152, i32 0, i32 2
  store i32 1, i32* %153, align 8
  %154 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %155 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %154, i32 0, i32 3
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %161 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %160, i32 0, i32 4
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  store i32 %159, i32* %163, align 4
  %164 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %165 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %166 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %165, i32 0, i32 3
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %172 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %171, i32 0, i32 3
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 1
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %178 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %177, i32 0, i32 3
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 2
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @codec_dbg(%struct.hda_codec* %164, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %170, i32 %176, i32 %182)
  store i32 0, i32* %2, align 4
  br label %184

184:                                              ; preds = %149, %148, %134, %104, %98, %92, %75, %63, %61, %47, %20
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_get_input_pin_attr(i32) #1

declare dso_local i32 @is_jack_detectable(%struct.hda_codec*, i32) #1

declare dso_local i32 @sort(%struct.TYPE_4__*, i32, i32, i32, i32*) #1

declare dso_local i32 @auto_mic_check_imux(%struct.hda_codec*) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
