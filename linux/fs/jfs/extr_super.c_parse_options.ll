; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_super.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_super.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.jfs_sb_info = type { i32, i32, i8*, i32, i32 }
%struct.request_queue = type { i32 }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@tokens = common dso_local global i32 0, align 4
@JFS_NOINTEGRITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"JFS: charset not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"JFS: Cannot determine volume size\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@JFS_ERR_REMOUNT_RO = common dso_local global i32 0, align 4
@JFS_ERR_PANIC = common dso_local global i32 0, align 4
@JFS_ERR_CONTINUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"remount-ro\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"panic\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"JFS: %s is an invalid error handler\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"JFS: quota operations not supported\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"JFS: Invalid value of umask\0A\00", align 1
@JFS_DISCARD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [45 x i8] c"JFS: discard option not supported on device\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"jfs: Unrecognized mount option \22%s\22 or missing value\0A\00", align 1
@JFS_GRPQUOTA = common dso_local global i32 0, align 4
@JFS_USRQUOTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.super_block*, i64*, i32*)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(i8* %0, %struct.super_block* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.jfs_sb_info*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.request_queue*, align 8
  %29 = alloca %struct.request_queue*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.super_block* %1, %struct.super_block** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* inttoptr (i64 -1 to i8*), i8** %10, align 8
  %32 = load %struct.super_block*, %struct.super_block** %7, align 8
  %33 = call %struct.jfs_sb_info* @JFS_SBI(%struct.super_block* %32)
  store %struct.jfs_sb_info* %33, %struct.jfs_sb_info** %12, align 8
  %34 = load i64*, i64** %8, align 8
  store i64 0, i64* %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %345

38:                                               ; preds = %4
  br label %39

39:                                               ; preds = %322, %319, %38
  %40 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %40, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %323

42:                                               ; preds = %39
  %43 = load i32, i32* @MAX_OPT_ARGS, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %13, align 8
  %46 = alloca %struct.TYPE_4__, i64 %44, align 16
  store i64 %44, i64* %14, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  store i32 2, i32* %16, align 4
  br label %319

51:                                               ; preds = %42
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* @tokens, align 4
  %54 = call i32 @match_token(i8* %52, i32 %53, %struct.TYPE_4__* %46)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  switch i32 %55, label %315 [
    i32 137, label %56
    i32 134, label %62
    i32 138, label %67
    i32 136, label %68
    i32 132, label %95
    i32 131, label %106
    i32 141, label %124
    i32 128, label %198
    i32 139, label %198
    i32 133, label %198
    i32 130, label %200
    i32 140, label %222
    i32 129, label %244
    i32 143, label %264
    i32 135, label %282
    i32 142, label %288
  ]

56:                                               ; preds = %51
  %57 = load i32, i32* @JFS_NOINTEGRITY, align 4
  %58 = xor i32 %57, -1
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %58
  store i32 %61, i32* %59, align 4
  br label %318

62:                                               ; preds = %51
  %63 = load i32, i32* @JFS_NOINTEGRITY, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 4
  br label %318

67:                                               ; preds = %51
  br label %318

68:                                               ; preds = %51
  %69 = load i8*, i8** %10, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i8*, i8** %10, align 8
  %73 = icmp ne i8* %72, inttoptr (i64 -1 to i8*)
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @unload_nls(i8* %75)
  br label %77

77:                                               ; preds = %74, %71, %68
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 16
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  store i8* null, i8** %10, align 8
  br label %94

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 16
  %88 = call i8* @load_nls(i8* %87)
  store i8* %88, i8** %10, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %84
  %92 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 5, i32* %16, align 4
  br label %319

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %83
  br label %318

95:                                               ; preds = %51
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 16
  store i8* %98, i8** %17, align 8
  %99 = load i8*, i8** %17, align 8
  %100 = load i64*, i64** %8, align 8
  %101 = call i32 @kstrtoll(i8* %99, i32 0, i64* %100)
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %18, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  store i32 5, i32* %16, align 4
  br label %319

105:                                              ; preds = %95
  br label %318

106:                                              ; preds = %51
  %107 = load %struct.super_block*, %struct.super_block** %7, align 8
  %108 = getelementptr inbounds %struct.super_block, %struct.super_block* %107, i32 0, i32 1
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @i_size_read(i32 %111)
  %113 = load %struct.super_block*, %struct.super_block** %7, align 8
  %114 = getelementptr inbounds %struct.super_block, %struct.super_block* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = ashr i64 %112, %115
  %117 = load i64*, i64** %8, align 8
  store i64 %116, i64* %117, align 8
  %118 = load i64*, i64** %8, align 8
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %106
  %122 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %106
  br label %318

124:                                              ; preds = %51
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 16
  store i8* %127, i8** %19, align 8
  %128 = load i8*, i8** %19, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i8*, i8** %19, align 8
  %132 = load i8, i8* %131, align 1
  %133 = icmp ne i8 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %130, %124
  store i32 5, i32* %16, align 4
  br label %319

135:                                              ; preds = %130
  %136 = load i8*, i8** %19, align 8
  %137 = call i32 @strcmp(i8* %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %154, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* @JFS_ERR_REMOUNT_RO, align 4
  %141 = xor i32 %140, -1
  %142 = load i32*, i32** %9, align 8
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, %141
  store i32 %144, i32* %142, align 4
  %145 = load i32, i32* @JFS_ERR_PANIC, align 4
  %146 = xor i32 %145, -1
  %147 = load i32*, i32** %9, align 8
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, %146
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* @JFS_ERR_CONTINUE, align 4
  %151 = load i32*, i32** %9, align 8
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %150
  store i32 %153, i32* %151, align 4
  br label %197

154:                                              ; preds = %135
  %155 = load i8*, i8** %19, align 8
  %156 = call i32 @strcmp(i8* %155, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %173, label %158

158:                                              ; preds = %154
  %159 = load i32, i32* @JFS_ERR_CONTINUE, align 4
  %160 = xor i32 %159, -1
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, %160
  store i32 %163, i32* %161, align 4
  %164 = load i32, i32* @JFS_ERR_PANIC, align 4
  %165 = xor i32 %164, -1
  %166 = load i32*, i32** %9, align 8
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, %165
  store i32 %168, i32* %166, align 4
  %169 = load i32, i32* @JFS_ERR_REMOUNT_RO, align 4
  %170 = load i32*, i32** %9, align 8
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %169
  store i32 %172, i32* %170, align 4
  br label %196

173:                                              ; preds = %154
  %174 = load i8*, i8** %19, align 8
  %175 = call i32 @strcmp(i8* %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %192, label %177

177:                                              ; preds = %173
  %178 = load i32, i32* @JFS_ERR_CONTINUE, align 4
  %179 = xor i32 %178, -1
  %180 = load i32*, i32** %9, align 8
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, %179
  store i32 %182, i32* %180, align 4
  %183 = load i32, i32* @JFS_ERR_REMOUNT_RO, align 4
  %184 = xor i32 %183, -1
  %185 = load i32*, i32** %9, align 8
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, %184
  store i32 %187, i32* %185, align 4
  %188 = load i32, i32* @JFS_ERR_PANIC, align 4
  %189 = load i32*, i32** %9, align 8
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %188
  store i32 %191, i32* %189, align 4
  br label %195

192:                                              ; preds = %173
  %193 = load i8*, i8** %19, align 8
  %194 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* %193)
  store i32 5, i32* %16, align 4
  br label %319

195:                                              ; preds = %177
  br label %196

196:                                              ; preds = %195, %158
  br label %197

197:                                              ; preds = %196, %139
  br label %318

198:                                              ; preds = %51, %51, %51
  %199 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %318

200:                                              ; preds = %51
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 16
  store i8* %203, i8** %20, align 8
  %204 = load i8*, i8** %20, align 8
  %205 = call i32 @kstrtouint(i8* %204, i32 0, i32* %21)
  store i32 %205, i32* %22, align 4
  %206 = load i32, i32* %22, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  store i32 5, i32* %16, align 4
  br label %319

209:                                              ; preds = %200
  %210 = call i32 (...) @current_user_ns()
  %211 = load i32, i32* %21, align 4
  %212 = call i32 @make_kuid(i32 %210, i32 %211)
  %213 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %12, align 8
  %214 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %213, i32 0, i32 4
  store i32 %212, i32* %214, align 4
  %215 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %12, align 8
  %216 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @uid_valid(i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %209
  store i32 5, i32* %16, align 4
  br label %319

221:                                              ; preds = %209
  br label %318

222:                                              ; preds = %51
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 16
  store i8* %225, i8** %23, align 8
  %226 = load i8*, i8** %23, align 8
  %227 = call i32 @kstrtouint(i8* %226, i32 0, i32* %24)
  store i32 %227, i32* %25, align 4
  %228 = load i32, i32* %25, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %222
  store i32 5, i32* %16, align 4
  br label %319

231:                                              ; preds = %222
  %232 = call i32 (...) @current_user_ns()
  %233 = load i32, i32* %24, align 4
  %234 = call i32 @make_kgid(i32 %232, i32 %233)
  %235 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %12, align 8
  %236 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %235, i32 0, i32 3
  store i32 %234, i32* %236, align 8
  %237 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %12, align 8
  %238 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @gid_valid(i32 %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %231
  store i32 5, i32* %16, align 4
  br label %319

243:                                              ; preds = %231
  br label %318

244:                                              ; preds = %51
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = load i8*, i8** %246, align 16
  store i8* %247, i8** %26, align 8
  %248 = load i8*, i8** %26, align 8
  %249 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %12, align 8
  %250 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %249, i32 0, i32 0
  %251 = call i32 @kstrtouint(i8* %248, i32 8, i32* %250)
  store i32 %251, i32* %27, align 4
  %252 = load i32, i32* %27, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %244
  store i32 5, i32* %16, align 4
  br label %319

255:                                              ; preds = %244
  %256 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %12, align 8
  %257 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = and i32 %258, -512
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %255
  %262 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  store i32 5, i32* %16, align 4
  br label %319

263:                                              ; preds = %255
  br label %318

264:                                              ; preds = %51
  %265 = load %struct.super_block*, %struct.super_block** %7, align 8
  %266 = getelementptr inbounds %struct.super_block, %struct.super_block* %265, i32 0, i32 1
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %266, align 8
  %268 = call %struct.request_queue* @bdev_get_queue(%struct.TYPE_5__* %267)
  store %struct.request_queue* %268, %struct.request_queue** %28, align 8
  %269 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %12, align 8
  %270 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %269, i32 0, i32 1
  store i32 64, i32* %270, align 4
  %271 = load %struct.request_queue*, %struct.request_queue** %28, align 8
  %272 = call i32 @blk_queue_discard(%struct.request_queue* %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %264
  %275 = load i32, i32* @JFS_DISCARD, align 4
  %276 = load i32*, i32** %9, align 8
  %277 = load i32, i32* %276, align 4
  %278 = or i32 %277, %275
  store i32 %278, i32* %276, align 4
  br label %281

279:                                              ; preds = %264
  %280 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  br label %281

281:                                              ; preds = %279, %274
  br label %318

282:                                              ; preds = %51
  %283 = load i32, i32* @JFS_DISCARD, align 4
  %284 = xor i32 %283, -1
  %285 = load i32*, i32** %9, align 8
  %286 = load i32, i32* %285, align 4
  %287 = and i32 %286, %284
  store i32 %287, i32* %285, align 4
  br label %318

288:                                              ; preds = %51
  %289 = load %struct.super_block*, %struct.super_block** %7, align 8
  %290 = getelementptr inbounds %struct.super_block, %struct.super_block* %289, i32 0, i32 1
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %290, align 8
  %292 = call %struct.request_queue* @bdev_get_queue(%struct.TYPE_5__* %291)
  store %struct.request_queue* %292, %struct.request_queue** %29, align 8
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 0
  %295 = load i8*, i8** %294, align 16
  store i8* %295, i8** %30, align 8
  %296 = load %struct.request_queue*, %struct.request_queue** %29, align 8
  %297 = call i32 @blk_queue_discard(%struct.request_queue* %296)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %312

299:                                              ; preds = %288
  %300 = load i32, i32* @JFS_DISCARD, align 4
  %301 = load i32*, i32** %9, align 8
  %302 = load i32, i32* %301, align 4
  %303 = or i32 %302, %300
  store i32 %303, i32* %301, align 4
  %304 = load i8*, i8** %30, align 8
  %305 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %12, align 8
  %306 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %305, i32 0, i32 1
  %307 = call i32 @kstrtouint(i8* %304, i32 0, i32* %306)
  store i32 %307, i32* %31, align 4
  %308 = load i32, i32* %31, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %299
  store i32 5, i32* %16, align 4
  br label %319

311:                                              ; preds = %299
  br label %314

312:                                              ; preds = %288
  %313 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  br label %314

314:                                              ; preds = %312, %311
  br label %318

315:                                              ; preds = %51
  %316 = load i8*, i8** %11, align 8
  %317 = call i32 @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i8* %316)
  store i32 5, i32* %16, align 4
  br label %319

318:                                              ; preds = %314, %282, %281, %263, %243, %221, %198, %197, %123, %105, %94, %67, %62, %56
  store i32 0, i32* %16, align 4
  br label %319

319:                                              ; preds = %315, %310, %261, %254, %242, %230, %220, %208, %192, %134, %104, %91, %318, %50
  %320 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %320)
  %321 = load i32, i32* %16, align 4
  switch i32 %321, label %347 [
    i32 0, label %322
    i32 2, label %39
    i32 5, label %335
  ]

322:                                              ; preds = %319
  br label %39

323:                                              ; preds = %39
  %324 = load i8*, i8** %10, align 8
  %325 = icmp ne i8* %324, inttoptr (i64 -1 to i8*)
  br i1 %325, label %326, label %334

326:                                              ; preds = %323
  %327 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %12, align 8
  %328 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %327, i32 0, i32 2
  %329 = load i8*, i8** %328, align 8
  %330 = call i32 @unload_nls(i8* %329)
  %331 = load i8*, i8** %10, align 8
  %332 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %12, align 8
  %333 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %332, i32 0, i32 2
  store i8* %331, i8** %333, align 8
  br label %334

334:                                              ; preds = %326, %323
  store i32 1, i32* %5, align 4
  br label %345

335:                                              ; preds = %319
  %336 = load i8*, i8** %10, align 8
  %337 = icmp ne i8* %336, null
  br i1 %337, label %338, label %344

338:                                              ; preds = %335
  %339 = load i8*, i8** %10, align 8
  %340 = icmp ne i8* %339, inttoptr (i64 -1 to i8*)
  br i1 %340, label %341, label %344

341:                                              ; preds = %338
  %342 = load i8*, i8** %10, align 8
  %343 = call i32 @unload_nls(i8* %342)
  br label %344

344:                                              ; preds = %341, %338, %335
  store i32 0, i32* %5, align 4
  br label %345

345:                                              ; preds = %344, %334, %37
  %346 = load i32, i32* %5, align 4
  ret i32 %346

347:                                              ; preds = %319
  unreachable
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(%struct.super_block*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @match_token(i8*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @unload_nls(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @load_nls(i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @kstrtoll(i8*, i32, i64*) #1

declare dso_local i64 @i_size_read(i32) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local i32 @gid_valid(i32) #1

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.TYPE_5__*) #1

declare dso_local i32 @blk_queue_discard(%struct.request_queue*) #1

declare dso_local i32 @printk(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
