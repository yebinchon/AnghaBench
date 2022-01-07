; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_convert_context.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_convert_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i8*, i32, i64, i64, i64 }
%struct.convert_context_args = type { %struct.TYPE_15__*, i32, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { %struct.ocontext**, i64, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.ocontext = type { i64*, %struct.TYPE_14__*, %struct.ocontext* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.role_datum = type { i64 }
%struct.type_datum = type { i64 }
%struct.user_datum = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SECSID_NULL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"SELinux:   Unable to map context %s, rc = %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"SELinux:  Context %s became valid (mapped).\0A\00", align 1
@SYM_USERS = common dso_local global i32 0, align 4
@SYM_ROLES = common dso_local global i32 0, align 4
@SYM_TYPES = common dso_local global i32 0, align 4
@OCON_ISID = common dso_local global i64 0, align 8
@SECINITSID_UNLABELED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"SELinux:  unable to look up the initial SIDs list\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"SELinux:  Context %s became invalid (unmapped).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.context*, %struct.context*, i8*)* @convert_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_context(%struct.context* %0, %struct.context* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.convert_context_args*, align 8
  %9 = alloca %struct.ocontext*, align 8
  %10 = alloca %struct.role_datum*, align 8
  %11 = alloca %struct.type_datum*, align 8
  %12 = alloca %struct.user_datum*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %5, align 8
  store %struct.context* %1, %struct.context** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.convert_context_args*
  store %struct.convert_context_args* %17, %struct.convert_context_args** %8, align 8
  %18 = load %struct.context*, %struct.context** %5, align 8
  %19 = getelementptr inbounds %struct.context, %struct.context* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %82

22:                                               ; preds = %3
  %23 = load %struct.context*, %struct.context** %5, align 8
  %24 = getelementptr inbounds %struct.context, %struct.context* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kstrdup(i8* %25, i32 %26)
  store i8* %27, i8** %13, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %297

33:                                               ; preds = %22
  %34 = load %struct.convert_context_args*, %struct.convert_context_args** %8, align 8
  %35 = getelementptr inbounds %struct.convert_context_args, %struct.convert_context_args* %34, i32 0, i32 2
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load %struct.context*, %struct.context** %6, align 8
  %39 = load i32, i32* @SECSID_NULL, align 4
  %40 = call i32 @string_to_context_struct(%struct.TYPE_16__* %36, i32* null, i8* %37, %struct.context* %38, i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %33
  %46 = load i8*, i8** %13, align 8
  %47 = load %struct.context*, %struct.context** %5, align 8
  %48 = getelementptr inbounds %struct.context, %struct.context* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.context*, %struct.context** %5, align 8
  %51 = getelementptr inbounds %struct.context, %struct.context* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @memcpy(i8* %46, i8* %49, i32 %52)
  %54 = load %struct.context*, %struct.context** %6, align 8
  %55 = call i32 @context_init(%struct.context* %54)
  %56 = load i8*, i8** %13, align 8
  %57 = load %struct.context*, %struct.context** %6, align 8
  %58 = getelementptr inbounds %struct.context, %struct.context* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.context*, %struct.context** %5, align 8
  %60 = getelementptr inbounds %struct.context, %struct.context* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.context*, %struct.context** %6, align 8
  %63 = getelementptr inbounds %struct.context, %struct.context* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  store i32 0, i32* %4, align 4
  br label %297

64:                                               ; preds = %33
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @kfree(i8* %65)
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.context*, %struct.context** %5, align 8
  %71 = getelementptr inbounds %struct.context, %struct.context* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sub nsw i32 0, %73
  %75 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %72, i32 %74)
  %76 = load i32, i32* %15, align 4
  store i32 %76, i32* %4, align 4
  br label %297

77:                                               ; preds = %64
  %78 = load %struct.context*, %struct.context** %5, align 8
  %79 = getelementptr inbounds %struct.context, %struct.context* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  store i32 0, i32* %4, align 4
  br label %297

82:                                               ; preds = %3
  %83 = load %struct.context*, %struct.context** %6, align 8
  %84 = call i32 @context_init(%struct.context* %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %15, align 4
  %87 = load %struct.convert_context_args*, %struct.convert_context_args** %8, align 8
  %88 = getelementptr inbounds %struct.convert_context_args, %struct.convert_context_args* %87, i32 0, i32 2
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.convert_context_args*, %struct.convert_context_args** %8, align 8
  %94 = getelementptr inbounds %struct.convert_context_args, %struct.convert_context_args* %93, i32 0, i32 0
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = load i32, i32* @SYM_USERS, align 4
  %97 = load %struct.context*, %struct.context** %5, align 8
  %98 = getelementptr inbounds %struct.context, %struct.context* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %99, 1
  %101 = call i32 @sym_name(%struct.TYPE_15__* %95, i32 %96, i64 %100)
  %102 = call i8* @hashtab_search(i32 %92, i32 %101)
  %103 = bitcast i8* %102 to %struct.user_datum*
  store %struct.user_datum* %103, %struct.user_datum** %12, align 8
  %104 = load %struct.user_datum*, %struct.user_datum** %12, align 8
  %105 = icmp ne %struct.user_datum* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %82
  br label %274

107:                                              ; preds = %82
  %108 = load %struct.user_datum*, %struct.user_datum** %12, align 8
  %109 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.context*, %struct.context** %6, align 8
  %112 = getelementptr inbounds %struct.context, %struct.context* %111, i32 0, i32 4
  store i64 %110, i64* %112, align 8
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %15, align 4
  %115 = load %struct.convert_context_args*, %struct.convert_context_args** %8, align 8
  %116 = getelementptr inbounds %struct.convert_context_args, %struct.convert_context_args* %115, i32 0, i32 2
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.convert_context_args*, %struct.convert_context_args** %8, align 8
  %122 = getelementptr inbounds %struct.convert_context_args, %struct.convert_context_args* %121, i32 0, i32 0
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = load i32, i32* @SYM_ROLES, align 4
  %125 = load %struct.context*, %struct.context** %5, align 8
  %126 = getelementptr inbounds %struct.context, %struct.context* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %127, 1
  %129 = call i32 @sym_name(%struct.TYPE_15__* %123, i32 %124, i64 %128)
  %130 = call i8* @hashtab_search(i32 %120, i32 %129)
  %131 = bitcast i8* %130 to %struct.role_datum*
  store %struct.role_datum* %131, %struct.role_datum** %10, align 8
  %132 = load %struct.role_datum*, %struct.role_datum** %10, align 8
  %133 = icmp ne %struct.role_datum* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %107
  br label %274

135:                                              ; preds = %107
  %136 = load %struct.role_datum*, %struct.role_datum** %10, align 8
  %137 = getelementptr inbounds %struct.role_datum, %struct.role_datum* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.context*, %struct.context** %6, align 8
  %140 = getelementptr inbounds %struct.context, %struct.context* %139, i32 0, i32 3
  store i64 %138, i64* %140, align 8
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %15, align 4
  %143 = load %struct.convert_context_args*, %struct.convert_context_args** %8, align 8
  %144 = getelementptr inbounds %struct.convert_context_args, %struct.convert_context_args* %143, i32 0, i32 2
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.convert_context_args*, %struct.convert_context_args** %8, align 8
  %150 = getelementptr inbounds %struct.convert_context_args, %struct.convert_context_args* %149, i32 0, i32 0
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %150, align 8
  %152 = load i32, i32* @SYM_TYPES, align 4
  %153 = load %struct.context*, %struct.context** %5, align 8
  %154 = getelementptr inbounds %struct.context, %struct.context* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %155, 1
  %157 = call i32 @sym_name(%struct.TYPE_15__* %151, i32 %152, i64 %156)
  %158 = call i8* @hashtab_search(i32 %148, i32 %157)
  %159 = bitcast i8* %158 to %struct.type_datum*
  store %struct.type_datum* %159, %struct.type_datum** %11, align 8
  %160 = load %struct.type_datum*, %struct.type_datum** %11, align 8
  %161 = icmp ne %struct.type_datum* %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %135
  br label %274

163:                                              ; preds = %135
  %164 = load %struct.type_datum*, %struct.type_datum** %11, align 8
  %165 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.context*, %struct.context** %6, align 8
  %168 = getelementptr inbounds %struct.context, %struct.context* %167, i32 0, i32 2
  store i64 %166, i64* %168, align 8
  %169 = load %struct.convert_context_args*, %struct.convert_context_args** %8, align 8
  %170 = getelementptr inbounds %struct.convert_context_args, %struct.convert_context_args* %169, i32 0, i32 0
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %196

175:                                              ; preds = %163
  %176 = load %struct.convert_context_args*, %struct.convert_context_args** %8, align 8
  %177 = getelementptr inbounds %struct.convert_context_args, %struct.convert_context_args* %176, i32 0, i32 2
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %175
  %183 = load %struct.convert_context_args*, %struct.convert_context_args** %8, align 8
  %184 = getelementptr inbounds %struct.convert_context_args, %struct.convert_context_args* %183, i32 0, i32 0
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %184, align 8
  %186 = load %struct.convert_context_args*, %struct.convert_context_args** %8, align 8
  %187 = getelementptr inbounds %struct.convert_context_args, %struct.convert_context_args* %186, i32 0, i32 2
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %187, align 8
  %189 = load %struct.context*, %struct.context** %5, align 8
  %190 = load %struct.context*, %struct.context** %6, align 8
  %191 = call i32 @mls_convert_context(%struct.TYPE_15__* %185, %struct.TYPE_16__* %188, %struct.context* %189, %struct.context* %190)
  store i32 %191, i32* %15, align 4
  %192 = load i32, i32* %15, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %182
  br label %274

195:                                              ; preds = %182
  br label %256

196:                                              ; preds = %175, %163
  %197 = load %struct.convert_context_args*, %struct.convert_context_args** %8, align 8
  %198 = getelementptr inbounds %struct.convert_context_args, %struct.convert_context_args* %197, i32 0, i32 0
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %255, label %203

203:                                              ; preds = %196
  %204 = load %struct.convert_context_args*, %struct.convert_context_args** %8, align 8
  %205 = getelementptr inbounds %struct.convert_context_args, %struct.convert_context_args* %204, i32 0, i32 2
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %255

210:                                              ; preds = %203
  %211 = load %struct.convert_context_args*, %struct.convert_context_args** %8, align 8
  %212 = getelementptr inbounds %struct.convert_context_args, %struct.convert_context_args* %211, i32 0, i32 2
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load %struct.ocontext**, %struct.ocontext*** %214, align 8
  %216 = load i64, i64* @OCON_ISID, align 8
  %217 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %215, i64 %216
  %218 = load %struct.ocontext*, %struct.ocontext** %217, align 8
  store %struct.ocontext* %218, %struct.ocontext** %9, align 8
  br label %219

219:                                              ; preds = %232, %210
  %220 = load %struct.ocontext*, %struct.ocontext** %9, align 8
  %221 = icmp ne %struct.ocontext* %220, null
  br i1 %221, label %222, label %230

222:                                              ; preds = %219
  %223 = load %struct.ocontext*, %struct.ocontext** %9, align 8
  %224 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %223, i32 0, i32 0
  %225 = load i64*, i64** %224, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @SECINITSID_UNLABELED, align 8
  %229 = icmp ne i64 %227, %228
  br label %230

230:                                              ; preds = %222, %219
  %231 = phi i1 [ false, %219 ], [ %229, %222 ]
  br i1 %231, label %232, label %236

232:                                              ; preds = %230
  %233 = load %struct.ocontext*, %struct.ocontext** %9, align 8
  %234 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %233, i32 0, i32 2
  %235 = load %struct.ocontext*, %struct.ocontext** %234, align 8
  store %struct.ocontext* %235, %struct.ocontext** %9, align 8
  br label %219

236:                                              ; preds = %230
  %237 = load i32, i32* @EINVAL, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %15, align 4
  %239 = load %struct.ocontext*, %struct.ocontext** %9, align 8
  %240 = icmp ne %struct.ocontext* %239, null
  br i1 %240, label %243, label %241

241:                                              ; preds = %236
  %242 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %274

243:                                              ; preds = %236
  %244 = load %struct.context*, %struct.context** %6, align 8
  %245 = load %struct.ocontext*, %struct.ocontext** %9, align 8
  %246 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %245, i32 0, i32 1
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i64 0
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 0
  %250 = call i32 @mls_range_set(%struct.context* %244, i32* %249)
  store i32 %250, i32* %15, align 4
  %251 = load i32, i32* %15, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %243
  br label %274

254:                                              ; preds = %243
  br label %255

255:                                              ; preds = %254, %203, %196
  br label %256

256:                                              ; preds = %255, %195
  %257 = load %struct.convert_context_args*, %struct.convert_context_args** %8, align 8
  %258 = getelementptr inbounds %struct.convert_context_args, %struct.convert_context_args* %257, i32 0, i32 2
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %258, align 8
  %260 = load %struct.context*, %struct.context** %6, align 8
  %261 = call i32 @policydb_context_isvalid(%struct.TYPE_16__* %259, %struct.context* %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %273, label %263

263:                                              ; preds = %256
  %264 = load %struct.convert_context_args*, %struct.convert_context_args** %8, align 8
  %265 = getelementptr inbounds %struct.convert_context_args, %struct.convert_context_args* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.context*, %struct.context** %5, align 8
  %268 = call i32 @convert_context_handle_invalid_context(i32 %266, %struct.context* %267)
  store i32 %268, i32* %15, align 4
  %269 = load i32, i32* %15, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %263
  br label %274

272:                                              ; preds = %263
  br label %273

273:                                              ; preds = %272, %256
  store i32 0, i32* %4, align 4
  br label %297

274:                                              ; preds = %271, %253, %241, %194, %162, %134, %106
  %275 = load %struct.convert_context_args*, %struct.convert_context_args** %8, align 8
  %276 = getelementptr inbounds %struct.convert_context_args, %struct.convert_context_args* %275, i32 0, i32 0
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %276, align 8
  %278 = load %struct.context*, %struct.context** %5, align 8
  %279 = call i32 @context_struct_to_string(%struct.TYPE_15__* %277, %struct.context* %278, i8** %13, i32* %14)
  store i32 %279, i32* %15, align 4
  %280 = load i32, i32* %15, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %274
  %283 = load i32, i32* %15, align 4
  store i32 %283, i32* %4, align 4
  br label %297

284:                                              ; preds = %274
  %285 = load %struct.context*, %struct.context** %6, align 8
  %286 = call i32 @context_destroy(%struct.context* %285)
  %287 = load i8*, i8** %13, align 8
  %288 = load %struct.context*, %struct.context** %6, align 8
  %289 = getelementptr inbounds %struct.context, %struct.context* %288, i32 0, i32 0
  store i8* %287, i8** %289, align 8
  %290 = load i32, i32* %14, align 4
  %291 = load %struct.context*, %struct.context** %6, align 8
  %292 = getelementptr inbounds %struct.context, %struct.context* %291, i32 0, i32 1
  store i32 %290, i32* %292, align 8
  %293 = load %struct.context*, %struct.context** %6, align 8
  %294 = getelementptr inbounds %struct.context, %struct.context* %293, i32 0, i32 0
  %295 = load i8*, i8** %294, align 8
  %296 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %295)
  store i32 0, i32* %4, align 4
  br label %297

297:                                              ; preds = %284, %282, %273, %77, %69, %45, %30
  %298 = load i32, i32* %4, align 4
  ret i32 %298
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @string_to_context_struct(%struct.TYPE_16__*, i32*, i8*, %struct.context*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @context_init(%struct.context*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i8* @hashtab_search(i32, i32) #1

declare dso_local i32 @sym_name(%struct.TYPE_15__*, i32, i64) #1

declare dso_local i32 @mls_convert_context(%struct.TYPE_15__*, %struct.TYPE_16__*, %struct.context*, %struct.context*) #1

declare dso_local i32 @mls_range_set(%struct.context*, i32*) #1

declare dso_local i32 @policydb_context_isvalid(%struct.TYPE_16__*, %struct.context*) #1

declare dso_local i32 @convert_context_handle_invalid_context(i32, %struct.context*) #1

declare dso_local i32 @context_struct_to_string(%struct.TYPE_15__*, %struct.context*, i8**, i32*) #1

declare dso_local i32 @context_destroy(%struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
