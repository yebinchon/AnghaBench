; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4.c_aic32x4_setup_regulators.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4.c_aic32x4_setup_regulators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.aic32x4_priv = type { i8*, i8*, i8*, i32, i8* }

@.str = private unnamed_addr constant [6 x i8] c"ldoin\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"iov\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"dv\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"av\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Missing supply 'iov'\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Missing supply 'dv' or 'ldoin'\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Missing supply 'av' or 'ldoin'\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Failed to enable regulator iov\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Failed to enable regulator ldo\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Failed to enable regulator dv\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Failed to enable regulator av\0A\00", align 1
@AIC32X4_PWR_AIC32X4_LDO_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.aic32x4_priv*)* @aic32x4_setup_regulators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic32x4_setup_regulators(%struct.device* %0, %struct.aic32x4_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.aic32x4_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.aic32x4_priv* %1, %struct.aic32x4_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call i8* @devm_regulator_get_optional(%struct.device* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %10 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i8* @devm_regulator_get(%struct.device* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %14 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i8* @devm_regulator_get_optional(%struct.device* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %17 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %18 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i8* @devm_regulator_get_optional(%struct.device* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %21 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %22 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %24 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @IS_ERR(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %31 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %32 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @PTR_ERR(i8* %33)
  store i32 %34, i32* %3, align 4
  br label %225

35:                                               ; preds = %2
  %36 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %37 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @IS_ERR(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %35
  %42 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %43 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @PTR_ERR(i8* %44)
  %46 = load i32, i32* @EPROBE_DEFER, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @EPROBE_DEFER, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %225

52:                                               ; preds = %41
  %53 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %54 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @IS_ERR(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %61 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %62 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @PTR_ERR(i8* %63)
  store i32 %64, i32* %3, align 4
  br label %225

65:                                               ; preds = %52
  %66 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %67 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %66, i32 0, i32 4
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @IS_ERR(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %74 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %75 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @PTR_ERR(i8* %76)
  store i32 %77, i32* %3, align 4
  br label %225

78:                                               ; preds = %65
  br label %114

79:                                               ; preds = %35
  %80 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %81 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @IS_ERR(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %79
  %86 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %87 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @PTR_ERR(i8* %88)
  %90 = load i32, i32* @EPROBE_DEFER, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32, i32* @EPROBE_DEFER, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %225

96:                                               ; preds = %85, %79
  %97 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %98 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %97, i32 0, i32 4
  %99 = load i8*, i8** %98, align 8
  %100 = call i64 @IS_ERR(i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %96
  %103 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %104 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @PTR_ERR(i8* %105)
  %107 = load i32, i32* @EPROBE_DEFER, align 4
  %108 = sub nsw i32 0, %107
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %102
  %111 = load i32, i32* @EPROBE_DEFER, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %225

113:                                              ; preds = %102, %96
  br label %114

114:                                              ; preds = %113, %78
  %115 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %116 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @regulator_enable(i8* %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = call i32 @dev_err(%struct.device* %122, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %3, align 4
  br label %225

125:                                              ; preds = %114
  %126 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %127 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = call i64 @IS_ERR(i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %142, label %131

131:                                              ; preds = %125
  %132 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %133 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @regulator_enable(i8* %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load %struct.device*, %struct.device** %4, align 8
  %140 = call i32 @dev_err(%struct.device* %139, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %219

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %141, %125
  %143 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %144 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @IS_ERR(i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %159, label %148

148:                                              ; preds = %142
  %149 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %150 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @regulator_enable(i8* %151)
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %148
  %156 = load %struct.device*, %struct.device** %4, align 8
  %157 = call i32 @dev_err(%struct.device* %156, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %207

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %158, %142
  %160 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %161 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %160, i32 0, i32 4
  %162 = load i8*, i8** %161, align 8
  %163 = call i64 @IS_ERR(i8* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %176, label %165

165:                                              ; preds = %159
  %166 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %167 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %166, i32 0, i32 4
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @regulator_enable(i8* %168)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %165
  %173 = load %struct.device*, %struct.device** %4, align 8
  %174 = call i32 @dev_err(%struct.device* %173, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  br label %195

175:                                              ; preds = %165
  br label %176

176:                                              ; preds = %175, %159
  %177 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %178 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = call i64 @IS_ERR(i8* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %194, label %182

182:                                              ; preds = %176
  %183 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %184 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %183, i32 0, i32 4
  %185 = load i8*, i8** %184, align 8
  %186 = call i64 @IS_ERR(i8* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %182
  %189 = load i32, i32* @AIC32X4_PWR_AIC32X4_LDO_ENABLE, align 4
  %190 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %191 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %188, %182, %176
  store i32 0, i32* %3, align 4
  br label %225

195:                                              ; preds = %172
  %196 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %197 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %196, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  %199 = call i64 @IS_ERR(i8* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %195
  %202 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %203 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %202, i32 0, i32 2
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @regulator_disable(i8* %204)
  br label %206

206:                                              ; preds = %201, %195
  br label %207

207:                                              ; preds = %206, %155
  %208 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %209 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %208, i32 0, i32 1
  %210 = load i8*, i8** %209, align 8
  %211 = call i64 @IS_ERR(i8* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %218, label %213

213:                                              ; preds = %207
  %214 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %215 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %214, i32 0, i32 1
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @regulator_disable(i8* %216)
  br label %218

218:                                              ; preds = %213, %207
  br label %219

219:                                              ; preds = %218, %138
  %220 = load %struct.aic32x4_priv*, %struct.aic32x4_priv** %5, align 8
  %221 = getelementptr inbounds %struct.aic32x4_priv, %struct.aic32x4_priv* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @regulator_disable(i8* %222)
  %224 = load i32, i32* %6, align 4
  store i32 %224, i32* %3, align 4
  br label %225

225:                                              ; preds = %219, %194, %121, %110, %93, %71, %58, %49, %28
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local i8* @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i8* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i32 @regulator_disable(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
