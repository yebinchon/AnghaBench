; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_test_memcg_min.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_test_memcg_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSFT_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"memcg_test_0\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"memcg_test_1\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"memcg_test_2\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"memory.min\00", align 1
@KSFT_SKIP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"cgroup.subtree_control\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"+memory\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"memory.max\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"200M\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"memory.swap.max\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"child_memcg\00", align 1
@alloc_pagecache_50M_noexit = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"50M\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"75M\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"25M\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"500M\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"memory.current\00", align 1
@alloc_anon = common dso_local global i32 0, align 4
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_memcg_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_memcg_min(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [3 x i8*], align 16
  %5 = alloca [4 x i8*], align 16
  %6 = alloca [4 x i64], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %10, i32* %3, align 4
  %11 = bitcast [3 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 24, i1 false)
  %12 = bitcast [4 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 32, i1 false)
  %13 = call i32 (...) @get_temp_fd()
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %263

17:                                               ; preds = %1
  %18 = load i8*, i8** %2, align 8
  %19 = call i8* @cg_name(i8* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %20 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  store i8* %19, i8** %20, align 16
  %21 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %22 = load i8*, i8** %21, align 16
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %263

25:                                               ; preds = %17
  %26 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %27 = load i8*, i8** %26, align 16
  %28 = call i8* @cg_name(i8* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %29 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  store i8* %28, i8** %29, align 8
  %30 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %263

34:                                               ; preds = %25
  %35 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %36 = load i8*, i8** %35, align 16
  %37 = call i8* @cg_name(i8* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %38 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 2
  store i8* %37, i8** %38, align 16
  %39 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 2
  %40 = load i8*, i8** %39, align 16
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %263

43:                                               ; preds = %34
  %44 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %45 = load i8*, i8** %44, align 16
  %46 = call i64 @cg_create(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %263

49:                                               ; preds = %43
  %50 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %51 = load i8*, i8** %50, align 16
  %52 = call i64 @cg_read_long(i8* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @KSFT_SKIP, align 4
  store i32 %55, i32* %3, align 4
  br label %263

56:                                               ; preds = %49
  %57 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %58 = load i8*, i8** %57, align 16
  %59 = call i64 @cg_write(i8* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %263

62:                                               ; preds = %56
  %63 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %64 = load i8*, i8** %63, align 16
  %65 = call i64 @cg_write(i8* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %263

68:                                               ; preds = %62
  %69 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %70 = load i8*, i8** %69, align 16
  %71 = call i64 @cg_write(i8* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %263

74:                                               ; preds = %68
  %75 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @cg_create(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %263

80:                                               ; preds = %74
  %81 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @cg_write(i8* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %263

86:                                               ; preds = %80
  %87 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 2
  %88 = load i8*, i8** %87, align 16
  %89 = call i64 @cg_create(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %263

92:                                               ; preds = %86
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %134, %92
  %94 = load i32, i32* %7, align 4
  %95 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %96 = call i32 @ARRAY_SIZE(i8** %95)
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %137

98:                                               ; preds = %93
  %99 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i8* @cg_name_indexed(i8* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %104
  store i8* %102, i8** %105, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %98
  br label %263

112:                                              ; preds = %98
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @cg_create(i8* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %263

120:                                              ; preds = %112
  %121 = load i32, i32* %7, align 4
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %134

124:                                              ; preds = %120
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* @alloc_pagecache_50M_noexit, align 4
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  %133 = call i32 @cg_run_nowait(i8* %128, i32 %129, i8* %132)
  br label %134

134:                                              ; preds = %124, %123
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %93

137:                                              ; preds = %93
  %138 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %139 = load i8*, i8** %138, align 16
  %140 = call i64 @cg_write(i8* %139, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %263

143:                                              ; preds = %137
  %144 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @cg_write(i8* %145, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %263

149:                                              ; preds = %143
  %150 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %151 = load i8*, i8** %150, align 16
  %152 = call i64 @cg_write(i8* %151, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %263

155:                                              ; preds = %149
  %156 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @cg_write(i8* %157, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %263

161:                                              ; preds = %155
  %162 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 2
  %163 = load i8*, i8** %162, align 16
  %164 = call i64 @cg_write(i8* %163, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %263

167:                                              ; preds = %161
  %168 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 3
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @cg_write(i8* %169, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  br label %263

173:                                              ; preds = %167
  store i32 0, i32* %8, align 4
  br label %174

174:                                              ; preds = %187, %173
  %175 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  %176 = load i8*, i8** %175, align 8
  %177 = call i64 @cg_read_long(i8* %176, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %178 = call i64 @MB(i32 150)
  %179 = call i32 @values_close(i64 %177, i64 %178, i32 3)
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  br i1 %181, label %182, label %189

182:                                              ; preds = %174
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  %185 = icmp sgt i32 %183, 5
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  br label %189

187:                                              ; preds = %182
  %188 = call i32 @sleep(i32 1)
  br label %174

189:                                              ; preds = %186, %174
  %190 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 2
  %191 = load i8*, i8** %190, align 16
  %192 = load i32, i32* @alloc_anon, align 4
  %193 = call i64 @MB(i32 148)
  %194 = inttoptr i64 %193 to i8*
  %195 = call i64 @cg_run(i8* %191, i32 %192, i8* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %189
  br label %263

198:                                              ; preds = %189
  %199 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  %200 = load i8*, i8** %199, align 8
  %201 = call i64 @cg_read_long(i8* %200, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %202 = call i64 @MB(i32 50)
  %203 = call i32 @values_close(i64 %201, i64 %202, i32 3)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %198
  br label %263

206:                                              ; preds = %198
  store i32 0, i32* %7, align 4
  br label %207

207:                                              ; preds = %221, %206
  %208 = load i32, i32* %7, align 4
  %209 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %210 = call i32 @ARRAY_SIZE(i8** %209)
  %211 = icmp slt i32 %208, %210
  br i1 %211, label %212, label %224

212:                                              ; preds = %207
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %214
  %216 = load i8*, i8** %215, align 8
  %217 = call i64 @cg_read_long(i8* %216, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 %219
  store i64 %217, i64* %220, align 8
  br label %221

221:                                              ; preds = %212
  %222 = load i32, i32* %7, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %7, align 4
  br label %207

224:                                              ; preds = %207
  %225 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0
  %226 = load i64, i64* %225, align 16
  %227 = call i64 @MB(i32 33)
  %228 = call i32 @values_close(i64 %226, i64 %227, i32 10)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %224
  br label %263

231:                                              ; preds = %224
  %232 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 1
  %233 = load i64, i64* %232, align 8
  %234 = call i64 @MB(i32 17)
  %235 = call i32 @values_close(i64 %233, i64 %234, i32 10)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %231
  br label %263

238:                                              ; preds = %231
  %239 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 2
  %240 = load i64, i64* %239, align 16
  %241 = call i32 @values_close(i64 %240, i64 0, i32 1)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %238
  br label %263

244:                                              ; preds = %238
  %245 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 2
  %246 = load i8*, i8** %245, align 16
  %247 = load i32, i32* @alloc_anon, align 4
  %248 = call i64 @MB(i32 170)
  %249 = inttoptr i64 %248 to i8*
  %250 = call i64 @cg_run(i8* %246, i32 %247, i8* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %244
  br label %263

253:                                              ; preds = %244
  %254 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 1
  %255 = load i8*, i8** %254, align 8
  %256 = call i64 @cg_read_long(i8* %255, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %257 = call i64 @MB(i32 50)
  %258 = call i32 @values_close(i64 %256, i64 %257, i32 3)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %253
  br label %263

261:                                              ; preds = %253
  %262 = load i32, i32* @KSFT_PASS, align 4
  store i32 %262, i32* %3, align 4
  br label %263

263:                                              ; preds = %261, %260, %252, %243, %237, %230, %205, %197, %172, %166, %160, %154, %148, %142, %119, %111, %91, %85, %79, %73, %67, %61, %54, %48, %42, %33, %24, %16
  %264 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %265 = call i32 @ARRAY_SIZE(i8** %264)
  %266 = sub nsw i32 %265, 1
  store i32 %266, i32* %7, align 4
  br label %267

267:                                              ; preds = %288, %263
  %268 = load i32, i32* %7, align 4
  %269 = icmp sge i32 %268, 0
  br i1 %269, label %270, label %291

270:                                              ; preds = %267
  %271 = load i32, i32* %7, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %272
  %274 = load i8*, i8** %273, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %277, label %276

276:                                              ; preds = %270
  br label %288

277:                                              ; preds = %270
  %278 = load i32, i32* %7, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %279
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 @cg_destroy(i8* %281)
  %283 = load i32, i32* %7, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 %284
  %286 = load i8*, i8** %285, align 8
  %287 = call i32 @free(i8* %286)
  br label %288

288:                                              ; preds = %277, %276
  %289 = load i32, i32* %7, align 4
  %290 = add nsw i32 %289, -1
  store i32 %290, i32* %7, align 4
  br label %267

291:                                              ; preds = %267
  %292 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 0
  %293 = call i32 @ARRAY_SIZE(i8** %292)
  %294 = sub nsw i32 %293, 1
  store i32 %294, i32* %7, align 4
  br label %295

295:                                              ; preds = %316, %291
  %296 = load i32, i32* %7, align 4
  %297 = icmp sge i32 %296, 0
  br i1 %297, label %298, label %319

298:                                              ; preds = %295
  %299 = load i32, i32* %7, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 %300
  %302 = load i8*, i8** %301, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %305, label %304

304:                                              ; preds = %298
  br label %316

305:                                              ; preds = %298
  %306 = load i32, i32* %7, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 %307
  %309 = load i8*, i8** %308, align 8
  %310 = call i32 @cg_destroy(i8* %309)
  %311 = load i32, i32* %7, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 %312
  %314 = load i8*, i8** %313, align 8
  %315 = call i32 @free(i8* %314)
  br label %316

316:                                              ; preds = %305, %304
  %317 = load i32, i32* %7, align 4
  %318 = add nsw i32 %317, -1
  store i32 %318, i32* %7, align 4
  br label %295

319:                                              ; preds = %295
  %320 = load i32, i32* %9, align 4
  %321 = call i32 @close(i32 %320)
  %322 = load i32, i32* %3, align 4
  ret i32 %322
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

declare dso_local i32 @cg_run_nowait(i8*, i32, i8*) #2

declare dso_local i32 @values_close(i64, i64, i32) #2

declare dso_local i64 @MB(i32) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i64 @cg_run(i8*, i32, i8*) #2

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
