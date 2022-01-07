; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_fllhj_apply.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_fllhj_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_fll = type { i32, i64, %struct.madera* }
%struct.madera = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"fin=%d, fout=%d\0A\00", align 1
@MADERA_FLLHJ_MAX_THRESH = common dso_local global i32 0, align 4
@MADERA_FLLHJ_LOW_THRESH = common dso_local global i32 0, align 4
@MADERA_FLLHJ_LOW_GAINS = common dso_local global i32 0, align 4
@MADERA_FLLHJ_MID_THRESH = common dso_local global i32 0, align 4
@MADERA_FLLHJ_MID_GAINS = common dso_local global i32 0, align 4
@MADERA_FLLHJ_HIGH_GAINS = common dso_local global i32 0, align 4
@MADERA_FLLHJ_FRAC_MIN_N = common dso_local global i32 0, align 4
@MADERA_FLLHJ_FRAC_MAX_N = common dso_local global i32 0, align 4
@MADERA_FLLHJ_INT_MIN_N = common dso_local global i32 0, align 4
@MADERA_FLLHJ_INT_MAX_N = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"refdiv=%d, fref=%d, frac:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"FBDIV (%d) must be >= 1\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"FBDIV (%u) >= 1024\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"lockdet=%d, hp=0x%x, fbdiv:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"fll_n=%d, gcd=%d, theta=%d, lambda=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"N not in valid %s mode range %d-%d: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"fractional\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Invalid fbdiv for %s mode (%u)\0A\00", align 1
@MADERA_FLL_CONTROL_2_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_N_SHIFT = common dso_local global i32 0, align 4
@MADERA_FLL_CONTROL_3_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_THETA_MASK = common dso_local global i32 0, align 4
@MADERA_FLL1_THETA_SHIFT = common dso_local global i32 0, align 4
@MADERA_FLL_CONTROL_4_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_LAMBDA_MASK = common dso_local global i32 0, align 4
@MADERA_FLL1_LAMBDA_SHIFT = common dso_local global i32 0, align 4
@MADERA_FLL_CONTROL_5_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_FB_DIV_MASK = common dso_local global i32 0, align 4
@MADERA_FLL1_FB_DIV_SHIFT = common dso_local global i32 0, align 4
@MADERA_FLL_CONTROL_6_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_REFCLK_DIV_MASK = common dso_local global i32 0, align 4
@MADERA_FLL1_REFCLK_DIV_SHIFT = common dso_local global i32 0, align 4
@MADERA_FLL_GAIN_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_HP_SHIFT = common dso_local global i32 0, align 4
@MADERA_FLL1_PHASEDET_ENA_SHIFT = common dso_local global i32 0, align 4
@MADERA_FLL_CONTROL_10_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_HP_MASK = common dso_local global i32 0, align 4
@MADERA_FLL1_PHASEDET_ENA_MASK = common dso_local global i32 0, align 4
@MADERA_FLL_CONTROL_11_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_LOCKDET_THR_MASK = common dso_local global i32 0, align 4
@MADERA_FLL1_LOCKDET_THR_SHIFT = common dso_local global i32 0, align 4
@MADERA_FLL1_DIGITAL_TEST_1_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL1_SYNC_EFS_ENA_MASK = common dso_local global i32 0, align 4
@MADERA_FLL1_CLK_VCO_FAST_SRC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.madera_fll*, i32)* @madera_fllhj_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_fllhj_apply(%struct.madera_fll* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.madera_fll*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.madera*, align 8
  %7 = alloca i32, align 4
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
  store %struct.madera_fll* %0, %struct.madera_fll** %4, align 8
  store i32 %1, i32* %5, align 4
  %25 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %26 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %25, i32 0, i32 2
  %27 = load %struct.madera*, %struct.madera** %26, align 8
  store %struct.madera* %27, %struct.madera** %6, align 8
  store i32 0, i32* %15, align 4
  %28 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %31 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (%struct.madera_fll*, i8*, i32, i32, ...) @madera_fll_dbg(%struct.madera_fll* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %46, %2
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 1, %39
  %41 = sdiv i32 %38, %40
  %42 = load i32, i32* @MADERA_FLLHJ_MAX_THRESH, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %49

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %34

49:                                               ; preds = %44, %34
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %7, align 4
  %52 = shl i32 1, %51
  %53 = sdiv i32 %50, %52
  store i32 %53, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %54 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %55 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = srem i32 %57, %58
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @MADERA_FLLHJ_LOW_THRESH, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %49
  store i32 2, i32* %10, align 4
  %64 = load i32, i32* @MADERA_FLLHJ_LOW_GAINS, align 4
  store i32 %64, i32* %22, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 256, i32* %11, align 4
  br label %69

68:                                               ; preds = %63
  store i32 4, i32* %11, align 4
  br label %69

69:                                               ; preds = %68, %67
  br label %87

70:                                               ; preds = %49
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @MADERA_FLLHJ_MID_THRESH, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  store i32 8, i32* %10, align 4
  %75 = load i32, i32* @MADERA_FLLHJ_MID_GAINS, align 4
  store i32 %75, i32* %22, align 4
  store i32 1, i32* %11, align 4
  br label %86

76:                                               ; preds = %70
  store i32 8, i32* %10, align 4
  %77 = load i32, i32* @MADERA_FLLHJ_HIGH_GAINS, align 4
  store i32 %77, i32* %22, align 4
  store i32 1, i32* %11, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  store i32 3, i32* %13, align 4
  %81 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %82 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %83, 6
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %80, %76
  br label %86

86:                                               ; preds = %85, %74
  br label %87

87:                                               ; preds = %86, %69
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  store i32 3, i32* %12, align 4
  %91 = load i32, i32* @MADERA_FLLHJ_FRAC_MIN_N, align 4
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* @MADERA_FLLHJ_FRAC_MAX_N, align 4
  store i32 %92, i32* %18, align 4
  br label %96

93:                                               ; preds = %87
  store i32 0, i32* %12, align 4
  %94 = load i32, i32* @MADERA_FLLHJ_INT_MIN_N, align 4
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* @MADERA_FLLHJ_INT_MAX_N, align 4
  store i32 %95, i32* %18, align 4
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = sdiv i32 %97, %98
  store i32 %99, i32* %19, align 4
  %100 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %15, align 4
  %104 = call i32 (%struct.madera_fll*, i8*, i32, i32, ...) @madera_fll_dbg(%struct.madera_fll* %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %122, %96
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* %11, align 4
  %108 = udiv i32 %106, %107
  %109 = load i32, i32* %17, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %105
  %112 = load i32, i32* %11, align 4
  %113 = sdiv i32 %112, 2
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call i32 (%struct.madera_fll*, i8*, ...) @madera_fll_err(%struct.madera_fll* %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %343

122:                                              ; preds = %111
  br label %105

123:                                              ; preds = %105
  br label %124

124:                                              ; preds = %146, %123
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* %11, align 4
  %130 = udiv i32 %128, %129
  %131 = load i32, i32* %18, align 4
  %132 = icmp ugt i32 %130, %131
  br label %133

133:                                              ; preds = %127, %124
  %134 = phi i1 [ false, %124 ], [ %132, %127 ]
  br i1 %134, label %135, label %147

135:                                              ; preds = %133
  %136 = load i32, i32* %11, align 4
  %137 = mul nsw i32 %136, 2
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp sge i32 %138, 1024
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %142 = load i32, i32* %11, align 4
  %143 = call i32 (%struct.madera_fll*, i8*, ...) @madera_fll_err(%struct.madera_fll* %141, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %343

146:                                              ; preds = %135
  br label %124

147:                                              ; preds = %133
  %148 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i32 (%struct.madera_fll*, i8*, i32, i32, ...) @madera_fll_dbg(%struct.madera_fll* %148, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %8, align 4
  %156 = mul nsw i32 %154, %155
  %157 = call i32 @gcd(i32 %153, i32 %156)
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %14, align 4
  %160 = sdiv i32 %158, %159
  store i32 %160, i32* %24, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %11, align 4
  %163 = mul nsw i32 %161, %162
  %164 = load i32, i32* %14, align 4
  %165 = sdiv i32 %163, %164
  store i32 %165, i32* %21, align 4
  %166 = load i32, i32* %24, align 4
  %167 = load i32, i32* %21, align 4
  %168 = udiv i32 %166, %167
  store i32 %168, i32* %16, align 4
  %169 = load i32, i32* %24, align 4
  %170 = load i32, i32* %21, align 4
  %171 = urem i32 %169, %170
  store i32 %171, i32* %20, align 4
  %172 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %20, align 4
  %176 = load i32, i32* %21, align 4
  %177 = call i32 (%struct.madera_fll*, i8*, i32, i32, ...) @madera_fll_dbg(%struct.madera_fll* %172, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %173, i32 %174, i32 %175, i32 %176)
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %17, align 4
  %180 = icmp ult i32 %178, %179
  br i1 %180, label %185, label %181

181:                                              ; preds = %147
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* %18, align 4
  %184 = icmp ugt i32 %182, %183
  br i1 %184, label %185, label %197

185:                                              ; preds = %181, %147
  %186 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %187 = load i32, i32* %15, align 4
  %188 = icmp ne i32 %187, 0
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* %18, align 4
  %193 = load i32, i32* %16, align 4
  %194 = call i32 (%struct.madera_fll*, i8*, ...) @madera_fll_err(%struct.madera_fll* %186, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* %190, i32 %191, i32 %192, i32 %193)
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %3, align 4
  br label %343

197:                                              ; preds = %181
  %198 = load i32, i32* %11, align 4
  %199 = icmp slt i32 %198, 1
  br i1 %199, label %212, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %15, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load i32, i32* %11, align 4
  %205 = icmp sge i32 %204, 1024
  br i1 %205, label %212, label %206

206:                                              ; preds = %203, %200
  %207 = load i32, i32* %15, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %222, label %209

209:                                              ; preds = %206
  %210 = load i32, i32* %11, align 4
  %211 = icmp sge i32 %210, 256
  br i1 %211, label %212, label %222

212:                                              ; preds = %209, %203, %197
  %213 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %214 = load i32, i32* %15, align 4
  %215 = icmp ne i32 %214, 0
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)
  %218 = load i32, i32* %11, align 4
  %219 = call i32 (%struct.madera_fll*, i8*, ...) @madera_fll_err(%struct.madera_fll* %213, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %217, i32 %218)
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %3, align 4
  br label %343

222:                                              ; preds = %209, %206
  %223 = load %struct.madera*, %struct.madera** %6, align 8
  %224 = getelementptr inbounds %struct.madera, %struct.madera* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %227 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @MADERA_FLL_CONTROL_2_OFFS, align 8
  %230 = add nsw i64 %228, %229
  %231 = load i32, i32* %16, align 4
  %232 = load i32, i32* @MADERA_FLL1_N_SHIFT, align 4
  %233 = shl i32 %231, %232
  %234 = call i32 @regmap_write(i32 %225, i64 %230, i32 %233)
  %235 = load %struct.madera*, %struct.madera** %6, align 8
  %236 = getelementptr inbounds %struct.madera, %struct.madera* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %239 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @MADERA_FLL_CONTROL_3_OFFS, align 8
  %242 = add nsw i64 %240, %241
  %243 = load i32, i32* @MADERA_FLL1_THETA_MASK, align 4
  %244 = load i32, i32* %20, align 4
  %245 = load i32, i32* @MADERA_FLL1_THETA_SHIFT, align 4
  %246 = shl i32 %244, %245
  %247 = call i32 @regmap_update_bits(i32 %237, i64 %242, i32 %243, i32 %246)
  %248 = load %struct.madera*, %struct.madera** %6, align 8
  %249 = getelementptr inbounds %struct.madera, %struct.madera* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %252 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @MADERA_FLL_CONTROL_4_OFFS, align 8
  %255 = add nsw i64 %253, %254
  %256 = load i32, i32* @MADERA_FLL1_LAMBDA_MASK, align 4
  %257 = load i32, i32* %21, align 4
  %258 = load i32, i32* @MADERA_FLL1_LAMBDA_SHIFT, align 4
  %259 = shl i32 %257, %258
  %260 = call i32 @regmap_update_bits(i32 %250, i64 %255, i32 %256, i32 %259)
  %261 = load %struct.madera*, %struct.madera** %6, align 8
  %262 = getelementptr inbounds %struct.madera, %struct.madera* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %265 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @MADERA_FLL_CONTROL_5_OFFS, align 8
  %268 = add nsw i64 %266, %267
  %269 = load i32, i32* @MADERA_FLL1_FB_DIV_MASK, align 4
  %270 = load i32, i32* %11, align 4
  %271 = load i32, i32* @MADERA_FLL1_FB_DIV_SHIFT, align 4
  %272 = shl i32 %270, %271
  %273 = call i32 @regmap_update_bits(i32 %263, i64 %268, i32 %269, i32 %272)
  %274 = load %struct.madera*, %struct.madera** %6, align 8
  %275 = getelementptr inbounds %struct.madera, %struct.madera* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %278 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @MADERA_FLL_CONTROL_6_OFFS, align 8
  %281 = add nsw i64 %279, %280
  %282 = load i32, i32* @MADERA_FLL1_REFCLK_DIV_MASK, align 4
  %283 = load i32, i32* %7, align 4
  %284 = load i32, i32* @MADERA_FLL1_REFCLK_DIV_SHIFT, align 4
  %285 = shl i32 %283, %284
  %286 = call i32 @regmap_update_bits(i32 %276, i64 %281, i32 %282, i32 %285)
  %287 = load %struct.madera*, %struct.madera** %6, align 8
  %288 = getelementptr inbounds %struct.madera, %struct.madera* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %291 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @MADERA_FLL_GAIN_OFFS, align 8
  %294 = add nsw i64 %292, %293
  %295 = load i32, i32* %22, align 4
  %296 = call i32 @regmap_update_bits(i32 %289, i64 %294, i32 65535, i32 %295)
  %297 = load i32, i32* %12, align 4
  %298 = load i32, i32* @MADERA_FLL1_HP_SHIFT, align 4
  %299 = shl i32 %297, %298
  store i32 %299, i32* %23, align 4
  %300 = load i32, i32* @MADERA_FLL1_PHASEDET_ENA_SHIFT, align 4
  %301 = shl i32 1, %300
  %302 = load i32, i32* %23, align 4
  %303 = or i32 %302, %301
  store i32 %303, i32* %23, align 4
  %304 = load %struct.madera*, %struct.madera** %6, align 8
  %305 = getelementptr inbounds %struct.madera, %struct.madera* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %308 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %307, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @MADERA_FLL_CONTROL_10_OFFS, align 8
  %311 = add nsw i64 %309, %310
  %312 = load i32, i32* @MADERA_FLL1_HP_MASK, align 4
  %313 = load i32, i32* @MADERA_FLL1_PHASEDET_ENA_MASK, align 4
  %314 = or i32 %312, %313
  %315 = load i32, i32* %23, align 4
  %316 = call i32 @regmap_update_bits(i32 %306, i64 %311, i32 %314, i32 %315)
  %317 = load %struct.madera*, %struct.madera** %6, align 8
  %318 = getelementptr inbounds %struct.madera, %struct.madera* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %321 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @MADERA_FLL_CONTROL_11_OFFS, align 8
  %324 = add nsw i64 %322, %323
  %325 = load i32, i32* @MADERA_FLL1_LOCKDET_THR_MASK, align 4
  %326 = load i32, i32* %10, align 4
  %327 = load i32, i32* @MADERA_FLL1_LOCKDET_THR_SHIFT, align 4
  %328 = shl i32 %326, %327
  %329 = call i32 @regmap_update_bits(i32 %319, i64 %324, i32 %325, i32 %328)
  %330 = load %struct.madera*, %struct.madera** %6, align 8
  %331 = getelementptr inbounds %struct.madera, %struct.madera* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.madera_fll*, %struct.madera_fll** %4, align 8
  %334 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @MADERA_FLL1_DIGITAL_TEST_1_OFFS, align 8
  %337 = add nsw i64 %335, %336
  %338 = load i32, i32* @MADERA_FLL1_SYNC_EFS_ENA_MASK, align 4
  %339 = load i32, i32* @MADERA_FLL1_CLK_VCO_FAST_SRC_MASK, align 4
  %340 = or i32 %338, %339
  %341 = load i32, i32* %13, align 4
  %342 = call i32 @regmap_update_bits(i32 %332, i64 %337, i32 %340, i32 %341)
  store i32 0, i32* %3, align 4
  br label %343

343:                                              ; preds = %222, %212, %185, %140, %116
  %344 = load i32, i32* %3, align 4
  ret i32 %344
}

declare dso_local i32 @madera_fll_dbg(%struct.madera_fll*, i8*, i32, i32, ...) #1

declare dso_local i32 @madera_fll_err(%struct.madera_fll*, i8*, ...) #1

declare dso_local i32 @gcd(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
