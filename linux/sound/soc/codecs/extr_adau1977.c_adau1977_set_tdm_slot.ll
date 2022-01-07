; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1977.c_adau1977_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.adau1977 = type { i32, i32, i32, i32 }

@ADAU1977_REG_SAI_CTRL0 = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL0_SAI_MASK = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL0_SAI_I2S = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL1_SLOT_WIDTH_16 = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL1_SLOT_WIDTH_24 = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL1_SLOT_WIDTH_32 = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL0_SAI_TDM_2 = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL0_SAI_TDM_4 = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL0_SAI_TDM_8 = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL0_SAI_TDM_16 = common dso_local global i32 0, align 4
@ADAU1977_REG_SAI_OVERTEMP = common dso_local global i32 0, align 4
@ADAU1977_REG_CMAP12 = common dso_local global i32 0, align 4
@ADAU1977_CHAN_MAP_SECOND_SLOT_OFFSET = common dso_local global i32 0, align 4
@ADAU1977_CHAN_MAP_FIRST_SLOT_OFFSET = common dso_local global i32 0, align 4
@ADAU1977_REG_CMAP34 = common dso_local global i32 0, align 4
@ADAU1977_REG_SAI_CTRL1 = common dso_local global i32 0, align 4
@ADAU1977_SAI_CTRL1_SLOT_WIDTH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @adau1977_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1977_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.adau1977*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [4 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.adau1977* @snd_soc_component_get_drvdata(i32 %21)
  store %struct.adau1977* %22, %struct.adau1977** %12, align 8
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %5
  %26 = load %struct.adau1977*, %struct.adau1977** %12, align 8
  %27 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.adau1977*, %struct.adau1977** %12, align 8
  %29 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %28, i32 0, i32 1
  store i32 192000, i32* %29, align 4
  %30 = load %struct.adau1977*, %struct.adau1977** %12, align 8
  %31 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ADAU1977_REG_SAI_CTRL0, align 4
  %34 = load i32, i32* @ADAU1977_SAI_CTRL0_SAI_MASK, align 4
  %35 = load i32, i32* @ADAU1977_SAI_CTRL0_SAI_I2S, align 4
  %36 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %214

37:                                               ; preds = %5
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %214

46:                                               ; preds = %40
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %47

47:                                               ; preds = %82, %46
  %48 = load i32, i32* %17, align 4
  %49 = icmp ult i32 %48, 4
  br i1 %49, label %50, label %85

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @__ffs(i32 %51)
  %53 = load i32, i32* %17, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 %54
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* %17, align 4
  %57 = call i32 @ADAU1977_SAI_OVERTEMP_DRV_C(i32 %56)
  %58 = load i32, i32* %15, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %17, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 1, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %17, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp uge i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %50
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %214

77:                                               ; preds = %50
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %85

81:                                               ; preds = %77
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %17, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %17, align 4
  br label %47

85:                                               ; preds = %80, %47
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %214

91:                                               ; preds = %85
  %92 = load i32, i32* %11, align 4
  switch i32 %92, label %107 [
    i32 16, label %93
    i32 24, label %95
    i32 32, label %105
  ]

93:                                               ; preds = %91
  %94 = load i32, i32* @ADAU1977_SAI_CTRL1_SLOT_WIDTH_16, align 4
  store i32 %94, i32* %14, align 4
  br label %110

95:                                               ; preds = %91
  %96 = load %struct.adau1977*, %struct.adau1977** %12, align 8
  %97 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %6, align 4
  br label %214

103:                                              ; preds = %95
  %104 = load i32, i32* @ADAU1977_SAI_CTRL1_SLOT_WIDTH_24, align 4
  store i32 %104, i32* %14, align 4
  br label %110

105:                                              ; preds = %91
  %106 = load i32, i32* @ADAU1977_SAI_CTRL1_SLOT_WIDTH_32, align 4
  store i32 %106, i32* %14, align 4
  br label %110

107:                                              ; preds = %91
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %6, align 4
  br label %214

110:                                              ; preds = %105, %103, %93
  %111 = load i32, i32* %10, align 4
  switch i32 %111, label %120 [
    i32 2, label %112
    i32 4, label %114
    i32 8, label %116
    i32 16, label %118
  ]

112:                                              ; preds = %110
  %113 = load i32, i32* @ADAU1977_SAI_CTRL0_SAI_TDM_2, align 4
  store i32 %113, i32* %13, align 4
  br label %123

114:                                              ; preds = %110
  %115 = load i32, i32* @ADAU1977_SAI_CTRL0_SAI_TDM_4, align 4
  store i32 %115, i32* %13, align 4
  br label %123

116:                                              ; preds = %110
  %117 = load i32, i32* @ADAU1977_SAI_CTRL0_SAI_TDM_8, align 4
  store i32 %117, i32* %13, align 4
  br label %123

118:                                              ; preds = %110
  %119 = load i32, i32* @ADAU1977_SAI_CTRL0_SAI_TDM_16, align 4
  store i32 %119, i32* %13, align 4
  br label %123

120:                                              ; preds = %110
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %6, align 4
  br label %214

123:                                              ; preds = %118, %116, %114, %112
  %124 = load %struct.adau1977*, %struct.adau1977** %12, align 8
  %125 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ADAU1977_REG_SAI_OVERTEMP, align 4
  %128 = call i32 @ADAU1977_SAI_OVERTEMP_DRV_C(i32 0)
  %129 = call i32 @ADAU1977_SAI_OVERTEMP_DRV_C(i32 1)
  %130 = or i32 %128, %129
  %131 = call i32 @ADAU1977_SAI_OVERTEMP_DRV_C(i32 2)
  %132 = or i32 %130, %131
  %133 = call i32 @ADAU1977_SAI_OVERTEMP_DRV_C(i32 3)
  %134 = or i32 %132, %133
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @regmap_update_bits(i32 %126, i32 %127, i32 %134, i32 %135)
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %123
  %140 = load i32, i32* %18, align 4
  store i32 %140, i32* %6, align 4
  br label %214

141:                                              ; preds = %123
  %142 = load %struct.adau1977*, %struct.adau1977** %12, align 8
  %143 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @ADAU1977_REG_CMAP12, align 4
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @ADAU1977_CHAN_MAP_SECOND_SLOT_OFFSET, align 4
  %149 = shl i32 %147, %148
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %151 = load i32, i32* %150, align 16
  %152 = load i32, i32* @ADAU1977_CHAN_MAP_FIRST_SLOT_OFFSET, align 4
  %153 = shl i32 %151, %152
  %154 = or i32 %149, %153
  %155 = call i32 @regmap_write(i32 %144, i32 %145, i32 %154)
  store i32 %155, i32* %18, align 4
  %156 = load i32, i32* %18, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %141
  %159 = load i32, i32* %18, align 4
  store i32 %159, i32* %6, align 4
  br label %214

160:                                              ; preds = %141
  %161 = load %struct.adau1977*, %struct.adau1977** %12, align 8
  %162 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @ADAU1977_REG_CMAP34, align 4
  %165 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @ADAU1977_CHAN_MAP_SECOND_SLOT_OFFSET, align 4
  %168 = shl i32 %166, %167
  %169 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @ADAU1977_CHAN_MAP_FIRST_SLOT_OFFSET, align 4
  %172 = shl i32 %170, %171
  %173 = or i32 %168, %172
  %174 = call i32 @regmap_write(i32 %163, i32 %164, i32 %173)
  store i32 %174, i32* %18, align 4
  %175 = load i32, i32* %18, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %160
  %178 = load i32, i32* %18, align 4
  store i32 %178, i32* %6, align 4
  br label %214

179:                                              ; preds = %160
  %180 = load %struct.adau1977*, %struct.adau1977** %12, align 8
  %181 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @ADAU1977_REG_SAI_CTRL0, align 4
  %184 = load i32, i32* @ADAU1977_SAI_CTRL0_SAI_MASK, align 4
  %185 = load i32, i32* %13, align 4
  %186 = call i32 @regmap_update_bits(i32 %182, i32 %183, i32 %184, i32 %185)
  store i32 %186, i32* %18, align 4
  %187 = load i32, i32* %18, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %179
  %190 = load i32, i32* %18, align 4
  store i32 %190, i32* %6, align 4
  br label %214

191:                                              ; preds = %179
  %192 = load %struct.adau1977*, %struct.adau1977** %12, align 8
  %193 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @ADAU1977_REG_SAI_CTRL1, align 4
  %196 = load i32, i32* @ADAU1977_SAI_CTRL1_SLOT_WIDTH_MASK, align 4
  %197 = load i32, i32* %14, align 4
  %198 = call i32 @regmap_update_bits(i32 %194, i32 %195, i32 %196, i32 %197)
  store i32 %198, i32* %18, align 4
  %199 = load i32, i32* %18, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %191
  %202 = load i32, i32* %18, align 4
  store i32 %202, i32* %6, align 4
  br label %214

203:                                              ; preds = %191
  %204 = load i32, i32* %11, align 4
  %205 = load %struct.adau1977*, %struct.adau1977** %12, align 8
  %206 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* %11, align 4
  %208 = sdiv i32 24576000, %207
  %209 = load i32, i32* %10, align 4
  %210 = sdiv i32 %208, %209
  %211 = call i32 @min(i32 192000, i32 %210)
  %212 = load %struct.adau1977*, %struct.adau1977** %12, align 8
  %213 = getelementptr inbounds %struct.adau1977, %struct.adau1977* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 4
  store i32 0, i32* %6, align 4
  br label %214

214:                                              ; preds = %203, %201, %189, %177, %158, %139, %120, %107, %100, %88, %74, %43, %25
  %215 = load i32, i32* %6, align 4
  ret i32 %215
}

declare dso_local %struct.adau1977* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @ADAU1977_SAI_OVERTEMP_DRV_C(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
