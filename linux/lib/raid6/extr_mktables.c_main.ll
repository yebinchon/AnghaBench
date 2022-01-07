; ModuleID = '/home/carl/AnghaBench/linux/lib/raid6/extr_mktables.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/lib/raid6/extr_mktables.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"#include <linux/raid/pq.h>\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"#include <linux/export.h>\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"\0Aconst u8  __attribute__((aligned(256)))\0Araid6_gfmul[256][256] =\0A{\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\09{\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"0x%02x,%c\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\09},\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"#ifdef __KERNEL__\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"EXPORT_SYMBOL(raid6_gfmul);\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"\0Aconst u8  __attribute__((aligned(256)))\0Araid6_vgfmul[256][32] =\0A{\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"EXPORT_SYMBOL(raid6_vgfmul);\0A\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"\0Aconst u8 __attribute__((aligned(256)))\0Araid6_gfexp[256] =\0A{\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"EXPORT_SYMBOL(raid6_gfexp);\0A\00", align 1
@.str.16 = private unnamed_addr constant [62 x i8] c"\0Aconst u8 __attribute__((aligned(256)))\0Araid6_gflog[256] =\0A{\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"EXPORT_SYMBOL(raid6_gflog);\0A\00", align 1
@.str.18 = private unnamed_addr constant [62 x i8] c"\0Aconst u8 __attribute__((aligned(256)))\0Araid6_gfinv[256] =\0A{\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"EXPORT_SYMBOL(raid6_gfinv);\0A\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"\0Aconst u8 __attribute__((aligned(256)))\0Araid6_gfexi[256] =\0A{\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"EXPORT_SYMBOL(raid6_gfexi);\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [256 x i32], align 16
  %11 = alloca [256 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %48, %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %51

18:                                               ; preds = %15
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %43, %18
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %23, label %46

23:                                               ; preds = %20
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %39, %23
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %30, %31
  %33 = call i32 @gfmul(i32 %29, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 7
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 10, i32 32
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %33, i32 %37)
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %25

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 8
  store i32 %45, i32* %7, align 4
  br label %20

46:                                               ; preds = %20
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %15

51:                                               ; preds = %15
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %118, %51
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 256
  br i1 %59, label %60, label %121

60:                                               ; preds = %57
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %85, %60
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 16
  br i1 %64, label %65, label %88

65:                                               ; preds = %62
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %81, %65
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 8
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %72, %73
  %75 = call i32 @gfmul(i32 %71, i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 7
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 10, i32 32
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %75, i32 %79)
  br label %81

81:                                               ; preds = %70
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %67

84:                                               ; preds = %67
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 8
  store i32 %87, i32* %7, align 4
  br label %62

88:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %113, %88
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 16
  br i1 %91, label %92, label %116

92:                                               ; preds = %89
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %109, %92
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 8
  br i1 %96, label %97, label %112

97:                                               ; preds = %94
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %99, %100
  %102 = shl i32 %101, 4
  %103 = call i32 @gfmul(i32 %98, i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, 7
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 10, i32 32
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %103, i32 %107)
  br label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %94

112:                                              ; preds = %94
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 8
  store i32 %115, i32* %7, align 4
  br label %89

116:                                              ; preds = %89
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %57

121:                                              ; preds = %57
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %158, %121
  %128 = load i32, i32* %6, align 4
  %129 = icmp slt i32 %128, 256
  br i1 %129, label %130, label %161

130:                                              ; preds = %127
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %132

132:                                              ; preds = %154, %130
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %133, 8
  br i1 %134, label %135, label %157

135:                                              ; preds = %132
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %140
  store i32 %136, i32* %141, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp eq i32 %143, 7
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 10, i32 32
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %142, i32 %146)
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @gfmul(i32 %148, i32 2)
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %153

152:                                              ; preds = %135
  store i32 0, i32* %9, align 4
  br label %153

153:                                              ; preds = %152, %135
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %132

