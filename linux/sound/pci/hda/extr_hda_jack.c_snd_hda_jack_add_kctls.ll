; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_add_kctls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_jack.c_snd_hda_jack_add_kctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.auto_pin_cfg = type { i32, i64*, i32, i64*, i32, i64*, i32, i64*, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"Headphone Mic\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_jack_add_kctls(%struct.hda_codec* %0, %struct.auto_pin_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.auto_pin_cfg*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.auto_pin_cfg* %1, %struct.auto_pin_cfg** %5, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %68, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %12 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %71

15:                                               ; preds = %9
  %16 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %17 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %16, i32 0, i32 11
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %15
  %26 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %27 = call i32 @auto_cfg_hp_outs(%struct.auto_pin_cfg* %26)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %31 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %32 = call i64* @auto_cfg_hp_pins(%struct.auto_pin_cfg* %31)
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %36 = call i32 @add_jack_kctl(%struct.hda_codec* %30, i64 %34, %struct.auto_pin_cfg* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %36, i32* %8, align 4
  br label %49

37:                                               ; preds = %25
  %38 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %39 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %40 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %39, i32 0, i32 11
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %48 = call i32 @add_jack_kctl(%struct.hda_codec* %38, i64 %46, %struct.auto_pin_cfg* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %37, %29
  br label %62

50:                                               ; preds = %15
  %51 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %52 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %53 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %52, i32 0, i32 11
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %61 = call i32 @add_jack_kctl(%struct.hda_codec* %51, i64 %59, %struct.auto_pin_cfg* %60, i8* null)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %50, %49
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %216

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %9

71:                                               ; preds = %9
  store i32 0, i32* %7, align 4
  %72 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %73 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  store i64* %74, i64** %6, align 8
  br label %75

75:                                               ; preds = %92, %71
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %78 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %75
  %82 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %83 = load i64*, i64** %6, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %86 = call i32 @add_jack_kctl(%struct.hda_codec* %82, i64 %84, %struct.auto_pin_cfg* %85, i8* null)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %216

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  %95 = load i64*, i64** %6, align 8
  %96 = getelementptr inbounds i64, i64* %95, i32 1
  store i64* %96, i64** %6, align 8
  br label %75

97:                                               ; preds = %75
  store i32 0, i32* %7, align 4
  %98 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %99 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %98, i32 0, i32 3
  %100 = load i64*, i64** %99, align 8
  store i64* %100, i64** %6, align 8
  br label %101

101:                                              ; preds = %127, %97
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %104 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %132

107:                                              ; preds = %101
  %108 = load i64*, i64** %6, align 8
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %111 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %109, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %132

116:                                              ; preds = %107
  %117 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %118 = load i64*, i64** %6, align 8
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %121 = call i32 @add_jack_kctl(%struct.hda_codec* %117, i64 %119, %struct.auto_pin_cfg* %120, i8* null)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %3, align 4
  br label %216

126:                                              ; preds = %116
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  %130 = load i64*, i64** %6, align 8
  %131 = getelementptr inbounds i64, i64* %130, i32 1
  store i64* %131, i64** %6, align 8
  br label %101

132:                                              ; preds = %115, %101
  store i32 0, i32* %7, align 4
  %133 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %134 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %133, i32 0, i32 5
  %135 = load i64*, i64** %134, align 8
  store i64* %135, i64** %6, align 8
  br label %136

136:                                              ; preds = %162, %132
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %139 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %167

142:                                              ; preds = %136
  %143 = load i64*, i64** %6, align 8
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %146 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %145, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %144, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  br label %167

151:                                              ; preds = %142
  %152 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %153 = load i64*, i64** %6, align 8
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %156 = call i32 @add_jack_kctl(%struct.hda_codec* %152, i64 %154, %struct.auto_pin_cfg* %155, i8* null)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %151
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %3, align 4
  br label %216

161:                                              ; preds = %151
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %7, align 4
  %165 = load i64*, i64** %6, align 8
  %166 = getelementptr inbounds i64, i64* %165, i32 1
  store i64* %166, i64** %6, align 8
  br label %136

167:                                              ; preds = %150, %136
  store i32 0, i32* %7, align 4
  %168 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %169 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %168, i32 0, i32 7
  %170 = load i64*, i64** %169, align 8
  store i64* %170, i64** %6, align 8
  br label %171

171:                                              ; preds = %188, %167
  %172 = load i32, i32* %7, align 4
  %173 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %174 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %173, i32 0, i32 8
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %193

177:                                              ; preds = %171
  %178 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %179 = load i64*, i64** %6, align 8
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %182 = call i32 @add_jack_kctl(%struct.hda_codec* %178, i64 %180, %struct.auto_pin_cfg* %181, i8* null)
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %177
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %3, align 4
  br label %216

187:                                              ; preds = %177
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %7, align 4
  %191 = load i64*, i64** %6, align 8
  %192 = getelementptr inbounds i64, i64* %191, i32 1
  store i64* %192, i64** %6, align 8
  br label %171

193:                                              ; preds = %171
  %194 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %195 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %196 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %195, i32 0, i32 9
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %199 = call i32 @add_jack_kctl(%struct.hda_codec* %194, i64 %197, %struct.auto_pin_cfg* %198, i8* null)
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %193
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %3, align 4
  br label %216

204:                                              ; preds = %193
  %205 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %206 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %207 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %206, i32 0, i32 10
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %210 = call i32 @add_jack_kctl(%struct.hda_codec* %205, i64 %208, %struct.auto_pin_cfg* %209, i8* null)
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* %8, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %204
  %214 = load i32, i32* %8, align 4
  store i32 %214, i32* %3, align 4
  br label %216

215:                                              ; preds = %204
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %215, %213, %202, %185, %159, %124, %89, %65
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i32 @auto_cfg_hp_outs(%struct.auto_pin_cfg*) #1

declare dso_local i32 @add_jack_kctl(%struct.hda_codec*, i64, %struct.auto_pin_cfg*, i8*) #1

declare dso_local i64* @auto_cfg_hp_pins(%struct.auto_pin_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
