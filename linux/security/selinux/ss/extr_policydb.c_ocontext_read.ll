; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_ocontext_read.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_ocontext_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.ocontext** }
%struct.ocontext = type { i32*, %struct.TYPE_14__, %struct.TYPE_13__, i8**, %struct.ocontext* }
%struct.TYPE_14__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, i32* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i8*, i8*, i8* }
%struct.TYPE_13__ = type { i8* }
%struct.policydb_compat_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SECURITY_FS_USE_MNTPOINT = common dso_local global i8* null, align 8
@SECURITY_FS_USE_MAX = common dso_local global i8* null, align 8
@U16_MAX = common dso_local global i32 0, align 4
@U8_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.policydb_compat_info*, i8*)* @ocontext_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocontext_read(%struct.policydb* %0, %struct.policydb_compat_info* %1, i8* %2) #0 {
  %4 = alloca %struct.policydb*, align 8
  %5 = alloca %struct.policydb_compat_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1 x i32], align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca %struct.ocontext*, align 8
  %15 = alloca %struct.ocontext*, align 8
  %16 = alloca [8 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %4, align 8
  store %struct.policydb_compat_info* %1, %struct.policydb_compat_info** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %450, %3
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.policydb_compat_info*, %struct.policydb_compat_info** %5, align 8
  %24 = getelementptr inbounds %struct.policydb_compat_info, %struct.policydb_compat_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %453

27:                                               ; preds = %21
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @next_entry(i32* %28, i8* %29, i32 4)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %454

34:                                               ; preds = %27
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @le32_to_cpu(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %10, align 4
  store %struct.ocontext* null, %struct.ocontext** %14, align 8
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %446, %34
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %449

43:                                               ; preds = %39
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.ocontext* @kzalloc(i32 112, i32 %46)
  store %struct.ocontext* %47, %struct.ocontext** %15, align 8
  %48 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %49 = icmp ne %struct.ocontext* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  br label %454

51:                                               ; preds = %43
  %52 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %53 = icmp ne %struct.ocontext* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %56 = load %struct.ocontext*, %struct.ocontext** %14, align 8
  %57 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %56, i32 0, i32 4
  store %struct.ocontext* %55, %struct.ocontext** %57, align 8
  br label %66

58:                                               ; preds = %51
  %59 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %60 = load %struct.policydb*, %struct.policydb** %4, align 8
  %61 = getelementptr inbounds %struct.policydb, %struct.policydb* %60, i32 0, i32 0
  %62 = load %struct.ocontext**, %struct.ocontext*** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %62, i64 %64
  store %struct.ocontext* %59, %struct.ocontext** %65, align 8
  br label %66

66:                                               ; preds = %58, %54
  %67 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  store %struct.ocontext* %67, %struct.ocontext** %14, align 8
  %68 = load i32, i32* %7, align 4
  switch i32 %68, label %445 [
    i32 132, label %69
    i32 136, label %95
    i32 131, label %95
    i32 128, label %140
    i32 130, label %180
    i32 135, label %211
    i32 129, label %269
    i32 133, label %329
    i32 134, label %391
  ]

69:                                               ; preds = %66
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @next_entry(i32* %70, i8* %71, i32 4)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %454

76:                                               ; preds = %69
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @le32_to_cpu(i32 %78)
  %80 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %81 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %80, i32 0, i32 3
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  store i8* %79, i8** %83, align 8
  %84 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %85 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load %struct.policydb*, %struct.policydb** %4, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @context_read_and_validate(i32* %87, %struct.policydb* %88, i8* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %76
  br label %454

94:                                               ; preds = %76
  br label %445

95:                                               ; preds = %66, %66
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @next_entry(i32* %96, i8* %97, i32 4)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %454

102:                                              ; preds = %95
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @le32_to_cpu(i32 %104)
  %106 = ptrtoint i8* %105 to i32
  store i32 %106, i32* %11, align 4
  %107 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %108 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 3
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = load i8*, i8** %6, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @str_read(i32* %109, i32 %110, i8* %111, i32 %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %102
  br label %454

117:                                              ; preds = %102
  %118 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %119 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load %struct.policydb*, %struct.policydb** %4, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = call i32 @context_read_and_validate(i32* %121, %struct.policydb* %122, i8* %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  br label %454

128:                                              ; preds = %117
  %129 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %130 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load %struct.policydb*, %struct.policydb** %4, align 8
  %134 = load i8*, i8** %6, align 8
  %135 = call i32 @context_read_and_validate(i32* %132, %struct.policydb* %133, i8* %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %128
  br label %454

139:                                              ; preds = %128
  br label %445

140:                                              ; preds = %66
  %141 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %142 = load i8*, i8** %6, align 8
  %143 = call i32 @next_entry(i32* %141, i8* %142, i32 12)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %454

147:                                              ; preds = %140
  %148 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @le32_to_cpu(i32 %149)
  %151 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %152 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 2
  store i8* %150, i8** %154, align 8
  %155 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = call i8* @le32_to_cpu(i32 %156)
  %158 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %159 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  store i8* %157, i8** %161, align 8
  %162 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %163 = load i32, i32* %162, align 4
  %164 = call i8* @le32_to_cpu(i32 %163)
  %165 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %166 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  store i8* %164, i8** %168, align 8
  %169 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %170 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load %struct.policydb*, %struct.policydb** %4, align 8
  %174 = load i8*, i8** %6, align 8
  %175 = call i32 @context_read_and_validate(i32* %172, %struct.policydb* %173, i8* %174)
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %147
  br label %454

179:                                              ; preds = %147
  br label %445

180:                                              ; preds = %66
  %181 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %182 = load i8*, i8** %6, align 8
  %183 = call i32 @next_entry(i32* %181, i8* %182, i32 8)
  store i32 %183, i32* %9, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  br label %454

187:                                              ; preds = %180
  %188 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %189 = load i32, i32* %188, align 16
  %190 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %191 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  store i32 %189, i32* %193, align 4
  %194 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %197 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 1
  store i32 %195, i32* %199, align 4
  %200 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %201 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load %struct.policydb*, %struct.policydb** %4, align 8
  %205 = load i8*, i8** %6, align 8
  %206 = call i32 @context_read_and_validate(i32* %203, %struct.policydb* %204, i8* %205)
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %187
  br label %454

210:                                              ; preds = %187
  br label %445

211:                                              ; preds = %66
  %212 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %213 = load i8*, i8** %6, align 8
  %214 = call i32 @next_entry(i32* %212, i8* %213, i32 8)
  store i32 %214, i32* %9, align 4
  %215 = load i32, i32* %9, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  br label %454

218:                                              ; preds = %211
  %219 = load i32, i32* @EINVAL, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %9, align 4
  %221 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = call i8* @le32_to_cpu(i32 %222)
  %224 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %225 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 0
  store i8* %223, i8** %226, align 8
  %227 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %228 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  %231 = load i8*, i8** @SECURITY_FS_USE_MNTPOINT, align 8
  %232 = icmp eq i8* %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %218
  br label %454

234:                                              ; preds = %218
  %235 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %236 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  %239 = load i8*, i8** @SECURITY_FS_USE_MAX, align 8
  %240 = icmp ugt i8* %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %234
  br label %454

242:                                              ; preds = %234
  %243 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %244 = load i32, i32* %243, align 4
  %245 = call i8* @le32_to_cpu(i32 %244)
  %246 = ptrtoint i8* %245 to i32
  store i32 %246, i32* %11, align 4
  %247 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %248 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 3
  %250 = load i32, i32* @GFP_KERNEL, align 4
  %251 = load i8*, i8** %6, align 8
  %252 = load i32, i32* %11, align 4
  %253 = call i32 @str_read(i32* %249, i32 %250, i8* %251, i32 %252)
  store i32 %253, i32* %9, align 4
  %254 = load i32, i32* %9, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %242
  br label %454

257:                                              ; preds = %242
  %258 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %259 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  %262 = load %struct.policydb*, %struct.policydb** %4, align 8
  %263 = load i8*, i8** %6, align 8
  %264 = call i32 @context_read_and_validate(i32* %261, %struct.policydb* %262, i8* %263)
  store i32 %264, i32* %9, align 4
  %265 = load i32, i32* %9, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %257
  br label %454

268:                                              ; preds = %257
  br label %445

269:                                              ; preds = %66
  %270 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %271 = load i8*, i8** %6, align 8
  %272 = call i32 @next_entry(i32* %270, i8* %271, i32 32)
  store i32 %272, i32* %9, align 4
  %273 = load i32, i32* %9, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %269
  br label %454

276:                                              ; preds = %269
  store i32 0, i32* %17, align 4
  br label %277

277:                                              ; preds = %293, %276
  %278 = load i32, i32* %17, align 4
  %279 = icmp slt i32 %278, 4
  br i1 %279, label %280, label %296

280:                                              ; preds = %277
  %281 = load i32, i32* %17, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %286 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %17, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  store i32 %284, i32* %292, align 4
  br label %293

293:                                              ; preds = %280
  %294 = load i32, i32* %17, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %17, align 4
  br label %277

296:                                              ; preds = %277
  store i32 0, i32* %17, align 4
  br label %297

297:                                              ; preds = %314, %296
  %298 = load i32, i32* %17, align 4
  %299 = icmp slt i32 %298, 4
  br i1 %299, label %300, label %317

300:                                              ; preds = %297
  %301 = load i32, i32* %17, align 4
  %302 = add nsw i32 %301, 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %307 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 1
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %17, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  store i32 %305, i32* %313, align 4
  br label %314

314:                                              ; preds = %300
  %315 = load i32, i32* %17, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %17, align 4
  br label %297

317:                                              ; preds = %297
  %318 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %319 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %318, i32 0, i32 0
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 0
  %322 = load %struct.policydb*, %struct.policydb** %4, align 8
  %323 = load i8*, i8** %6, align 8
  %324 = call i32 @context_read_and_validate(i32* %321, %struct.policydb* %322, i8* %323)
  store i32 %324, i32* %9, align 4
  %325 = load i32, i32* %9, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %317
  br label %454

328:                                              ; preds = %317
  br label %445

329:                                              ; preds = %66
  %330 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  %331 = load i8*, i8** %6, align 8
  %332 = call i32 @next_entry(i32* %330, i8* %331, i32 4)
  store i32 %332, i32* %9, align 4
  %333 = load i32, i32* %9, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %329
  br label %454

336:                                              ; preds = %329
  %337 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @be64_to_cpu(i32 %338)
  %340 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %341 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 2
  store i32 %339, i32* %343, align 8
  %344 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %345 = load i8*, i8** %6, align 8
  %346 = call i32 @next_entry(i32* %344, i8* %345, i32 8)
  store i32 %346, i32* %9, align 4
  %347 = load i32, i32* %9, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %336
  br label %454

350:                                              ; preds = %336
  %351 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %352 = load i32, i32* %351, align 4
  %353 = call i8* @le32_to_cpu(i32 %352)
  %354 = ptrtoint i8* %353 to i32
  store i32 %354, i32* %18, align 4
  %355 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %356 = load i32, i32* %355, align 4
  %357 = call i8* @le32_to_cpu(i32 %356)
  %358 = ptrtoint i8* %357 to i32
  store i32 %358, i32* %19, align 4
  %359 = load i32, i32* %18, align 4
  %360 = load i32, i32* @U16_MAX, align 4
  %361 = icmp sgt i32 %359, %360
  br i1 %361, label %366, label %362

362:                                              ; preds = %350
  %363 = load i32, i32* %19, align 4
  %364 = load i32, i32* @U16_MAX, align 4
  %365 = icmp sgt i32 %363, %364
  br i1 %365, label %366, label %369

366:                                              ; preds = %362, %350
  %367 = load i32, i32* @EINVAL, align 4
  %368 = sub nsw i32 0, %367
  store i32 %368, i32* %9, align 4
  br label %454

369:                                              ; preds = %362
  %370 = load i32, i32* %18, align 4
  %371 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %372 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %373, i32 0, i32 0
  store i32 %370, i32* %374, align 8
  %375 = load i32, i32* %19, align 4
  %376 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %377 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 1
  store i32 %375, i32* %379, align 4
  %380 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %381 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %380, i32 0, i32 0
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 0
  %384 = load %struct.policydb*, %struct.policydb** %4, align 8
  %385 = load i8*, i8** %6, align 8
  %386 = call i32 @context_read_and_validate(i32* %383, %struct.policydb* %384, i8* %385)
  store i32 %386, i32* %9, align 4
  %387 = load i32, i32* %9, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %369
  br label %454

390:                                              ; preds = %369
  br label %445

391:                                              ; preds = %66
  %392 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %393 = load i8*, i8** %6, align 8
  %394 = call i32 @next_entry(i32* %392, i8* %393, i32 8)
  store i32 %394, i32* %9, align 4
  %395 = load i32, i32* %9, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %391
  br label %454

398:                                              ; preds = %391
  %399 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %400 = load i32, i32* %399, align 4
  %401 = call i8* @le32_to_cpu(i32 %400)
  %402 = ptrtoint i8* %401 to i32
  store i32 %402, i32* %11, align 4
  %403 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %404 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 1
  %407 = load i32, i32* @GFP_KERNEL, align 4
  %408 = load i8*, i8** %6, align 8
  %409 = load i32, i32* %11, align 4
  %410 = call i32 @str_read(i32* %406, i32 %407, i8* %408, i32 %409)
  store i32 %410, i32* %9, align 4
  %411 = load i32, i32* %9, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %398
  br label %454

414:                                              ; preds = %398
  %415 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %416 = load i32, i32* %415, align 4
  %417 = call i8* @le32_to_cpu(i32 %416)
  %418 = ptrtoint i8* %417 to i32
  store i32 %418, i32* %20, align 4
  %419 = load i32, i32* %20, align 4
  %420 = load i32, i32* @U8_MAX, align 4
  %421 = icmp sgt i32 %419, %420
  br i1 %421, label %425, label %422

422:                                              ; preds = %414
  %423 = load i32, i32* %20, align 4
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %428

425:                                              ; preds = %422, %414
  %426 = load i32, i32* @EINVAL, align 4
  %427 = sub nsw i32 0, %426
  store i32 %427, i32* %9, align 4
  br label %454

428:                                              ; preds = %422
  %429 = load i32, i32* %20, align 4
  %430 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %431 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %432, i32 0, i32 0
  store i32 %429, i32* %433, align 8
  %434 = load %struct.ocontext*, %struct.ocontext** %15, align 8
  %435 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %434, i32 0, i32 0
  %436 = load i32*, i32** %435, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 0
  %438 = load %struct.policydb*, %struct.policydb** %4, align 8
  %439 = load i8*, i8** %6, align 8
  %440 = call i32 @context_read_and_validate(i32* %437, %struct.policydb* %438, i8* %439)
  store i32 %440, i32* %9, align 4
  %441 = load i32, i32* %9, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %444

443:                                              ; preds = %428
  br label %454

444:                                              ; preds = %428
  br label %445

445:                                              ; preds = %66, %444, %390, %328, %268, %210, %179, %139, %94
  br label %446

446:                                              ; preds = %445
  %447 = load i32, i32* %8, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %8, align 4
  br label %39

449:                                              ; preds = %39
  br label %450

450:                                              ; preds = %449
  %451 = load i32, i32* %7, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %7, align 4
  br label %21

453:                                              ; preds = %21
  store i32 0, i32* %9, align 4
  br label %454

454:                                              ; preds = %453, %443, %425, %413, %397, %389, %366, %349, %335, %327, %275, %267, %256, %241, %233, %217, %209, %186, %178, %146, %138, %127, %116, %101, %93, %75, %50, %33
  %455 = load i32, i32* %9, align 4
  ret i32 %455
}

declare dso_local i32 @next_entry(i32*, i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local %struct.ocontext* @kzalloc(i32, i32) #1

declare dso_local i32 @context_read_and_validate(i32*, %struct.policydb*, i8*) #1

declare dso_local i32 @str_read(i32*, i32, i8*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