157:                                              ; preds = %132
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 8
  store i32 %160, i32* %6, align 4
  br label %127

161:                                              ; preds = %127
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %167

167:                                              ; preds = %205, %161
  %168 = load i32, i32* %6, align 4
  %169 = icmp slt i32 %168, 256
  br i1 %169, label %170, label %208

170:                                              ; preds = %167
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %172

172:                                              ; preds = %201, %170
  %173 = load i32, i32* %7, align 4
  %174 = icmp slt i32 %173, 8
  br i1 %174, label %175, label %204

175:                                              ; preds = %172
  store i32 255, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %176

176:                                              ; preds = %191, %175
  %177 = load i32, i32* %8, align 4
  %178 = icmp slt i32 %177, 256
  br i1 %178, label %179, label %194

179:                                              ; preds = %176
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %184, %185
  %187 = icmp eq i32 %183, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %179
  %189 = load i32, i32* %8, align 4
  store i32 %189, i32* %9, align 4
  br label %194

190:                                              ; preds = %179
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %8, align 4
  br label %176

194:                                              ; preds = %188, %176
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %7, align 4
  %197 = icmp eq i32 %196, 7
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i32 10, i32 32
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %195, i32 %199)
  br label %201

201:                                              ; preds = %194
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %7, align 4
  br label %172

204:                                              ; preds = %172
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %6, align 4
  %207 = add nsw i32 %206, 8
  store i32 %207, i32* %6, align 4
  br label %167

208:                                              ; preds = %167
  %209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %214

214:                                              ; preds = %242, %208
  %215 = load i32, i32* %6, align 4
  %216 = icmp slt i32 %215, 256
  br i1 %216, label %217, label %245

217:                                              ; preds = %214
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %219

219:                                              ; preds = %238, %217
  %220 = load i32, i32* %7, align 4
  %221 = icmp slt i32 %220, 8
  br i1 %221, label %222, label %241

222:                                              ; preds = %219
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* %7, align 4
  %225 = add nsw i32 %223, %224
  %226 = call i32 @gfpow(i32 %225, i32 254)
  store i32 %226, i32* %9, align 4
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* %7, align 4
  %229 = add nsw i32 %227, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 %230
  store i32 %226, i32* %231, align 4
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* %7, align 4
  %234 = icmp eq i32 %233, 7
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i32 10, i32 32
  %237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %232, i32 %236)
  br label %238

238:                                              ; preds = %222
  %239 = load i32, i32* %7, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %7, align 4
  br label %219

241:                                              ; preds = %219
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %6, align 4
  %244 = add nsw i32 %243, 8
  store i32 %244, i32* %6, align 4
  br label %214

245:                                              ; preds = %214
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0))
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %250 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %251

251:                                              ; preds = %279, %245
  %252 = load i32, i32* %6, align 4
  %253 = icmp slt i32 %252, 256
  br i1 %253, label %254, label %282

254:                                              ; preds = %251
  %255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %256

256:                                              ; preds = %275, %254
  %257 = load i32, i32* %7, align 4
  %258 = icmp slt i32 %257, 8
  br i1 %258, label %259, label %278

259:                                              ; preds = %256
  %260 = load i32, i32* %6, align 4
  %261 = load i32, i32* %7, align 4
  %262 = add nsw i32 %260, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = xor i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %7, align 4
  %271 = icmp eq i32 %270, 7
  %272 = zext i1 %271 to i64
  %273 = select i1 %271, i32 10, i32 32
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %269, i32 %273)
  br label %275

275:                                              ; preds = %259
  %276 = load i32, i32* %7, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %7, align 4
  br label %256

278:                                              ; preds = %256
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %6, align 4
  %281 = add nsw i32 %280, 8
  store i32 %281, i32* %6, align 4
  br label %251

282:                                              ; preds = %251
  %283 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %285 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0))
  %286 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @gfmul(i32, i32) #1

declare dso_local i32 @gfpow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
