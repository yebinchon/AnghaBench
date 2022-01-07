; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_ubifs_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_ubifs_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, %struct.super_block*, i8*, i8*, i32, %struct.TYPE_5__, i32 }
%struct.super_block = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@UBIFS_COMPR_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"lzo\00", align 1
@UBIFS_COMPR_LZO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"zlib\00", align 1
@UBIFS_COMPR_ZLIB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"zstd\00", align 1
@UBIFS_COMPR_ZSTD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"unknown compressor \22%s\22\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"report\00", align 1
@ASSACT_REPORT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@ASSACT_RO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"panic\00", align 1
@ASSACT_PANIC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"unknown assert action \22%s\22\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [48 x i8] c"unrecognized mount option \22%s\22 or missing value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i8*, i32)* @ubifs_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_parse_options(%struct.ubifs_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.super_block*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @MAX_OPT_ARGS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca %struct.TYPE_6__, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %237

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %235, %32, %24
  %26 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %236

28:                                               ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %25

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* @tokens, align 4
  %36 = call i32 @match_token(i8* %34, i32 %35, %struct.TYPE_6__* %20)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  switch i32 %37, label %215 [
    i32 133, label %38
    i32 129, label %42
    i32 135, label %46
    i32 131, label %52
    i32 134, label %58
    i32 130, label %64
    i32 128, label %70
    i32 138, label %137
    i32 136, label %182
    i32 137, label %198
    i32 132, label %214
  ]

38:                                               ; preds = %33
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 2, i32* %41, align 4
  br label %235

42:                                               ; preds = %33
  %43 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %44 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %235

46:                                               ; preds = %33
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %48 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32 2, i32* %49, align 4
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  br label %235

52:                                               ; preds = %33
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %54 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %57 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  br label %235

58:                                               ; preds = %33
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %60 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  store i32 2, i32* %61, align 4
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %63 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  br label %235

64:                                               ; preds = %33
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %66 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  store i32 1, i32* %67, align 4
  %68 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %69 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  br label %235

70:                                               ; preds = %33
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 0
  %72 = call i8* @match_strdup(%struct.TYPE_6__* %71)
  store i8* %72, i8** %13, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %237

78:                                               ; preds = %70
  %79 = load i8*, i8** %13, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @UBIFS_COMPR_NONE, align 4
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 4
  store i32 %83, i32* %86, align 4
  br label %125

87:                                               ; preds = %78
  %88 = load i8*, i8** %13, align 8
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* @UBIFS_COMPR_LZO, align 4
  %93 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %94 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %93, i32 0, i32 6
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 4
  store i32 %92, i32* %95, align 4
  br label %124

96:                                               ; preds = %87
  %97 = load i8*, i8** %13, align 8
  %98 = call i32 @strcmp(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* @UBIFS_COMPR_ZLIB, align 4
  %102 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %103 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 4
  store i32 %101, i32* %104, align 4
  br label %123

105:                                              ; preds = %96
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 @strcmp(i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @UBIFS_COMPR_ZSTD, align 4
  %111 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %112 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 4
  store i32 %110, i32* %113, align 4
  br label %122

114:                                              ; preds = %105
  %115 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %116 = load i8*, i8** %13, align 8
  %117 = call i32 @ubifs_err(%struct.ubifs_info* %115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %116)
  %118 = load i8*, i8** %13, align 8
  %119 = call i32 @kfree(i8* %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %237

122:                                              ; preds = %109
  br label %123

123:                                              ; preds = %122, %100
  br label %124

124:                                              ; preds = %123, %91
  br label %125

125:                                              ; preds = %124, %82
  %126 = load i8*, i8** %13, align 8
  %127 = call i32 @kfree(i8* %126)
  %128 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %129 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 3
  store i32 1, i32* %130, align 4
  %131 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %132 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %131, i32 0, i32 6
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %136 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %135, i32 0, i32 7
  store i32 %134, i32* %136, align 8
  br label %235

137:                                              ; preds = %33
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 0
  %139 = call i8* @match_strdup(%struct.TYPE_6__* %138)
  store i8* %139, i8** %14, align 8
  %140 = load i8*, i8** %14, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %237

145:                                              ; preds = %137
  %146 = load i8*, i8** %14, align 8
  %147 = call i32 @strcmp(i8* %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* @ASSACT_REPORT, align 4
  %151 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %152 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %151, i32 0, i32 5
  store i32 %150, i32* %152, align 8
  br label %179

153:                                              ; preds = %145
  %154 = load i8*, i8** %14, align 8
  %155 = call i32 @strcmp(i8* %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* @ASSACT_RO, align 4
  %159 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %160 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 8
  br label %178

161:                                              ; preds = %153
  %162 = load i8*, i8** %14, align 8
  %163 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = load i32, i32* @ASSACT_PANIC, align 4
  %167 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %168 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 8
  br label %177

169:                                              ; preds = %161
  %170 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %171 = load i8*, i8** %14, align 8
  %172 = call i32 @ubifs_err(%struct.ubifs_info* %170, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* %171)
  %173 = load i8*, i8** %14, align 8
  %174 = call i32 @kfree(i8* %173)
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %237

177:                                              ; preds = %165
  br label %178

178:                                              ; preds = %177, %157
  br label %179

179:                                              ; preds = %178, %149
  %180 = load i8*, i8** %14, align 8
  %181 = call i32 @kfree(i8* %180)
  br label %235

182:                                              ; preds = %33
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 16
  %186 = load i32, i32* @GFP_KERNEL, align 4
  %187 = call i8* @kstrdup(i32 %185, i32 %186)
  %188 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %189 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %188, i32 0, i32 4
  store i8* %187, i8** %189, align 8
  %190 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %191 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %190, i32 0, i32 4
  %192 = load i8*, i8** %191, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %197, label %194

194:                                              ; preds = %182
  %195 = load i32, i32* @ENOMEM, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %237

197:                                              ; preds = %182
  br label %235

198:                                              ; preds = %33
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 16
  %202 = load i32, i32* @GFP_KERNEL, align 4
  %203 = call i8* @kstrdup(i32 %201, i32 %202)
  %204 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %205 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %204, i32 0, i32 3
  store i8* %203, i8** %205, align 8
  %206 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %207 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %206, i32 0, i32 3
  %208 = load i8*, i8** %207, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %213, label %210

210:                                              ; preds = %198
  %211 = load i32, i32* @ENOMEM, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %237

213:                                              ; preds = %198
  br label %235

214:                                              ; preds = %33
  br label %235

215:                                              ; preds = %33
  %216 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %217 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %216, i32 0, i32 2
  %218 = load %struct.super_block*, %struct.super_block** %217, align 8
  store %struct.super_block* %218, %struct.super_block** %16, align 8
  %219 = load i8*, i8** %8, align 8
  %220 = call i64 @parse_standard_option(i8* %219)
  store i64 %220, i64* %15, align 8
  %221 = load i64, i64* %15, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %229, label %223

223:                                              ; preds = %215
  %224 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %225 = load i8*, i8** %8, align 8
  %226 = call i32 @ubifs_err(%struct.ubifs_info* %224, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i8* %225)
  %227 = load i32, i32* @EINVAL, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %237

229:                                              ; preds = %215
  %230 = load i64, i64* %15, align 8
  %231 = load %struct.super_block*, %struct.super_block** %16, align 8
  %232 = getelementptr inbounds %struct.super_block, %struct.super_block* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = or i64 %233, %230
  store i64 %234, i64* %232, align 8
  br label %235

235:                                              ; preds = %229, %214, %213, %197, %179, %125, %64, %58, %52, %46, %42, %38
  br label %25

236:                                              ; preds = %25
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %237

237:                                              ; preds = %236, %223, %210, %194, %169, %142, %114, %75, %23
  %238 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %238)
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, %struct.TYPE_6__*) #2

declare dso_local i8* @match_strdup(%struct.TYPE_6__*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i8*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i8* @kstrdup(i32, i32) #2

declare dso_local i64 @parse_standard_option(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
