; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rl6231.c_rl6231_pll_calc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rl6231.c_rl6231_pll_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.rl6231_pll_code = type { i32, i32, i32, i32 }

@RL6231_PLL_N_MAX = common dso_local global i32 0, align 4
@RL6231_PLL_M_MAX = common dso_local global i32 0, align 4
@RL6231_PLL_INP_MAX = common dso_local global i32 0, align 4
@RL6231_PLL_INP_MIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pll_preset_table = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Use preset PLL parameter table\0A\00", align 1
@RL6231_PLL_K_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Only get approximation about PLL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rl6231_pll_calc(i32 %0, i32 %1, %struct.rl6231_pll_code* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rl6231_pll_code*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.rl6231_pll_code* %2, %struct.rl6231_pll_code** %7, align 8
  %30 = load i32, i32* @RL6231_PLL_N_MAX, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @RL6231_PLL_M_MAX, align 4
  store i32 %31, i32* %9, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sub i32 %32, %33
  %35 = call i32 @abs(i32 %34)
  store i32 %35, i32* %25, align 4
  store i32 0, i32* %29, align 4
  %36 = load i32, i32* @RL6231_PLL_INP_MAX, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %3
  %40 = load i32, i32* @RL6231_PLL_INP_MIN, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ugt i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %3
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %236

46:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %97, %46
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_preset_table, align 8
  %50 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %49)
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %100

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_preset_table, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %53, %59
  br i1 %60, label %61, label %96

61:                                               ; preds = %52
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_preset_table, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %62, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %61
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_preset_table, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %11, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_preset_table, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %17, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_preset_table, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %16, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_preset_table, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %29, align 4
  %95 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %223

96:                                               ; preds = %61, %52
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %47

100:                                              ; preds = %47
  %101 = load i32, i32* %6, align 4
  %102 = udiv i32 80000000, %101
  %103 = sub i32 %102, 2
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %6, align 4
  %105 = udiv i32 150000000, %104
  %106 = sub i32 %105, 2
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @RL6231_PLL_K_MAX, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = load i32, i32* @RL6231_PLL_K_MAX, align 4
  store i32 %111, i32* %15, align 4
  br label %112

112:                                              ; preds = %110, %100
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @RL6231_PLL_K_MAX, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* @RL6231_PLL_K_MAX, align 4
  store i32 %117, i32* %15, align 4
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %116, %112
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @gcd(i32 %119, i32 %120)
  store i32 %121, i32* %24, align 4
  %122 = load i32, i32* @RL6231_PLL_N_MAX, align 4
  %123 = udiv i32 -1, %122
  store i32 %123, i32* %28, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %28, align 4
  %126 = load i32, i32* %24, align 4
  %127 = call i32 @find_best_div(i32 %124, i32 %125, i32 %126)
  store i32 %127, i32* %23, align 4
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %23, align 4
  %130 = udiv i32 %128, %129
  store i32 %130, i32* %26, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %23, align 4
  %133 = udiv i32 %131, %132
  store i32 %133, i32* %27, align 4
  %134 = load i32, i32* %14, align 4
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %13, align 4
  br label %136

136:                                              ; preds = %218, %118
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %15, align 4
  %139 = icmp sle i32 %137, %138
  br i1 %139, label %140, label %221

140:                                              ; preds = %136
  store i32 0, i32* %12, align 4
  br label %141

141:                                              ; preds = %214, %140
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp sle i32 %142, %143
  br i1 %144, label %145, label %217

145:                                              ; preds = %141
  %146 = load i32, i32* %26, align 4
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, 2
  %149 = mul i32 %146, %148
  store i32 %149, i32* %21, align 4
  %150 = load i32, i32* %27, align 4
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 2
  %153 = mul i32 %150, %152
  store i32 %153, i32* %20, align 4
  %154 = load i32, i32* %21, align 4
  %155 = load i32, i32* %20, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %145
  store i32 1, i32* %29, align 4
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %13, align 4
  store i32 %159, i32* %11, align 4
  br label %223

