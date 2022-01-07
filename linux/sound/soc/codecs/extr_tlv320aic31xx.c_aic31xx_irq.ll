; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic31xx.c_aic31xx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic31xx.c_aic31xx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic31xx_priv = type { i32, i64, %struct.device* }
%struct.device = type { i32 }

@AIC31XX_INTRDACFLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to read interrupt mask: %d\0A\00", align 1
@AIC31XX_HPLSCDETECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Short circuit on Left output is detected\0A\00", align 1
@AIC31XX_HPRSCDETECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Short circuit on Right output is detected\0A\00", align 1
@AIC31XX_HSPLUG = common dso_local global i32 0, align 4
@AIC31XX_BUTTONPRESS = common dso_local global i32 0, align 4
@AIC31XX_INTRDACFLAG2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@AIC31XX_HSDETECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to read headset type: %d\0A\00", align 1
@AIC31XX_HSD_TYPE_MASK = common dso_local global i32 0, align 4
@AIC31XX_HSD_TYPE_SHIFT = common dso_local global i32 0, align 4
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@AIC31XX_JACK_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Unknown DAC interrupt flags: 0x%08x\0A\00", align 1
@AIC31XX_OFFLAG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to read overflow flag: %d\0A\00", align 1
@AIC31XX_DAC_OF_LEFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Left-channel DAC overflow has occurred\0A\00", align 1
@AIC31XX_DAC_OF_RIGHT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"Right-channel DAC overflow has occurred\0A\00", align 1
@AIC31XX_DAC_OF_SHIFTER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"DAC barrel shifter overflow has occurred\0A\00", align 1
@AIC31XX_ADC_OF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"ADC overflow has occurred\0A\00", align 1
@AIC31XX_ADC_OF_SHIFTER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [42 x i8] c"ADC barrel shifter overflow has occurred\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Unknown overflow interrupt flags: 0x%08x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @aic31xx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic31xx_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.aic31xx_priv*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.aic31xx_priv*
  store %struct.aic31xx_priv* %14, %struct.aic31xx_priv** %6, align 8
  %15 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %6, align 8
  %16 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %15, i32 0, i32 2
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %6, align 8
  %19 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @AIC31XX_INTRDACFLAG, align 4
  %22 = call i32 @regmap_read(i32 %20, i32 %21, i32* %8)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %211

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %9, align 4
  br label %34

33:                                               ; preds = %29
  br label %135

34:                                               ; preds = %32
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @AIC31XX_HPLSCDETECT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.device*, %struct.device** %7, align 8
  %41 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @AIC31XX_HPRSCDETECT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.device*, %struct.device** %7, align 8
  %49 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @AIC31XX_HSPLUG, align 4
  %53 = load i32, i32* @AIC31XX_BUTTONPRESS, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %118

57:                                               ; preds = %50
  store i32 0, i32* %12, align 4
  %58 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %6, align 8
  %59 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @AIC31XX_INTRDACFLAG2, align 4
  %62 = call i32 @regmap_read(i32 %60, i32 %61, i32* %11)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load %struct.device*, %struct.device** %7, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %211

69:                                               ; preds = %57
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @AIC31XX_BUTTONPRESS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @SND_JACK_BTN_0, align 4
  %76 = load i32, i32* %12, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %74, %69
  %79 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %6, align 8
  %80 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @AIC31XX_HSDETECT, align 4
  %83 = call i32 @regmap_read(i32 %81, i32 %82, i32* %11)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load %struct.device*, %struct.device** %7, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %87, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  br label %211

90:                                               ; preds = %78
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @AIC31XX_HSD_TYPE_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @AIC31XX_HSD_TYPE_SHIFT, align 4
  %95 = lshr i32 %93, %94
  switch i32 %95, label %104 [
    i32 129, label %96
    i32 128, label %100
  ]

96:                                               ; preds = %90
  %97 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %98 = load i32, i32* %12, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %12, align 4
  br label %105

100:                                              ; preds = %90
  %101 = load i32, i32* @SND_JACK_HEADSET, align 4
  %102 = load i32, i32* %12, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %12, align 4
  br label %105

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104, %100, %96
  %106 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %6, align 8
  %107 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %6, align 8
  %112 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @AIC31XX_JACK_MASK, align 4
  %116 = call i32 @snd_soc_jack_report(i64 %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %110, %105
  br label %118

118:                                              ; preds = %117, %50
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @AIC31XX_HPLSCDETECT, align 4
  %121 = load i32, i32* @AIC31XX_HPRSCDETECT, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @AIC31XX_HSPLUG, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @AIC31XX_BUTTONPRESS, align 4
  %126 = or i32 %124, %125
  %127 = xor i32 %126, -1
  %128 = and i32 %119, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %118
  %131 = load %struct.device*, %struct.device** %7, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %131, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %130, %118
  br label %135

135:                                              ; preds = %134, %33
  %136 = load %struct.aic31xx_priv*, %struct.aic31xx_priv** %6, align 8
  %137 = getelementptr inbounds %struct.aic31xx_priv, %struct.aic31xx_priv* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @AIC31XX_OFFLAG, align 4
  %140 = call i32 @regmap_read(i32 %138, i32 %139, i32* %8)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %135
  %144 = load %struct.device*, %struct.device** %7, align 8
  %145 = load i32, i32* %10, align 4
  %146 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %144, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %145)
  br label %211

147:                                              ; preds = %135
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  store i32 1, i32* %9, align 4
  br label %152

151:                                              ; preds = %147
  br label %211

152:                                              ; preds = %150
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @AIC31XX_DAC_OF_LEFT, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.device*, %struct.device** %7, align 8
  %159 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %158, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %152
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @AIC31XX_DAC_OF_RIGHT, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load %struct.device*, %struct.device** %7, align 8
  %167 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %166, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %168

168:                                              ; preds = %165, %160
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* @AIC31XX_DAC_OF_SHIFTER, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load %struct.device*, %struct.device** %7, align 8
  %175 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %174, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %168
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @AIC31XX_ADC_OF, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load %struct.device*, %struct.device** %7, align 8
  %183 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %182, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %184

184:                                              ; preds = %181, %176
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* @AIC31XX_ADC_OF_SHIFTER, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = load %struct.device*, %struct.device** %7, align 8
  %191 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %190, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %184
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* @AIC31XX_DAC_OF_LEFT, align 4
  %195 = load i32, i32* @AIC31XX_DAC_OF_RIGHT, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @AIC31XX_DAC_OF_SHIFTER, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @AIC31XX_ADC_OF, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @AIC31XX_ADC_OF_SHIFTER, align 4
  %202 = or i32 %200, %201
  %203 = xor i32 %202, -1
  %204 = and i32 %193, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %192
  %207 = load %struct.device*, %struct.device** %7, align 8
  %208 = load i32, i32* %8, align 4
  %209 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %207, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 %208)
  br label %210

210:                                              ; preds = %206, %192
  br label %211

211:                                              ; preds = %210, %151, %143, %86, %65, %25
  %212 = load i32, i32* %9, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %211
  %215 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %215, i32* %3, align 4
  br label %218

216:                                              ; preds = %211
  %217 = load i32, i32* @IRQ_NONE, align 4
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %216, %214
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @snd_soc_jack_report(i64, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
