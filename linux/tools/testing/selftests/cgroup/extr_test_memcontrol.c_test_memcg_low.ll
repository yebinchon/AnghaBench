; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_test_memcg_low.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_test_memcg_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSFT_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"memcg_test_0\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"memcg_test_1\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"memcg_test_2\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"memory.low\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"cgroup.subtree_control\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"+memory\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"memory.max\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"200M\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"memory.swap.max\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"child_memcg\00", align 1
@alloc_pagecache_50M = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"50M\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"75M\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"25M\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"500M\00", align 1
@alloc_anon = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"memory.current\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [49 x i8] c"memory.low prevents from allocating anon memory\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"memory.events\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"oom \00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"low \00", align 1
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_memcg_low to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_memcg_low(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [3 x i8*], align 16
  %5 = alloca [4 x i8*], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i64], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %11, i32* %3, align 4
  %12 = bitcast [3 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 24, i1 false)
  %13 = bitcast [4 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 32, i1 false)
  %14 = call i32 (...) @get_temp_fd()
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %282

18:                                               ; preds = %1
  %19 = load i8*, i8** %2, align 8
  %20 = call i8* @cg_name(i8* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %21 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  store i8* %20, i8** %21, align 16
  %22 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %23 = load i8*, i8** %22, align 16
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %282

26:                                               ; preds = %18
  %27 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %28 = load i8*, i8** %27, align 16
  %29 = call i8* @cg_name(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %30 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  br label %282

35:                                               ; preds = %26
  %36 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %37 = load i8*, i8** %36, align 16
  %38 = call i8* @cg_name(i8* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %39 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 2
  store i8* %38, i8** %39, align 16
  %40 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 2
  %41 = load i8*, i8** %40, align 16
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  br label %282

44:                                               ; preds = %35
  %45 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %46 = load i8*, i8** %45, align 16
  %47 = call i64 @cg_create(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %282

50:                                               ; preds = %44
  %51 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %52 = load i8*, i8** %51, align 16
  %53 = call i64 @cg_read_long(i8* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %282

56:                                               ; preds = %50
  %57 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %58 = load i8*, i8** %57, align 16
  %59 = call i64 @cg_write(i8* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %282

62:                                               ; preds = %56
  %63 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %64 = load i8*, i8** %63, align 16
  %65 = call i64 @cg_write(i8* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %282

68:                                               ; preds = %62
  %69 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %70 = load i8*, i8** %69, align 16
  %71 = call i64 @cg_write(i8* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %282

74:                                               ; preds = %68
  %75 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @cg_create(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %282

80:                                               ; preds = %74
  %81 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @cg_write(i8* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %282

86:                                               ; preds = %80
  %87 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 2
  %88 = load i8*, i8** %87, align 16
  %89 = call i64 @cg_create(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %282

92:                                               ; preds = %86
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %137, %92
  %94 = load i32, i32* %9, align 4
  %95 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %96 = call i32 @ARRAY_SIZE(i8** %95)
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %140

98:                                               ; preds = %93
  %99 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i8* @cg_name_indexed(i8* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %104
  store i8* %102, i8** %105, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %98
  br label %282

112:                                              ; preds = %98
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @cg_create(i8* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %282

120:                                              ; preds = %112
  %121 = load i32, i32* %9, align 4
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %137

124:                                              ; preds = %120
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* @alloc_pagecache_50M, align 4
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  %133 = call i64 @cg_run(i8* %128, i32 %129, i8* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %124
  br label %282

136:                                              ; preds = %124
  br label %137

137:                                              ; preds = %136, %123
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  br label %93

140:                                              ; preds = %93
  %141 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %142 = load i8*, i8** %141, align 16
  %143 = call i64 @cg_write(i8* %142, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %282

146:                                              ; preds = %140
  %147 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i64 @cg_write(i8* %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %282

152:                                              ; preds = %146
  %153 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %154 = load i8*, i8** %153, align 16
  %155 = call i64 @cg_write(i8* %154, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %282

158:                                              ; preds = %152
  %159 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @cg_write(i8* %160, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %282

164:                                              ; preds = %158
  %165 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 2
  %166 = load i8*, i8** %165, align 16
  %167 = call i64 @cg_write(i8* %166, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %282

170:                                              ; preds = %164
  %171 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 3
  %172 = load i8*, i8** %171, align 8
  %173 = call i64 @cg_write(i8* %172, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  br label %282

176:                                              ; preds = %170
  %177 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 2
  %178 = load i8*, i8** %177, align 16
  %179 = load i32, i32* @alloc_anon, align 4
  %180 = call i64 @MB(i32 148)
  %181 = inttoptr i64 %180 to i8*
  %182 = call i64 @cg_run(i8* %178, i32 %179, i8* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %176
  br label %282

185:                                              ; preds = %176
  %186 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  %187 = load i8*, i8** %186, align 8
  %188 = call i64 @cg_read_long(i8* %187, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %189 = call i64 @MB(i32 50)
  %190 = call i32 @values_close(i64 %188, i64 %189, i32 3)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %185
  br label %282

193:                                              ; preds = %185
  store i32 0, i32* %9, align 4
  br label %194

194:                                              ; preds = %208, %193
  %195 = load i32, i32* %9, align 4
  %196 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %197 = call i32 @ARRAY_SIZE(i8** %196)
  %198 = icmp slt i32 %195, %197
  br i1 %198, label %199, label %211

199:                                              ; preds = %194
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %201
  %203 = load i8*, i8** %202, align 8
  %204 = call i64 @cg_read_long(i8* %203, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %206
  store i64 %204, i64* %207, align 8
  br label %208

208:                                              ; preds = %199
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %9, align 4
  br label %194

211:                                              ; preds = %194
  %212 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  %213 = load i64, i64* %212, align 16
  %214 = call i64 @MB(i32 33)
  %215 = call i32 @values_close(i64 %213, i64 %214, i32 10)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %211
  br label %282

218:                                              ; preds = %211
  %219 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 1
  %220 = load i64, i64* %219, align 8
  %221 = call i64 @MB(i32 17)
  %222 = call i32 @values_close(i64 %220, i64 %221, i32 10)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %218
  br label %282

225:                                              ; preds = %218
  %226 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 2
  %227 = load i64, i64* %226, align 16
  %228 = call i32 @values_close(i64 %227, i64 0, i32 1)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %225
  br label %282

231:                                              ; preds = %225
  %232 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 2
  %233 = load i8*, i8** %232, align 16
  %234 = load i32, i32* @alloc_anon, align 4
  %235 = call i64 @MB(i32 166)
  %236 = inttoptr i64 %235 to i8*
  %237 = call i64 @cg_run(i8* %233, i32 %234, i8* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %231
  %240 = load i32, i32* @stderr, align 4
  %241 = call i32 @fprintf(i32 %240, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0))
  br label %282

242:                                              ; preds = %231
  store i32 0, i32* %9, align 4
  br label %243

243:                                              ; preds = %277, %242
  %244 = load i32, i32* %9, align 4
  %245 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %246 = call i32 @ARRAY_SIZE(i8** %245)
  %247 = icmp slt i32 %244, %246
  br i1 %247, label %248, label %280

248:                                              ; preds = %243
  %249 = load i32, i32* %9, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %250
  %252 = load i8*, i8** %251, align 8
  %253 = call i64 @cg_read_key_long(i8* %252, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  store i64 %253, i64* %7, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %255
  %257 = load i8*, i8** %256, align 8
  %258 = call i64 @cg_read_key_long(i8* %257, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  store i64 %258, i64* %6, align 8
  %259 = load i64, i64* %7, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %248
  br label %282

262:                                              ; preds = %248
  %263 = load i32, i32* %9, align 4
  %264 = icmp slt i32 %263, 2
  br i1 %264, label %265, label %269

265:                                              ; preds = %262
  %266 = load i64, i64* %6, align 8
  %267 = icmp sle i64 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %265
  br label %282

269:                                              ; preds = %265, %262
  %270 = load i32, i32* %9, align 4
  %271 = icmp sge i32 %270, 2
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = load i64, i64* %6, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %272
  br label %282

276:                                              ; preds = %272, %269
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %9, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %9, align 4
  br label %243

280:                                              ; preds = %243
  %281 = load i32, i32* @KSFT_PASS, align 4
  store i32 %281, i32* %3, align 4
  br label %282

282:                                              ; preds = %280, %275, %268, %261, %239, %230, %224, %217, %192, %184, %175, %169, %163, %157, %151, %145, %135, %119, %111, %91, %85, %79, %73, %67, %61, %55, %49, %43, %34, %25, %17
  %283 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %284 = call i32 @ARRAY_SIZE(i8** %283)
  %285 = sub nsw i32 %284, 1
  store i32 %285, i32* %9, align 4
  br label %286

286:                                              ; preds = %307, %282
  %287 = load i32, i32* %9, align 4
  %288 = icmp sge i32 %287, 0
  br i1 %288, label %289, label %310

289:                                              ; preds = %286
  %290 = load i32, i32* %9, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %291
  %293 = load i8*, i8** %292, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %296, label %295

295:                                              ; preds = %289
  br label %307

296:                                              ; preds = %289
  %297 = load i32, i32* %9, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %298
  %300 = load i8*, i8** %299, align 8
  %301 = call i32 @cg_destroy(i8* %300)
  %302 = load i32, i32* %9, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %303
  %305 = load i8*, i8** %304, align 8
  %306 = call i32 @free(i8* %305)
  br label %307

307:                                              ; preds = %296, %295
  %308 = load i32, i32* %9, align 4
  %309 = add nsw i32 %308, -1
  store i32 %309, i32* %9, align 4
  br label %286

310:                                              ; preds = %286
  %311 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %312 = call i32 @ARRAY_SIZE(i8** %311)
  %313 = sub nsw i32 %312, 1
  store i32 %313, i32* %9, align 4
  br label %314

314:                                              ; preds = %335, %310
  %315 = load i32, i32* %9, align 4
  %316 = icmp sge i32 %315, 0
  br i1 %316, label %317, label %338

317:                                              ; preds = %314
  %318 = load i32, i32* %9, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 %319
  %321 = load i8*, i8** %320, align 8
  %322 = icmp ne i8* %321, null
  br i1 %322, label %324, label %323

323:                                              ; preds = %317
  br label %335

324:                                              ; preds = %317
  %325 = load i32, i32* %9, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 %326
  %328 = load i8*, i8** %327, align 8
  %329 = call i32 @cg_destroy(i8* %328)
  %330 = load i32, i32* %9, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 %331
  %333 = load i8*, i8** %332, align 8
  %334 = call i32 @free(i8* %333)
  br label %335

335:                                              ; preds = %324, %323
  %336 = load i32, i32* %9, align 4
  %337 = add nsw i32 %336, -1
  store i32 %337, i32* %9, align 4
  br label %314

338:                                              ; preds = %314
  %339 = load i32, i32* %10, align 4
  %340 = call i32 @close(i32 %339)
  %341 = load i32, i32* %3, align 4
  ret i32 %341
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_temp_fd(...) #2

declare dso_local i8* @cg_name(i8*, i8*) #2

declare dso_local i64 @cg_create(i8*) #2

declare dso_local i64 @cg_read_long(i8*, i8*) #2

declare dso_local i64 @cg_write(i8*, i8*, i8*) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i8* @cg_name_indexed(i8*, i8*, i32) #2

declare dso_local i64 @cg_run(i8*, i32, i8*) #2

declare dso_local i64 @MB(i32) #2

declare dso_local i32 @values_close(i64, i64, i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i64 @cg_read_key_long(i8*, i8*, i8*) #2

declare dso_local i32 @cg_destroy(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
