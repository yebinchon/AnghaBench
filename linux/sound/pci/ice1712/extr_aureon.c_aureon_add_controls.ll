; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_add_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_aureon_add_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.snd_kcontrol = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@aureon_dac_controls = common dso_local global i32* null, align 8
@VT1724_SUBDEVICE_AUREON51_SKY = common dso_local global i64 0, align 8
@wm_controls = common dso_local global i32* null, align 8
@VT1724_SUBDEVICE_AUREON71_UNIVERSE = common dso_local global i64 0, align 8
@universe_ac97_controls = common dso_local global i32* null, align 8
@VT1724_SUBDEVICE_PRODIGY71LT = common dso_local global i64 0, align 8
@VT1724_SUBDEVICE_PRODIGY71XT = common dso_local global i64 0, align 8
@ac97_controls = common dso_local global i32* null, align 8
@CS8415_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"No CS8415 chip. Skipping CS8415 controls.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Detected unsupported CS8415 rev. (%c)\0A\00", align 1
@cs8415_controls = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @aureon_add_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aureon_add_controls(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.snd_kcontrol*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %9 = load i32*, i32** @aureon_dac_controls, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VT1724_SUBDEVICE_AUREON51_SKY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = sub i32 %18, 2
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %17, %1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %41, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %27 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = load i32*, i32** @aureon_dac_controls, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %34 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %32, %struct.snd_ice1712* %33)
  %35 = call i32 @snd_ctl_add(%struct.TYPE_8__* %28, %struct.snd_kcontrol* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %235

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %21

44:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %66, %44
  %46 = load i32, i32* %4, align 4
  %47 = load i32*, i32** @wm_controls, align 8
  %48 = call i32 @ARRAY_SIZE(i32* %47)
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %45
  %51 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %52 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = load i32*, i32** @wm_controls, align 8
  %55 = load i32, i32* %4, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %59 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %57, %struct.snd_ice1712* %58)
  %60 = call i32 @snd_ctl_add(%struct.TYPE_8__* %53, %struct.snd_kcontrol* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %235

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %4, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %45

69:                                               ; preds = %45
  %70 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %71 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @VT1724_SUBDEVICE_AUREON71_UNIVERSE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %102

76:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %98, %76
  %78 = load i32, i32* %4, align 4
  %79 = load i32*, i32** @universe_ac97_controls, align 8
  %80 = call i32 @ARRAY_SIZE(i32* %79)
  %81 = icmp ult i32 %78, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %77
  %83 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %84 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load i32*, i32** @universe_ac97_controls, align 8
  %87 = load i32, i32* %4, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %91 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %89, %struct.snd_ice1712* %90)
  %92 = call i32 @snd_ctl_add(%struct.TYPE_8__* %85, %struct.snd_kcontrol* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %82
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %235

97:                                               ; preds = %82
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %4, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %77

101:                                              ; preds = %77
  br label %143

102:                                              ; preds = %69
  %103 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %104 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @VT1724_SUBDEVICE_PRODIGY71LT, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %142

109:                                              ; preds = %102
  %110 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %111 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @VT1724_SUBDEVICE_PRODIGY71XT, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %142

116:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %138, %116
  %118 = load i32, i32* %4, align 4
  %119 = load i32*, i32** @ac97_controls, align 8
  %120 = call i32 @ARRAY_SIZE(i32* %119)
  %121 = icmp ult i32 %118, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %117
  %123 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %124 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %123, i32 0, i32 1
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = load i32*, i32** @ac97_controls, align 8
  %127 = load i32, i32* %4, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %131 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %129, %struct.snd_ice1712* %130)
  %132 = call i32 @snd_ctl_add(%struct.TYPE_8__* %125, %struct.snd_kcontrol* %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %122
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %2, align 4
  br label %235

137:                                              ; preds = %122
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %4, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %4, align 4
  br label %117

141:                                              ; preds = %117
  br label %142

142:                                              ; preds = %141, %109, %102
  br label %143

143:                                              ; preds = %142, %101
  %144 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %145 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @VT1724_SUBDEVICE_PRODIGY71LT, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %234

150:                                              ; preds = %143
  %151 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %152 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @VT1724_SUBDEVICE_PRODIGY71XT, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %234

157:                                              ; preds = %150
  %158 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %159 = call i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712* %158)
  %160 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %161 = load i32, i32* @CS8415_ID, align 4
  %162 = call zeroext i8 @aureon_cs8415_get(%struct.snd_ice1712* %160, i32 %161)
  store i8 %162, i8* %7, align 1
  %163 = load i8, i8* %7, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp ne i32 %164, 65
  br i1 %165, label %166, label %173

