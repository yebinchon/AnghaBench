; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_genfs_read.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_genfs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.genfs* }
%struct.genfs = type { %struct.genfs*, %struct.ocontext*, %struct.genfs* }
%struct.ocontext = type { %struct.ocontext*, %struct.TYPE_4__, %struct.TYPE_3__, i32* }
%struct.TYPE_4__ = type { %struct.genfs* }
%struct.TYPE_3__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"SELinux:  dup genfs fstype %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"SELinux:  dup genfs entry (%s,%s)\0A\00", align 1
@OCON_FSUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, i8*)* @genfs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genfs_read(%struct.policydb* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.policydb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [1 x i32], align 4
  %14 = alloca %struct.ocontext*, align 8
  %15 = alloca %struct.ocontext*, align 8
  %16 = alloca %struct.ocontext*, align 8
  %17 = alloca %struct.genfs*, align 8
  %18 = alloca %struct.genfs*, align 8
  %19 = alloca %struct.genfs*, align 8
  store %struct.policydb* %0, %struct.policydb** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ocontext* null, %struct.ocontext** %16, align 8
  store %struct.genfs* null, %struct.genfs** %19, align 8
  %20 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @next_entry(i32* %20, i8* %21, i32 4)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %302

27:                                               ; preds = %2
  %28 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @le32_to_cpu(i32 %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %283, %27
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %286

36:                                               ; preds = %32
  %37 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @next_entry(i32* %37, i8* %38, i32 4)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %287

43:                                               ; preds = %36
  %44 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le32_to_cpu(i32 %45)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kzalloc(i32 24, i32 %50)
  %52 = bitcast i8* %51 to %struct.genfs*
  store %struct.genfs* %52, %struct.genfs** %19, align 8
  %53 = load %struct.genfs*, %struct.genfs** %19, align 8
  %54 = icmp ne %struct.genfs* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %43
  br label %287

56:                                               ; preds = %43
  %57 = load %struct.genfs*, %struct.genfs** %19, align 8
  %58 = getelementptr inbounds %struct.genfs, %struct.genfs* %57, i32 0, i32 0
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @str_read(%struct.genfs** %58, i32 %59, i8* %60, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %287

66:                                               ; preds = %56
  store %struct.genfs* null, %struct.genfs** %17, align 8
  %67 = load %struct.policydb*, %struct.policydb** %4, align 8
  %68 = getelementptr inbounds %struct.policydb, %struct.policydb* %67, i32 0, i32 0
  %69 = load %struct.genfs*, %struct.genfs** %68, align 8
  store %struct.genfs* %69, %struct.genfs** %18, align 8
  br label %70

70:                                               ; preds = %100, %66
  %71 = load %struct.genfs*, %struct.genfs** %18, align 8
  %72 = icmp ne %struct.genfs* %71, null
  br i1 %72, label %73, label %105

73:                                               ; preds = %70
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %8, align 4
  %76 = load %struct.genfs*, %struct.genfs** %19, align 8
  %77 = getelementptr inbounds %struct.genfs, %struct.genfs* %76, i32 0, i32 0
  %78 = load %struct.genfs*, %struct.genfs** %77, align 8
  %79 = load %struct.genfs*, %struct.genfs** %18, align 8
  %80 = getelementptr inbounds %struct.genfs, %struct.genfs* %79, i32 0, i32 0
  %81 = load %struct.genfs*, %struct.genfs** %80, align 8
  %82 = call i64 @strcmp(%struct.genfs* %78, %struct.genfs* %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %73
  %85 = load %struct.genfs*, %struct.genfs** %19, align 8
  %86 = getelementptr inbounds %struct.genfs, %struct.genfs* %85, i32 0, i32 0
  %87 = load %struct.genfs*, %struct.genfs** %86, align 8
  %88 = call i32 (i8*, %struct.genfs*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.genfs* %87)
  br label %287

89:                                               ; preds = %73
  %90 = load %struct.genfs*, %struct.genfs** %19, align 8
  %91 = getelementptr inbounds %struct.genfs, %struct.genfs* %90, i32 0, i32 0
  %92 = load %struct.genfs*, %struct.genfs** %91, align 8
  %93 = load %struct.genfs*, %struct.genfs** %18, align 8
  %94 = getelementptr inbounds %struct.genfs, %struct.genfs* %93, i32 0, i32 0
  %95 = load %struct.genfs*, %struct.genfs** %94, align 8
  %96 = call i64 @strcmp(%struct.genfs* %92, %struct.genfs* %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %105

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.genfs*, %struct.genfs** %18, align 8
  store %struct.genfs* %101, %struct.genfs** %17, align 8
  %102 = load %struct.genfs*, %struct.genfs** %18, align 8
  %103 = getelementptr inbounds %struct.genfs, %struct.genfs* %102, i32 0, i32 2
  %104 = load %struct.genfs*, %struct.genfs** %103, align 8
  store %struct.genfs* %104, %struct.genfs** %18, align 8
  br label %70

105:                                              ; preds = %98, %70
  %106 = load %struct.genfs*, %struct.genfs** %18, align 8
  %107 = load %struct.genfs*, %struct.genfs** %19, align 8
  %108 = getelementptr inbounds %struct.genfs, %struct.genfs* %107, i32 0, i32 2
  store %struct.genfs* %106, %struct.genfs** %108, align 8
  %109 = load %struct.genfs*, %struct.genfs** %17, align 8
  %110 = icmp ne %struct.genfs* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.genfs*, %struct.genfs** %19, align 8
  %113 = load %struct.genfs*, %struct.genfs** %17, align 8
  %114 = getelementptr inbounds %struct.genfs, %struct.genfs* %113, i32 0, i32 2
  store %struct.genfs* %112, %struct.genfs** %114, align 8
  br label %119

115:                                              ; preds = %105
  %116 = load %struct.genfs*, %struct.genfs** %19, align 8
  %117 = load %struct.policydb*, %struct.policydb** %4, align 8
  %118 = getelementptr inbounds %struct.policydb, %struct.policydb* %117, i32 0, i32 0
  store %struct.genfs* %116, %struct.genfs** %118, align 8
  br label %119

119:                                              ; preds = %115, %111
  %120 = load %struct.genfs*, %struct.genfs** %19, align 8
  store %struct.genfs* %120, %struct.genfs** %18, align 8
  store %struct.genfs* null, %struct.genfs** %19, align 8
  %121 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %122 = load i8*, i8** %5, align 8
  %123 = call i32 @next_entry(i32* %121, i8* %122, i32 4)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %287

127:                                              ; preds = %119
  %128 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @le32_to_cpu(i32 %129)
  %131 = ptrtoint i8* %130 to i32
  store i32 %131, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %132

132:                                              ; preds = %279, %127
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %282

136:                                              ; preds = %132
  %137 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %138 = load i8*, i8** %5, align 8
  %139 = call i32 @next_entry(i32* %137, i8* %138, i32 4)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %287

143:                                              ; preds = %136
  %144 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = call i8* @le32_to_cpu(i32 %145)
  %147 = ptrtoint i8* %146 to i32
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* @GFP_KERNEL, align 4
  %151 = call i8* @kzalloc(i32 32, i32 %150)
  %152 = bitcast i8* %151 to %struct.ocontext*
  store %struct.ocontext* %152, %struct.ocontext** %16, align 8
  %153 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %154 = icmp ne %struct.ocontext* %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %143
  br label %287

156:                                              ; preds = %143
  %157 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %158 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* @GFP_KERNEL, align 4
  %161 = load i8*, i8** %5, align 8
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @str_read(%struct.genfs** %159, i32 %160, i8* %161, i32 %162)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %156
  br label %287

167:                                              ; preds = %156
  %168 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %169 = load i8*, i8** %5, align 8
  %170 = call i32 @next_entry(i32* %168, i8* %169, i32 4)
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %287

174:                                              ; preds = %167
  %175 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = call i8* @le32_to_cpu(i32 %176)
  %178 = ptrtoint i8* %177 to i64
  %179 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %180 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  store i64 %178, i64* %181, align 8
  %182 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %183 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %182, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load %struct.policydb*, %struct.policydb** %4, align 8
  %187 = load i8*, i8** %5, align 8
  %188 = call i32 @context_read_and_validate(i32* %185, %struct.policydb* %186, i8* %187)
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %174
  br label %287

192:                                              ; preds = %174
  store %struct.ocontext* null, %struct.ocontext** %14, align 8
  %193 = load %struct.genfs*, %struct.genfs** %18, align 8
  %194 = getelementptr inbounds %struct.genfs, %struct.genfs* %193, i32 0, i32 1
  %195 = load %struct.ocontext*, %struct.ocontext** %194, align 8
  store %struct.ocontext* %195, %struct.ocontext** %15, align 8
  br label %196

196:                                              ; preds = %259, %192
  %197 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %198 = icmp ne %struct.ocontext* %197, null
  br i1 %198, label %199, label %264

199:                                              ; preds = %196
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %8, align 4
  %202 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %203 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load %struct.genfs*, %struct.genfs** %204, align 8
  %206 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %207 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load %struct.genfs*, %struct.genfs** %208, align 8
  %210 = call i64 @strcmp(%struct.genfs* %205, %struct.genfs* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %243, label %212

212:                                              ; preds = %199
  %213 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %214 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %234

218:                                              ; preds = %212
  %219 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %220 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %218
  %225 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %226 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %230 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp eq i64 %228, %232
  br i1 %233, label %234, label %243

234:                                              ; preds = %224, %218, %212
  %235 = load %struct.genfs*, %struct.genfs** %18, align 8
  %236 = getelementptr inbounds %struct.genfs, %struct.genfs* %235, i32 0, i32 0
  %237 = load %struct.genfs*, %struct.genfs** %236, align 8
  %238 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %239 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  %241 = load %struct.genfs*, %struct.genfs** %240, align 8
  %242 = call i32 (i8*, %struct.genfs*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.genfs* %237, %struct.genfs* %241)
  br label %287

243:                                              ; preds = %224, %199
  %244 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %245 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = load %struct.genfs*, %struct.genfs** %246, align 8
  %248 = call i32 @strlen(%struct.genfs* %247)
  store i32 %248, i32* %11, align 4
  %249 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %250 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = load %struct.genfs*, %struct.genfs** %251, align 8
  %253 = call i32 @strlen(%struct.genfs* %252)
  store i32 %253, i32* %12, align 4
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* %12, align 4
  %256 = icmp sgt i32 %254, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %243
  br label %264

258:                                              ; preds = %243
  br label %259

259:                                              ; preds = %258
  %260 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  store %struct.ocontext* %260, %struct.ocontext** %14, align 8
  %261 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %262 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %261, i32 0, i32 0
  %263 = load %struct.ocontext*, %struct.ocontext** %262, align 8
  store %struct.ocontext* %263, %struct.ocontext** %15, align 8
  br label %196

264:                                              ; preds = %257, %196
  %265 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %266 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %267 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %266, i32 0, i32 0
  store %struct.ocontext* %265, %struct.ocontext** %267, align 8
  %268 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %269 = icmp ne %struct.ocontext* %268, null
  br i1 %269, label %270, label %274

270:                                              ; preds = %264
  %271 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %272 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %273 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %272, i32 0, i32 0
  store %struct.ocontext* %271, %struct.ocontext** %273, align 8
  br label %278

274:                                              ; preds = %264
  %275 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %276 = load %struct.genfs*, %struct.genfs** %18, align 8
  %277 = getelementptr inbounds %struct.genfs, %struct.genfs* %276, i32 0, i32 1
  store %struct.ocontext* %275, %struct.ocontext** %277, align 8
  br label %278

278:                                              ; preds = %274, %270
  store %struct.ocontext* null, %struct.ocontext** %16, align 8
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %7, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %7, align 4
  br label %132

282:                                              ; preds = %132
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %6, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %6, align 4
  br label %32

286:                                              ; preds = %32
  store i32 0, i32* %8, align 4
  br label %287

287:                                              ; preds = %286, %234, %191, %173, %166, %155, %142, %126, %84, %65, %55, %42
  %288 = load %struct.genfs*, %struct.genfs** %19, align 8
  %289 = icmp ne %struct.genfs* %288, null
  br i1 %289, label %290, label %297

290:                                              ; preds = %287
  %291 = load %struct.genfs*, %struct.genfs** %19, align 8
  %292 = getelementptr inbounds %struct.genfs, %struct.genfs* %291, i32 0, i32 0
  %293 = load %struct.genfs*, %struct.genfs** %292, align 8
  %294 = call i32 @kfree(%struct.genfs* %293)
  %295 = load %struct.genfs*, %struct.genfs** %19, align 8
  %296 = call i32 @kfree(%struct.genfs* %295)
  br label %297

297:                                              ; preds = %290, %287
  %298 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %299 = load i32, i32* @OCON_FSUSE, align 4
  %300 = call i32 @ocontext_destroy(%struct.ocontext* %298, i32 %299)
  %301 = load i32, i32* %8, align 4
  store i32 %301, i32* %3, align 4
  br label %302

302:                                              ; preds = %297, %25
  %303 = load i32, i32* %3, align 4
  ret i32 %303
}

declare dso_local i32 @next_entry(i32*, i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @str_read(%struct.genfs**, i32, i8*, i32) #1

declare dso_local i64 @strcmp(%struct.genfs*, %struct.genfs*) #1

declare dso_local i32 @pr_err(i8*, %struct.genfs*, ...) #1

declare dso_local i32 @context_read_and_validate(i32*, %struct.policydb*, i8*) #1

declare dso_local i32 @strlen(%struct.genfs*) #1

declare dso_local i32 @kfree(%struct.genfs*) #1

declare dso_local i32 @ocontext_destroy(%struct.ocontext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