160:                                              ; preds = %145
  %161 = load i32, i32* %21, align 4
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, 2
  %164 = udiv i32 %161, %163
  store i32 %164, i32* %22, align 4
  %165 = load i32, i32* %27, align 4
  %166 = load i32, i32* %22, align 4
  %167 = sub i32 %165, %166
  %168 = call i32 @abs(i32 %167)
  store i32 %168, i32* %19, align 4
  %169 = load i32, i32* %19, align 4
  %170 = load i32, i32* %25, align 4
  %171 = icmp ult i32 %169, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %160
  store i32 1, i32* %29, align 4
  %173 = load i32, i32* %12, align 4
  store i32 %173, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %174 = load i32, i32* %13, align 4
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %19, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  br label %223

178:                                              ; preds = %172
  %179 = load i32, i32* %19, align 4
  store i32 %179, i32* %25, align 4
  br label %180

180:                                              ; preds = %178, %160
  store i32 0, i32* %18, align 4
  br label %181

181:                                              ; preds = %210, %180
  %182 = load i32, i32* %18, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp sle i32 %182, %183
  br i1 %184, label %185, label %213

185:                                              ; preds = %181
  %186 = load i32, i32* %21, align 4
  %187 = load i32, i32* %18, align 4
  %188 = add nsw i32 %187, 2
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %189, 2
  %191 = mul nsw i32 %188, %190
  %192 = udiv i32 %186, %191
  store i32 %192, i32* %22, align 4
  %193 = load i32, i32* %27, align 4
  %194 = load i32, i32* %22, align 4
  %195 = sub i32 %193, %194
  %196 = call i32 @abs(i32 %195)
  store i32 %196, i32* %19, align 4
  %197 = load i32, i32* %19, align 4
  %198 = load i32, i32* %25, align 4
  %199 = icmp ult i32 %197, %198
  br i1 %199, label %200, label %209

200:                                              ; preds = %185
  store i32 0, i32* %29, align 4
  %201 = load i32, i32* %12, align 4
  store i32 %201, i32* %16, align 4
  %202 = load i32, i32* %18, align 4
  store i32 %202, i32* %17, align 4
  %203 = load i32, i32* %13, align 4
  store i32 %203, i32* %11, align 4
  %204 = load i32, i32* %19, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  br label %223

207:                                              ; preds = %200
  %208 = load i32, i32* %19, align 4
  store i32 %208, i32* %25, align 4
  br label %209

209:                                              ; preds = %207, %185
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %18, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %18, align 4
  br label %181

213:                                              ; preds = %181
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %12, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %12, align 4
  br label %141

217:                                              ; preds = %141
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %13, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %13, align 4
  br label %136

221:                                              ; preds = %136
  %222 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %223

223:                                              ; preds = %221, %206, %177, %157, %70
  %224 = load i32, i32* %29, align 4
  %225 = load %struct.rl6231_pll_code*, %struct.rl6231_pll_code** %7, align 8
  %226 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 4
  %227 = load i32, i32* %17, align 4
  %228 = load %struct.rl6231_pll_code*, %struct.rl6231_pll_code** %7, align 8
  %229 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* %16, align 4
  %231 = load %struct.rl6231_pll_code*, %struct.rl6231_pll_code** %7, align 8
  %232 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %231, i32 0, i32 2
  store i32 %230, i32* %232, align 4
  %233 = load i32, i32* %11, align 4
  %234 = load %struct.rl6231_pll_code*, %struct.rl6231_pll_code** %7, align 8
  %235 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %234, i32 0, i32 3
  store i32 %233, i32* %235, align 4
  store i32 0, i32* %4, align 4
  br label %236

236:                                              ; preds = %223, %43
  %237 = load i32, i32* %4, align 4
  ret i32 %237
}

declare dso_local i32 @abs(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @gcd(i32, i32) #1

declare dso_local i32 @find_best_div(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