166:                                              ; preds = %157
  %167 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %168 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %167, i32 0, i32 1
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i32, i8*, ...) @dev_info(i32 %171, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %231

173:                                              ; preds = %157
  %174 = load i8, i8* %7, align 1
  %175 = zext i8 %174 to i32
  %176 = and i32 %175, 15
  %177 = icmp ne i32 %176, 1
  br i1 %177, label %178, label %192

178:                                              ; preds = %173
  %179 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %180 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %179, i32 0, i32 1
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i8, i8* %7, align 1
  %185 = zext i8 %184 to i32
  %186 = and i32 %185, 15
  %187 = add nsw i32 %186, 65
  %188 = sub nsw i32 %187, 1
  %189 = trunc i32 %188 to i8
  %190 = sext i8 %189 to i32
  %191 = call i32 (i32, i8*, ...) @dev_info(i32 %183, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %190)
  br label %230

192:                                              ; preds = %173
  store i32 0, i32* %4, align 4
  br label %193

193:                                              ; preds = %226, %192
  %194 = load i32, i32* %4, align 4
  %195 = load i32*, i32** @cs8415_controls, align 8
  %196 = call i32 @ARRAY_SIZE(i32* %195)
  %197 = icmp ult i32 %194, %196
  br i1 %197, label %198, label %229

198:                                              ; preds = %193
  %199 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %200 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %199, i32 0, i32 1
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %200, align 8
  %202 = load i32*, i32** @cs8415_controls, align 8
  %203 = load i32, i32* %4, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %207 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %205, %struct.snd_ice1712* %206)
  store %struct.snd_kcontrol* %207, %struct.snd_kcontrol** %8, align 8
  %208 = call i32 @snd_ctl_add(%struct.TYPE_8__* %201, %struct.snd_kcontrol* %207)
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* %6, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %198
  %212 = load i32, i32* %6, align 4
  store i32 %212, i32* %2, align 4
  br label %235

213:                                              ; preds = %198
  %214 = load i32, i32* %4, align 4
  %215 = icmp ugt i32 %214, 1
  br i1 %215, label %216, label %225

216:                                              ; preds = %213
  %217 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %218 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %217, i32 0, i32 0
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %223 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  store i32 %221, i32* %224, align 4
  br label %225

225:                                              ; preds = %216, %213
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %4, align 4
  %228 = add i32 %227, 1
  store i32 %228, i32* %4, align 4
  br label %193

229:                                              ; preds = %193
  br label %230

230:                                              ; preds = %229, %178
  br label %231

231:                                              ; preds = %230, %166
  %232 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %233 = call i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712* %232)
  br label %234

234:                                              ; preds = %231, %150, %143
  store i32 0, i32* %2, align 4
  br label %235

235:                                              ; preds = %234, %211, %135, %95, %63, %38
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(%struct.TYPE_8__*, %struct.snd_kcontrol*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.snd_ice1712*) #1

declare dso_local i32 @snd_ice1712_save_gpio_status(%struct.snd_ice1712*) #1

declare dso_local zeroext i8 @aureon_cs8415_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @snd_ice1712_restore_gpio_status(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
